; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.WhereLoopBuilder = type { ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
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
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.WhereInfo = type { ptr, ptr, ptr, ptr, ptr, i16, [2 x i32], i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i64, i16, %struct.WhereClause, %struct.WhereMaskSet, [1 x %struct.WhereLevel] }
%struct.WhereClause = type { ptr, ptr, i8, i8, i32, i32, ptr, [8 x %struct.WhereTerm] }
%struct.WhereTerm = type { ptr, ptr, i16, i16, i16, i8, i8, i32, i32, i32, %union.anon.2, i64, i64 }
%union.anon.2 = type { ptr }
%struct.WhereMaskSet = type { i32, i32, [64 x i32] }
%struct.WhereLevel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, %union.anon.16, ptr, i64 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i32, ptr }
%struct.WhereLoop = type { i64, i64, i8, i8, i16, i16, i16, %union.anon.18, i32, i16, i16, i16, ptr, ptr, [3 x ptr] }
%union.anon.18 = type { %struct.anon.19 }
%struct.anon.19 = type { i16, i16, i16, i16, ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.742 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.743 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OpenTable(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeExplain(ptr noundef, i8 noundef zeroext, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3WhereBegin(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pWhere, ptr noundef %pOrderBy, ptr noundef %pResultSet, i16 noundef zeroext %wctrlFlags, i32 noundef %iAuxArg) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %pResultSet.addr = alloca ptr, align 8
  %wctrlFlags.addr = alloca i16, align 2
  %iAuxArg.addr = alloca i32, align 4
  %nByteWInfo = alloca i32, align 4
  %nTabList = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %v = alloca ptr, align 8
  %notReady = alloca i64, align 8
  %sWLB = alloca %struct.WhereLoopBuilder, align 8
  %pMaskSet = alloca ptr, align 8
  %pLevel = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %ii = alloca i32, align 4
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %bFordelete = alloca i8, align 1
  %pT = alloca ptr, align 8
  %i = alloca i32, align 4
  %tabUsed = alloca i64, align 8
  %pTerm = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pItem = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %wsFlags323 = alloca i32, align 4
  %bOnerow = alloca i32, align 4
  %pTab381 = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pTabItem = alloca ptr, align 8
  %pVTab = alloca ptr, align 8
  %iCur = alloca i32, align 4
  %op = alloca i32, align 4
  %b = alloca i64, align 8
  %n443 = alloca i32, align 4
  %pIx = alloca ptr, align 8
  %iIndexCur = alloca i32, align 4
  %op462 = alloca i32, align 4
  %pJ = alloca ptr, align 8
  %addrExplain = alloca i32, align 4
  %wsFlags553 = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pResultSet, ptr %pResultSet.addr, align 8
  store i16 %wctrlFlags, ptr %wctrlFlags.addr, align 2
  store i32 %iAuxArg, ptr %iAuxArg.addr, align 4
  %0 = load ptr, ptr %pParse.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pVdbe, align 8
  store ptr %1, ptr %v, align 8
  store i8 0, ptr %bFordelete, align 1
  %2 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sWLB, i8 0, i64 48, i1 false)
  %4 = load ptr, ptr %pOrderBy.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %5, i32 0, i32 0
  %6 = load i32, ptr %nExpr, align 8
  %cmp = icmp sge i32 %6, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store ptr null, ptr %pOrderBy.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %pOrderBy.addr, align 8
  %pOrderBy2 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 2
  store ptr %7, ptr %pOrderBy2, align 8
  %8 = load ptr, ptr %db, align 8
  %dbOptFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 15
  %9 = load i16, ptr %dbOptFlags, align 4
  %conv = zext i16 %9 to i32
  %and = and i32 %conv, 16
  %cmp3 = icmp ne i32 %and, 0
  br i1 %cmp3, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  %10 = load i16, ptr %wctrlFlags.addr, align 2
  %conv6 = zext i16 %10 to i32
  %and7 = and i32 %conv6, -257
  %conv8 = trunc i32 %and7 to i16
  store i16 %conv8, ptr %wctrlFlags.addr, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end
  %11 = load ptr, ptr %pTabList.addr, align 8
  %nSrc = getelementptr inbounds nuw %struct.SrcList, ptr %11, i32 0, i32 0
  %12 = load i32, ptr %nSrc, align 8
  %cmp10 = icmp sgt i32 %12, 64
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end9
  %13 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %13, ptr noundef @.str.742, i32 noundef 64)
  store ptr null, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %if.end9
  %14 = load i16, ptr %wctrlFlags.addr, align 2
  %conv14 = zext i16 %14 to i32
  %and15 = and i32 %conv14, 32
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end13
  br label %cond.end

cond.false:                                       ; preds = %if.end13
  %15 = load ptr, ptr %pTabList.addr, align 8
  %nSrc17 = getelementptr inbounds nuw %struct.SrcList, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %nSrc17, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 1, %cond.true ], [ %16, %cond.false ]
  store i32 %cond, ptr %nTabList, align 4
  %17 = load i32, ptr %nTabList, align 4
  %sub = sub nsw i32 %17, 1
  %conv18 = sext i32 %sub to i64
  %mul = mul i64 %conv18, 96
  %add = add i64 1016, %mul
  %add19 = add i64 %add, 7
  %and20 = and i64 %add19, -8
  %conv21 = trunc i64 %and20 to i32
  store i32 %conv21, ptr %nByteWInfo, align 4
  %18 = load ptr, ptr %db, align 8
  %19 = load i32, ptr %nByteWInfo, align 4
  %conv22 = sext i32 %19 to i64
  %add23 = add i64 %conv22, 96
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %18, i64 noundef %add23)
  store ptr %call, ptr %pWInfo, align 8
  %20 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 19
  %21 = load i8, ptr %mallocFailed, align 1
  %tobool24 = icmp ne i8 %21, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %cond.end
  %22 = load ptr, ptr %db, align 8
  %23 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3DbFree(ptr noundef %22, ptr noundef %23)
  store ptr null, ptr %pWInfo, align 8
  br label %whereBeginError

if.end26:                                         ; preds = %cond.end
  %24 = load ptr, ptr %pParse.addr, align 8
  %25 = load ptr, ptr %pWInfo, align 8
  %pParse27 = getelementptr inbounds nuw %struct.WhereInfo, ptr %25, i32 0, i32 0
  store ptr %24, ptr %pParse27, align 8
  %26 = load ptr, ptr %pTabList.addr, align 8
  %27 = load ptr, ptr %pWInfo, align 8
  %pTabList28 = getelementptr inbounds nuw %struct.WhereInfo, ptr %27, i32 0, i32 1
  store ptr %26, ptr %pTabList28, align 8
  %28 = load ptr, ptr %pOrderBy.addr, align 8
  %29 = load ptr, ptr %pWInfo, align 8
  %pOrderBy29 = getelementptr inbounds nuw %struct.WhereInfo, ptr %29, i32 0, i32 2
  store ptr %28, ptr %pOrderBy29, align 8
  %30 = load ptr, ptr %pWhere.addr, align 8
  %31 = load ptr, ptr %pWInfo, align 8
  %pWhere30 = getelementptr inbounds nuw %struct.WhereInfo, ptr %31, i32 0, i32 4
  store ptr %30, ptr %pWhere30, align 8
  %32 = load ptr, ptr %pResultSet.addr, align 8
  %33 = load ptr, ptr %pWInfo, align 8
  %pResultSet31 = getelementptr inbounds nuw %struct.WhereInfo, ptr %33, i32 0, i32 3
  store ptr %32, ptr %pResultSet31, align 8
  %34 = load ptr, ptr %pWInfo, align 8
  %aiCurOnePass = getelementptr inbounds nuw %struct.WhereInfo, ptr %34, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  store i32 -1, ptr %arrayidx, align 4
  %35 = load ptr, ptr %pWInfo, align 8
  %aiCurOnePass32 = getelementptr inbounds nuw %struct.WhereInfo, ptr %35, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass32, i64 0, i64 0
  store i32 -1, ptr %arrayidx33, align 4
  %36 = load i32, ptr %nTabList, align 4
  %conv34 = trunc i32 %36 to i8
  %37 = load ptr, ptr %pWInfo, align 8
  %nLevel = getelementptr inbounds nuw %struct.WhereInfo, ptr %37, i32 0, i32 11
  store i8 %conv34, ptr %nLevel, align 2
  %38 = load ptr, ptr %pParse.addr, align 8
  %call35 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %38)
  %39 = load ptr, ptr %pWInfo, align 8
  %iContinue = getelementptr inbounds nuw %struct.WhereInfo, ptr %39, i32 0, i32 7
  store i32 %call35, ptr %iContinue, align 4
  %40 = load ptr, ptr %pWInfo, align 8
  %iBreak = getelementptr inbounds nuw %struct.WhereInfo, ptr %40, i32 0, i32 8
  store i32 %call35, ptr %iBreak, align 8
  %41 = load i16, ptr %wctrlFlags.addr, align 2
  %42 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags36 = getelementptr inbounds nuw %struct.WhereInfo, ptr %42, i32 0, i32 10
  store i16 %41, ptr %wctrlFlags36, align 8
  %43 = load i32, ptr %iAuxArg.addr, align 4
  %conv37 = trunc i32 %43 to i16
  %44 = load ptr, ptr %pWInfo, align 8
  %iLimit = getelementptr inbounds nuw %struct.WhereInfo, ptr %44, i32 0, i32 5
  store i16 %conv37, ptr %iLimit, align 8
  %45 = load ptr, ptr %pParse.addr, align 8
  %nQueryLoop = getelementptr inbounds nuw %struct.Parse, ptr %45, i32 0, i32 39
  %46 = load i32, ptr %nQueryLoop, align 4
  %47 = load ptr, ptr %pWInfo, align 8
  %savedNQueryLoop = getelementptr inbounds nuw %struct.WhereInfo, ptr %47, i32 0, i32 9
  store i32 %46, ptr %savedNQueryLoop, align 4
  %48 = load ptr, ptr %pWInfo, align 8
  %nOBSat = getelementptr inbounds nuw %struct.WhereInfo, ptr %48, i32 0, i32 12
  call void @llvm.memset.p0.i64(ptr align 1 %nOBSat, i8 0, i64 37, i1 false)
  %49 = load ptr, ptr %pWInfo, align 8
  %a = getelementptr inbounds nuw %struct.WhereInfo, ptr %49, i32 0, i32 24
  %arrayidx38 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a, i64 0, i64 0
  %50 = load i32, ptr %nTabList, align 4
  %conv39 = sext i32 %50 to i64
  %mul40 = mul i64 %conv39, 96
  %add41 = add i64 96, %mul40
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx38, i8 0, i64 %add41, i1 false)
  %51 = load ptr, ptr %pWInfo, align 8
  %sMaskSet = getelementptr inbounds nuw %struct.WhereInfo, ptr %51, i32 0, i32 23
  store ptr %sMaskSet, ptr %pMaskSet, align 8
  %52 = load ptr, ptr %pWInfo, align 8
  %pWInfo42 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 0
  store ptr %52, ptr %pWInfo42, align 8
  %53 = load ptr, ptr %pWInfo, align 8
  %sWC = getelementptr inbounds nuw %struct.WhereInfo, ptr %53, i32 0, i32 22
  %pWC = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  store ptr %sWC, ptr %pWC, align 8
  %54 = load ptr, ptr %pWInfo, align 8
  %55 = load i32, ptr %nByteWInfo, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 %idx.ext
  %pNew = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 3
  store ptr %add.ptr, ptr %pNew, align 8
  %pNew43 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 3
  %56 = load ptr, ptr %pNew43, align 8
  call void @whereLoopInit(ptr noundef %56)
  %57 = load ptr, ptr %pMaskSet, align 8
  %n = getelementptr inbounds nuw %struct.WhereMaskSet, ptr %57, i32 0, i32 1
  store i32 0, ptr %n, align 4
  %58 = load ptr, ptr %pWInfo, align 8
  %sWC44 = getelementptr inbounds nuw %struct.WhereInfo, ptr %58, i32 0, i32 22
  %59 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereClauseInit(ptr noundef %sWC44, ptr noundef %59)
  %60 = load ptr, ptr %pWInfo, align 8
  %sWC45 = getelementptr inbounds nuw %struct.WhereInfo, ptr %60, i32 0, i32 22
  %61 = load ptr, ptr %pWhere.addr, align 8
  call void @sqlite3WhereSplit(ptr noundef %sWC45, ptr noundef %61, i8 noundef zeroext 44)
  %62 = load i32, ptr %nTabList, align 4
  %cmp46 = icmp eq i32 %62, 0
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.end26
  %63 = load ptr, ptr %pOrderBy.addr, align 8
  %tobool49 = icmp ne ptr %63, null
  br i1 %tobool49, label %if.then50, label %if.end54

if.then50:                                        ; preds = %if.then48
  %64 = load ptr, ptr %pOrderBy.addr, align 8
  %nExpr51 = getelementptr inbounds nuw %struct.ExprList, ptr %64, i32 0, i32 0
  %65 = load i32, ptr %nExpr51, align 8
  %conv52 = trunc i32 %65 to i8
  %66 = load ptr, ptr %pWInfo, align 8
  %nOBSat53 = getelementptr inbounds nuw %struct.WhereInfo, ptr %66, i32 0, i32 12
  store i8 %conv52, ptr %nOBSat53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.then50, %if.then48
  %67 = load i16, ptr %wctrlFlags.addr, align 2
  %conv55 = zext i16 %67 to i32
  %and56 = and i32 %conv55, 256
  %tobool57 = icmp ne i32 %and56, 0
  br i1 %tobool57, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.end54
  %68 = load ptr, ptr %pWInfo, align 8
  %eDistinct = getelementptr inbounds nuw %struct.WhereInfo, ptr %68, i32 0, i32 16
  store i8 1, ptr %eDistinct, align 1
  br label %if.end59

if.end59:                                         ; preds = %if.then58, %if.end54
  %69 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, i8, ptr, ...) @sqlite3VdbeExplain(ptr noundef %69, i8 noundef zeroext 0, ptr noundef @.str.743)
  br label %if.end69

if.else:                                          ; preds = %if.end26
  store i32 0, ptr %ii, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %70 = load ptr, ptr %pMaskSet, align 8
  %71 = load ptr, ptr %pTabList.addr, align 8
  %a60 = getelementptr inbounds nuw %struct.SrcList, ptr %71, i32 0, i32 2
  %72 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %72 to i64
  %arrayidx61 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a60, i64 0, i64 %idxprom
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx61, i32 0, i32 10
  %73 = load i32, ptr %iCursor, align 8
  call void @createMask(ptr noundef %70, i32 noundef %73)
  %74 = load ptr, ptr %pParse.addr, align 8
  %75 = load ptr, ptr %pTabList.addr, align 8
  %a62 = getelementptr inbounds nuw %struct.SrcList, ptr %75, i32 0, i32 2
  %76 = load i32, ptr %ii, align 4
  %idxprom63 = sext i32 %76 to i64
  %arrayidx64 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a62, i64 0, i64 %idxprom63
  %77 = load ptr, ptr %pWInfo, align 8
  %sWC65 = getelementptr inbounds nuw %struct.WhereInfo, ptr %77, i32 0, i32 22
  call void @sqlite3WhereTabFuncArgs(ptr noundef %74, ptr noundef %arrayidx64, ptr noundef %sWC65)
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %78 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %ii, align 4
  %79 = load ptr, ptr %pTabList.addr, align 8
  %nSrc66 = getelementptr inbounds nuw %struct.SrcList, ptr %79, i32 0, i32 0
  %80 = load i32, ptr %nSrc66, align 8
  %cmp67 = icmp slt i32 %inc, %80
  br i1 %cmp67, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end69

if.end69:                                         ; preds = %do.end, %if.end59
  %81 = load ptr, ptr %pTabList.addr, align 8
  %82 = load ptr, ptr %pWInfo, align 8
  %sWC70 = getelementptr inbounds nuw %struct.WhereInfo, ptr %82, i32 0, i32 22
  call void @sqlite3WhereExprAnalyze(ptr noundef %81, ptr noundef %sWC70)
  %83 = load ptr, ptr %db, align 8
  %mallocFailed71 = getelementptr inbounds nuw %struct.sqlite3, ptr %83, i32 0, i32 19
  %84 = load i8, ptr %mallocFailed71, align 1
  %tobool72 = icmp ne i8 %84, 0
  br i1 %tobool72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end69
  br label %whereBeginError

if.end74:                                         ; preds = %if.end69
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end74
  %85 = load i32, ptr %ii, align 4
  %pWC75 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  %86 = load ptr, ptr %pWC75, align 8
  %nTerm = getelementptr inbounds nuw %struct.WhereClause, ptr %86, i32 0, i32 4
  %87 = load i32, ptr %nTerm, align 4
  %cmp76 = icmp slt i32 %85, %87
  br i1 %cmp76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %pWC78 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  %88 = load ptr, ptr %pWC78, align 8
  %a79 = getelementptr inbounds nuw %struct.WhereClause, ptr %88, i32 0, i32 6
  %89 = load ptr, ptr %a79, align 8
  %90 = load i32, ptr %ii, align 4
  %idxprom80 = sext i32 %90 to i64
  %arrayidx81 = getelementptr inbounds %struct.WhereTerm, ptr %89, i64 %idxprom80
  store ptr %arrayidx81, ptr %pT, align 8
  %91 = load ptr, ptr %pT, align 8
  %wtFlags = getelementptr inbounds nuw %struct.WhereTerm, ptr %91, i32 0, i32 3
  %92 = load i16, ptr %wtFlags, align 2
  %conv82 = zext i16 %92 to i32
  %and83 = and i32 %conv82, 2
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %if.then85, label %if.end86

if.then85:                                        ; preds = %for.body
  br label %for.inc

if.end86:                                         ; preds = %for.body
  %93 = load ptr, ptr %pT, align 8
  %prereqAll = getelementptr inbounds nuw %struct.WhereTerm, ptr %93, i32 0, i32 12
  %94 = load i64, ptr %prereqAll, align 8
  %cmp87 = icmp eq i64 %94, 0
  br i1 %cmp87, label %land.lhs.true89, label %if.end100

land.lhs.true89:                                  ; preds = %if.end86
  %95 = load i32, ptr %nTabList, align 4
  %cmp90 = icmp eq i32 %95, 0
  br i1 %cmp90, label %if.then94, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true89
  %96 = load ptr, ptr %pT, align 8
  %pExpr = getelementptr inbounds nuw %struct.WhereTerm, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %pExpr, align 8
  %call92 = call i32 @exprIsDeterministic(ptr noundef %97)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.then94, label %if.end100

if.then94:                                        ; preds = %lor.lhs.false, %land.lhs.true89
  %98 = load ptr, ptr %pParse.addr, align 8
  %99 = load ptr, ptr %pT, align 8
  %pExpr95 = getelementptr inbounds nuw %struct.WhereTerm, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %pExpr95, align 8
  %101 = load ptr, ptr %pWInfo, align 8
  %iBreak96 = getelementptr inbounds nuw %struct.WhereInfo, ptr %101, i32 0, i32 8
  %102 = load i32, ptr %iBreak96, align 8
  call void @sqlite3ExprIfFalse(ptr noundef %98, ptr noundef %100, i32 noundef %102, i32 noundef 16)
  %103 = load ptr, ptr %pT, align 8
  %wtFlags97 = getelementptr inbounds nuw %struct.WhereTerm, ptr %103, i32 0, i32 3
  %104 = load i16, ptr %wtFlags97, align 2
  %conv98 = zext i16 %104 to i32
  %or = or i32 %conv98, 4
  %conv99 = trunc i32 %or to i16
  store i16 %conv99, ptr %wtFlags97, align 2
  br label %if.end100

if.end100:                                        ; preds = %if.then94, %lor.lhs.false, %if.end86
  br label %for.inc

for.inc:                                          ; preds = %if.end100, %if.then85
  %105 = load i32, ptr %ii, align 4
  %inc101 = add nsw i32 %105, 1
  store i32 %inc101, ptr %ii, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %106 = load i16, ptr %wctrlFlags.addr, align 2
  %conv102 = zext i16 %106 to i32
  %and103 = and i32 %conv102, 256
  %tobool104 = icmp ne i32 %and103, 0
  br i1 %tobool104, label %if.then105, label %if.end122

if.then105:                                       ; preds = %for.end
  %107 = load ptr, ptr %pParse.addr, align 8
  %108 = load ptr, ptr %pTabList.addr, align 8
  %109 = load ptr, ptr %pWInfo, align 8
  %sWC106 = getelementptr inbounds nuw %struct.WhereInfo, ptr %109, i32 0, i32 22
  %110 = load ptr, ptr %pResultSet.addr, align 8
  %call107 = call i32 @isDistinctRedundant(ptr noundef %107, ptr noundef %108, ptr noundef %sWC106, ptr noundef %110)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.then105
  %111 = load ptr, ptr %pWInfo, align 8
  %eDistinct110 = getelementptr inbounds nuw %struct.WhereInfo, ptr %111, i32 0, i32 16
  store i8 1, ptr %eDistinct110, align 1
  br label %if.end121

if.else111:                                       ; preds = %if.then105
  %112 = load ptr, ptr %pOrderBy.addr, align 8
  %cmp112 = icmp eq ptr %112, null
  br i1 %cmp112, label %if.then114, label %if.end120

if.then114:                                       ; preds = %if.else111
  %113 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags115 = getelementptr inbounds nuw %struct.WhereInfo, ptr %113, i32 0, i32 10
  %114 = load i16, ptr %wctrlFlags115, align 8
  %conv116 = zext i16 %114 to i32
  %or117 = or i32 %conv116, 128
  %conv118 = trunc i32 %or117 to i16
  store i16 %conv118, ptr %wctrlFlags115, align 8
  %115 = load ptr, ptr %pResultSet.addr, align 8
  %116 = load ptr, ptr %pWInfo, align 8
  %pOrderBy119 = getelementptr inbounds nuw %struct.WhereInfo, ptr %116, i32 0, i32 2
  store ptr %115, ptr %pOrderBy119, align 8
  br label %if.end120

if.end120:                                        ; preds = %if.then114, %if.else111
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %if.then109
  br label %if.end122

if.end122:                                        ; preds = %if.end121, %for.end
  %117 = load i32, ptr %nTabList, align 4
  %cmp123 = icmp ne i32 %117, 1
  br i1 %cmp123, label %if.then129, label %lor.lhs.false125

lor.lhs.false125:                                 ; preds = %if.end122
  %call126 = call i32 @whereShortCut(ptr noundef %sWLB)
  %cmp127 = icmp eq i32 %call126, 0
  br i1 %cmp127, label %if.then129, label %if.end151

if.then129:                                       ; preds = %lor.lhs.false125, %if.end122
  %call130 = call i32 @whereLoopAddAll(ptr noundef %sWLB)
  store i32 %call130, ptr %rc, align 4
  %118 = load i32, ptr %rc, align 4
  %tobool131 = icmp ne i32 %118, 0
  br i1 %tobool131, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.then129
  br label %whereBeginError

if.end133:                                        ; preds = %if.then129
  %119 = load ptr, ptr %pWInfo, align 8
  %call134 = call i32 @wherePathSolver(ptr noundef %119, i16 noundef signext 0)
  %120 = load ptr, ptr %db, align 8
  %mallocFailed135 = getelementptr inbounds nuw %struct.sqlite3, ptr %120, i32 0, i32 19
  %121 = load i8, ptr %mallocFailed135, align 1
  %tobool136 = icmp ne i8 %121, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end133
  br label %whereBeginError

if.end138:                                        ; preds = %if.end133
  %122 = load ptr, ptr %pWInfo, align 8
  %pOrderBy139 = getelementptr inbounds nuw %struct.WhereInfo, ptr %122, i32 0, i32 2
  %123 = load ptr, ptr %pOrderBy139, align 8
  %tobool140 = icmp ne ptr %123, null
  br i1 %tobool140, label %if.then141, label %if.end150

if.then141:                                       ; preds = %if.end138
  %124 = load ptr, ptr %pWInfo, align 8
  %125 = load ptr, ptr %pWInfo, align 8
  %nRowOut = getelementptr inbounds nuw %struct.WhereInfo, ptr %125, i32 0, i32 21
  %126 = load i16, ptr %nRowOut, align 8
  %conv142 = sext i16 %126 to i32
  %add143 = add nsw i32 %conv142, 1
  %conv144 = trunc i32 %add143 to i16
  %call145 = call i32 @wherePathSolver(ptr noundef %124, i16 noundef signext %conv144)
  %127 = load ptr, ptr %db, align 8
  %mallocFailed146 = getelementptr inbounds nuw %struct.sqlite3, ptr %127, i32 0, i32 19
  %128 = load i8, ptr %mallocFailed146, align 1
  %tobool147 = icmp ne i8 %128, 0
  br i1 %tobool147, label %if.then148, label %if.end149

if.then148:                                       ; preds = %if.then141
  br label %whereBeginError

if.end149:                                        ; preds = %if.then141
  br label %if.end150

if.end150:                                        ; preds = %if.end149, %if.end138
  br label %if.end151

if.end151:                                        ; preds = %if.end150, %lor.lhs.false125
  %129 = load ptr, ptr %pWInfo, align 8
  %pOrderBy152 = getelementptr inbounds nuw %struct.WhereInfo, ptr %129, i32 0, i32 2
  %130 = load ptr, ptr %pOrderBy152, align 8
  %cmp153 = icmp eq ptr %130, null
  br i1 %cmp153, label %land.lhs.true155, label %if.end160

land.lhs.true155:                                 ; preds = %if.end151
  %131 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %131, i32 0, i32 7
  %132 = load i64, ptr %flags, align 8
  %and156 = and i64 %132, 4096
  %cmp157 = icmp ne i64 %and156, 0
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %land.lhs.true155
  %133 = load ptr, ptr %pWInfo, align 8
  %revMask = getelementptr inbounds nuw %struct.WhereInfo, ptr %133, i32 0, i32 20
  store i64 -1, ptr %revMask, align 8
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %land.lhs.true155, %if.end151
  %134 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %134, i32 0, i32 16
  %135 = load i32, ptr %nErr, align 8
  %tobool161 = icmp ne i32 %135, 0
  br i1 %tobool161, label %if.then166, label %lor.lhs.false162

lor.lhs.false162:                                 ; preds = %if.end160
  %136 = load ptr, ptr %db, align 8
  %mallocFailed163 = getelementptr inbounds nuw %struct.sqlite3, ptr %136, i32 0, i32 19
  %137 = load i8, ptr %mallocFailed163, align 1
  %conv164 = zext i8 %137 to i32
  %tobool165 = icmp ne i32 %conv164, 0
  br i1 %tobool165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %lor.lhs.false162, %if.end160
  br label %whereBeginError

if.end167:                                        ; preds = %lor.lhs.false162
  store i64 -1, ptr %notReady, align 8
  %138 = load ptr, ptr %pWInfo, align 8
  %nLevel168 = getelementptr inbounds nuw %struct.WhereInfo, ptr %138, i32 0, i32 11
  %139 = load i8, ptr %nLevel168, align 2
  %conv169 = zext i8 %139 to i32
  %cmp170 = icmp sge i32 %conv169, 2
  br i1 %cmp170, label %land.lhs.true172, label %if.end312

land.lhs.true172:                                 ; preds = %if.end167
  %140 = load ptr, ptr %pResultSet.addr, align 8
  %cmp173 = icmp ne ptr %140, null
  br i1 %cmp173, label %land.lhs.true175, label %if.end312

land.lhs.true175:                                 ; preds = %land.lhs.true172
  %141 = load ptr, ptr %db, align 8
  %dbOptFlags176 = getelementptr inbounds nuw %struct.sqlite3, ptr %141, i32 0, i32 15
  %142 = load i16, ptr %dbOptFlags176, align 4
  %conv177 = zext i16 %142 to i32
  %and178 = and i32 %conv177, 256
  %cmp179 = icmp eq i32 %and178, 0
  br i1 %cmp179, label %if.then181, label %if.end312

if.then181:                                       ; preds = %land.lhs.true175
  %143 = load ptr, ptr %pMaskSet, align 8
  %144 = load ptr, ptr %pResultSet.addr, align 8
  %call182 = call i64 @sqlite3WhereExprListUsage(ptr noundef %143, ptr noundef %144)
  store i64 %call182, ptr %tabUsed, align 8
  %pOrderBy183 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 2
  %145 = load ptr, ptr %pOrderBy183, align 8
  %tobool184 = icmp ne ptr %145, null
  br i1 %tobool184, label %if.then185, label %if.end189

if.then185:                                       ; preds = %if.then181
  %146 = load ptr, ptr %pMaskSet, align 8
  %pOrderBy186 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 2
  %147 = load ptr, ptr %pOrderBy186, align 8
  %call187 = call i64 @sqlite3WhereExprListUsage(ptr noundef %146, ptr noundef %147)
  %148 = load i64, ptr %tabUsed, align 8
  %or188 = or i64 %148, %call187
  store i64 %or188, ptr %tabUsed, align 8
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.then181
  %149 = load ptr, ptr %pWInfo, align 8
  %nLevel190 = getelementptr inbounds nuw %struct.WhereInfo, ptr %149, i32 0, i32 11
  %150 = load i8, ptr %nLevel190, align 2
  %conv191 = zext i8 %150 to i32
  %sub192 = sub nsw i32 %conv191, 1
  store i32 %sub192, ptr %i, align 4
  br label %for.cond193

for.cond193:                                      ; preds = %for.inc309, %if.end189
  %151 = load i32, ptr %i, align 4
  %cmp194 = icmp sge i32 %151, 1
  br i1 %cmp194, label %for.body196, label %for.end311

for.body196:                                      ; preds = %for.cond193
  %152 = load ptr, ptr %pWInfo, align 8
  %a197 = getelementptr inbounds nuw %struct.WhereInfo, ptr %152, i32 0, i32 24
  %153 = load i32, ptr %i, align 4
  %idxprom198 = sext i32 %153 to i64
  %arrayidx199 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a197, i64 0, i64 %idxprom198
  %pWLoop = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx199, i32 0, i32 20
  %154 = load ptr, ptr %pWLoop, align 8
  store ptr %154, ptr %pLoop, align 8
  %155 = load ptr, ptr %pWInfo, align 8
  %pTabList200 = getelementptr inbounds nuw %struct.WhereInfo, ptr %155, i32 0, i32 1
  %156 = load ptr, ptr %pTabList200, align 8
  %a201 = getelementptr inbounds nuw %struct.SrcList, ptr %156, i32 0, i32 2
  %157 = load ptr, ptr %pLoop, align 8
  %iTab = getelementptr inbounds nuw %struct.WhereLoop, ptr %157, i32 0, i32 2
  %158 = load i8, ptr %iTab, align 8
  %idxprom202 = zext i8 %158 to i64
  %arrayidx203 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a201, i64 0, i64 %idxprom202
  store ptr %arrayidx203, ptr %pItem, align 8
  %159 = load ptr, ptr %pItem, align 8
  %fg = getelementptr inbounds nuw %struct.SrcList_item, ptr %159, i32 0, i32 9
  %jointype = getelementptr inbounds nuw %struct.anon, ptr %fg, i32 0, i32 0
  %160 = load i8, ptr %jointype, align 4
  %conv204 = zext i8 %160 to i32
  %and205 = and i32 %conv204, 8
  %cmp206 = icmp eq i32 %and205, 0
  br i1 %cmp206, label %if.then208, label %if.end209

if.then208:                                       ; preds = %for.body196
  br label %for.inc309

if.end209:                                        ; preds = %for.body196
  %161 = load i16, ptr %wctrlFlags.addr, align 2
  %conv210 = zext i16 %161 to i32
  %and211 = and i32 %conv210, 256
  %cmp212 = icmp eq i32 %and211, 0
  br i1 %cmp212, label %land.lhs.true214, label %if.end219

land.lhs.true214:                                 ; preds = %if.end209
  %162 = load ptr, ptr %pLoop, align 8
  %wsFlags = getelementptr inbounds nuw %struct.WhereLoop, ptr %162, i32 0, i32 8
  %163 = load i32, ptr %wsFlags, align 8
  %and215 = and i32 %163, 4096
  %cmp216 = icmp eq i32 %and215, 0
  br i1 %cmp216, label %if.then218, label %if.end219

if.then218:                                       ; preds = %land.lhs.true214
  br label %for.inc309

if.end219:                                        ; preds = %land.lhs.true214, %if.end209
  %164 = load i64, ptr %tabUsed, align 8
  %165 = load ptr, ptr %pLoop, align 8
  %maskSelf = getelementptr inbounds nuw %struct.WhereLoop, ptr %165, i32 0, i32 1
  %166 = load i64, ptr %maskSelf, align 8
  %and220 = and i64 %164, %166
  %cmp221 = icmp ne i64 %and220, 0
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.end219
  br label %for.inc309

if.end224:                                        ; preds = %if.end219
  %pWC225 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  %167 = load ptr, ptr %pWC225, align 8
  %a226 = getelementptr inbounds nuw %struct.WhereClause, ptr %167, i32 0, i32 6
  %168 = load ptr, ptr %a226, align 8
  %pWC227 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  %169 = load ptr, ptr %pWC227, align 8
  %nTerm228 = getelementptr inbounds nuw %struct.WhereClause, ptr %169, i32 0, i32 4
  %170 = load i32, ptr %nTerm228, align 4
  %idx.ext229 = sext i32 %170 to i64
  %add.ptr230 = getelementptr inbounds %struct.WhereTerm, ptr %168, i64 %idx.ext229
  store ptr %add.ptr230, ptr %pEnd, align 8
  %pWC231 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  %171 = load ptr, ptr %pWC231, align 8
  %a232 = getelementptr inbounds nuw %struct.WhereClause, ptr %171, i32 0, i32 6
  %172 = load ptr, ptr %a232, align 8
  store ptr %172, ptr %pTerm, align 8
  br label %for.cond233

for.cond233:                                      ; preds = %for.inc257, %if.end224
  %173 = load ptr, ptr %pTerm, align 8
  %174 = load ptr, ptr %pEnd, align 8
  %cmp234 = icmp ult ptr %173, %174
  br i1 %cmp234, label %for.body236, label %for.end258

for.body236:                                      ; preds = %for.cond233
  %175 = load ptr, ptr %pTerm, align 8
  %prereqAll237 = getelementptr inbounds nuw %struct.WhereTerm, ptr %175, i32 0, i32 12
  %176 = load i64, ptr %prereqAll237, align 8
  %177 = load ptr, ptr %pLoop, align 8
  %maskSelf238 = getelementptr inbounds nuw %struct.WhereLoop, ptr %177, i32 0, i32 1
  %178 = load i64, ptr %maskSelf238, align 8
  %and239 = and i64 %176, %178
  %cmp240 = icmp ne i64 %and239, 0
  br i1 %cmp240, label %if.then242, label %if.end256

if.then242:                                       ; preds = %for.body236
  %179 = load ptr, ptr %pTerm, align 8
  %pExpr243 = getelementptr inbounds nuw %struct.WhereTerm, ptr %179, i32 0, i32 0
  %180 = load ptr, ptr %pExpr243, align 8
  %flags244 = getelementptr inbounds nuw %struct.Expr, ptr %180, i32 0, i32 2
  %181 = load i32, ptr %flags244, align 4
  %and245 = and i32 %181, 1
  %cmp246 = icmp ne i32 %and245, 0
  br i1 %cmp246, label %lor.lhs.false248, label %if.then254

lor.lhs.false248:                                 ; preds = %if.then242
  %182 = load ptr, ptr %pTerm, align 8
  %pExpr249 = getelementptr inbounds nuw %struct.WhereTerm, ptr %182, i32 0, i32 0
  %183 = load ptr, ptr %pExpr249, align 8
  %iRightJoinTable = getelementptr inbounds nuw %struct.Expr, ptr %183, i32 0, i32 11
  %184 = load i16, ptr %iRightJoinTable, align 4
  %conv250 = sext i16 %184 to i32
  %185 = load ptr, ptr %pItem, align 8
  %iCursor251 = getelementptr inbounds nuw %struct.SrcList_item, ptr %185, i32 0, i32 10
  %186 = load i32, ptr %iCursor251, align 8
  %cmp252 = icmp ne i32 %conv250, %186
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %lor.lhs.false248, %if.then242
  br label %for.end258

if.end255:                                        ; preds = %lor.lhs.false248
  br label %if.end256

if.end256:                                        ; preds = %if.end255, %for.body236
  br label %for.inc257

for.inc257:                                       ; preds = %if.end256
  %187 = load ptr, ptr %pTerm, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.WhereTerm, ptr %187, i32 1
  store ptr %incdec.ptr, ptr %pTerm, align 8
  br label %for.cond233, !llvm.loop !9

for.end258:                                       ; preds = %if.then254, %for.cond233
  %188 = load ptr, ptr %pTerm, align 8
  %189 = load ptr, ptr %pEnd, align 8
  %cmp259 = icmp ult ptr %188, %189
  br i1 %cmp259, label %if.then261, label %if.end262

if.then261:                                       ; preds = %for.end258
  br label %for.inc309

if.end262:                                        ; preds = %for.end258
  %190 = load ptr, ptr %pLoop, align 8
  %maskSelf263 = getelementptr inbounds nuw %struct.WhereLoop, ptr %190, i32 0, i32 1
  %191 = load i64, ptr %maskSelf263, align 8
  %not = xor i64 %191, -1
  %192 = load i64, ptr %notReady, align 8
  %and264 = and i64 %192, %not
  store i64 %and264, ptr %notReady, align 8
  %pWC265 = getelementptr inbounds nuw %struct.WhereLoopBuilder, ptr %sWLB, i32 0, i32 1
  %193 = load ptr, ptr %pWC265, align 8
  %a266 = getelementptr inbounds nuw %struct.WhereClause, ptr %193, i32 0, i32 6
  %194 = load ptr, ptr %a266, align 8
  store ptr %194, ptr %pTerm, align 8
  br label %for.cond267

for.cond267:                                      ; preds = %for.inc282, %if.end262
  %195 = load ptr, ptr %pTerm, align 8
  %196 = load ptr, ptr %pEnd, align 8
  %cmp268 = icmp ult ptr %195, %196
  br i1 %cmp268, label %for.body270, label %for.end284

for.body270:                                      ; preds = %for.cond267
  %197 = load ptr, ptr %pTerm, align 8
  %prereqAll271 = getelementptr inbounds nuw %struct.WhereTerm, ptr %197, i32 0, i32 12
  %198 = load i64, ptr %prereqAll271, align 8
  %199 = load ptr, ptr %pLoop, align 8
  %maskSelf272 = getelementptr inbounds nuw %struct.WhereLoop, ptr %199, i32 0, i32 1
  %200 = load i64, ptr %maskSelf272, align 8
  %and273 = and i64 %198, %200
  %cmp274 = icmp ne i64 %and273, 0
  br i1 %cmp274, label %if.then276, label %if.end281

if.then276:                                       ; preds = %for.body270
  %201 = load ptr, ptr %pTerm, align 8
  %wtFlags277 = getelementptr inbounds nuw %struct.WhereTerm, ptr %201, i32 0, i32 3
  %202 = load i16, ptr %wtFlags277, align 2
  %conv278 = zext i16 %202 to i32
  %or279 = or i32 %conv278, 4
  %conv280 = trunc i32 %or279 to i16
  store i16 %conv280, ptr %wtFlags277, align 2
  br label %if.end281

if.end281:                                        ; preds = %if.then276, %for.body270
  br label %for.inc282

for.inc282:                                       ; preds = %if.end281
  %203 = load ptr, ptr %pTerm, align 8
  %incdec.ptr283 = getelementptr inbounds nuw %struct.WhereTerm, ptr %203, i32 1
  store ptr %incdec.ptr283, ptr %pTerm, align 8
  br label %for.cond267, !llvm.loop !10

for.end284:                                       ; preds = %for.cond267
  %204 = load i32, ptr %i, align 4
  %205 = load ptr, ptr %pWInfo, align 8
  %nLevel285 = getelementptr inbounds nuw %struct.WhereInfo, ptr %205, i32 0, i32 11
  %206 = load i8, ptr %nLevel285, align 2
  %conv286 = zext i8 %206 to i32
  %sub287 = sub nsw i32 %conv286, 1
  %cmp288 = icmp ne i32 %204, %sub287
  br i1 %cmp288, label %if.then290, label %if.end306

if.then290:                                       ; preds = %for.end284
  %207 = load ptr, ptr %pWInfo, align 8
  %nLevel291 = getelementptr inbounds nuw %struct.WhereInfo, ptr %207, i32 0, i32 11
  %208 = load i8, ptr %nLevel291, align 2
  %conv292 = zext i8 %208 to i32
  %sub293 = sub nsw i32 %conv292, 1
  %209 = load i32, ptr %i, align 4
  %sub294 = sub nsw i32 %sub293, %209
  %conv295 = sext i32 %sub294 to i64
  %mul296 = mul i64 %conv295, 96
  %conv297 = trunc i64 %mul296 to i32
  store i32 %conv297, ptr %nByte, align 4
  %210 = load ptr, ptr %pWInfo, align 8
  %a298 = getelementptr inbounds nuw %struct.WhereInfo, ptr %210, i32 0, i32 24
  %211 = load i32, ptr %i, align 4
  %idxprom299 = sext i32 %211 to i64
  %arrayidx300 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a298, i64 0, i64 %idxprom299
  %212 = load ptr, ptr %pWInfo, align 8
  %a301 = getelementptr inbounds nuw %struct.WhereInfo, ptr %212, i32 0, i32 24
  %213 = load i32, ptr %i, align 4
  %add302 = add nsw i32 %213, 1
  %idxprom303 = sext i32 %add302 to i64
  %arrayidx304 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a301, i64 0, i64 %idxprom303
  %214 = load i32, ptr %nByte, align 4
  %conv305 = sext i32 %214 to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %arrayidx300, ptr align 8 %arrayidx304, i64 %conv305, i1 false)
  br label %if.end306

if.end306:                                        ; preds = %if.then290, %for.end284
  %215 = load ptr, ptr %pWInfo, align 8
  %nLevel307 = getelementptr inbounds nuw %struct.WhereInfo, ptr %215, i32 0, i32 11
  %216 = load i8, ptr %nLevel307, align 2
  %dec = add i8 %216, -1
  store i8 %dec, ptr %nLevel307, align 2
  %217 = load i32, ptr %nTabList, align 4
  %dec308 = add nsw i32 %217, -1
  store i32 %dec308, ptr %nTabList, align 4
  br label %for.inc309

for.inc309:                                       ; preds = %if.end306, %if.then261, %if.then223, %if.then218, %if.then208
  %218 = load i32, ptr %i, align 4
  %dec310 = add nsw i32 %218, -1
  store i32 %dec310, ptr %i, align 4
  br label %for.cond193, !llvm.loop !11

for.end311:                                       ; preds = %for.cond193
  br label %if.end312

if.end312:                                        ; preds = %for.end311, %land.lhs.true175, %land.lhs.true172, %if.end167
  %219 = load ptr, ptr %pWInfo, align 8
  %nRowOut313 = getelementptr inbounds nuw %struct.WhereInfo, ptr %219, i32 0, i32 21
  %220 = load i16, ptr %nRowOut313, align 8
  %conv314 = sext i16 %220 to i32
  %221 = load ptr, ptr %pWInfo, align 8
  %pParse315 = getelementptr inbounds nuw %struct.WhereInfo, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %pParse315, align 8
  %nQueryLoop316 = getelementptr inbounds nuw %struct.Parse, ptr %222, i32 0, i32 39
  %223 = load i32, ptr %nQueryLoop316, align 4
  %add317 = add i32 %223, %conv314
  store i32 %add317, ptr %nQueryLoop316, align 4
  %224 = load i16, ptr %wctrlFlags.addr, align 2
  %conv318 = zext i16 %224 to i32
  %and319 = and i32 %conv318, 4
  %cmp320 = icmp ne i32 %and319, 0
  br i1 %cmp320, label %if.then322, label %if.end375

if.then322:                                       ; preds = %if.end312
  %225 = load ptr, ptr %pWInfo, align 8
  %a324 = getelementptr inbounds nuw %struct.WhereInfo, ptr %225, i32 0, i32 24
  %arrayidx325 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a324, i64 0, i64 0
  %pWLoop326 = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx325, i32 0, i32 20
  %226 = load ptr, ptr %pWLoop326, align 8
  %wsFlags327 = getelementptr inbounds nuw %struct.WhereLoop, ptr %226, i32 0, i32 8
  %227 = load i32, ptr %wsFlags327, align 8
  store i32 %227, ptr %wsFlags323, align 4
  %228 = load i32, ptr %wsFlags323, align 4
  %and328 = and i32 %228, 4096
  %cmp329 = icmp ne i32 %and328, 0
  %conv330 = zext i1 %cmp329 to i32
  store i32 %conv330, ptr %bOnerow, align 4
  %229 = load i32, ptr %bOnerow, align 4
  %tobool331 = icmp ne i32 %229, 0
  br i1 %tobool331, label %if.then349, label %lor.lhs.false332

lor.lhs.false332:                                 ; preds = %if.then322
  %230 = load i16, ptr %wctrlFlags.addr, align 2
  %conv333 = zext i16 %230 to i32
  %and334 = and i32 %conv333, 8
  %cmp335 = icmp ne i32 0, %and334
  br i1 %cmp335, label %land.lhs.true337, label %if.end374

land.lhs.true337:                                 ; preds = %lor.lhs.false332
  %231 = load ptr, ptr %pTabList.addr, align 8
  %a338 = getelementptr inbounds nuw %struct.SrcList, ptr %231, i32 0, i32 2
  %arrayidx339 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a338, i64 0, i64 0
  %pTab = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx339, i32 0, i32 4
  %232 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %232, i32 0, i32 16
  %233 = load i32, ptr %nModuleArg, align 4
  %tobool340 = icmp ne i32 %233, 0
  br i1 %tobool340, label %if.end374, label %land.lhs.true341

land.lhs.true341:                                 ; preds = %land.lhs.true337
  %234 = load i32, ptr %wsFlags323, align 4
  %and342 = and i32 %234, 8192
  %cmp343 = icmp eq i32 0, %and342
  br i1 %cmp343, label %if.then349, label %lor.lhs.false345

lor.lhs.false345:                                 ; preds = %land.lhs.true341
  %235 = load i16, ptr %wctrlFlags.addr, align 2
  %conv346 = zext i16 %235 to i32
  %and347 = and i32 %conv346, 16
  %tobool348 = icmp ne i32 %and347, 0
  br i1 %tobool348, label %if.then349, label %if.end374

if.then349:                                       ; preds = %lor.lhs.false345, %land.lhs.true341, %if.then322
  %236 = load i32, ptr %bOnerow, align 4
  %tobool350 = icmp ne i32 %236, 0
  %237 = zext i1 %tobool350 to i64
  %cond351 = select i1 %tobool350, i32 1, i32 2
  %conv352 = trunc i32 %cond351 to i8
  %238 = load ptr, ptr %pWInfo, align 8
  %eOnePass = getelementptr inbounds nuw %struct.WhereInfo, ptr %238, i32 0, i32 14
  store i8 %conv352, ptr %eOnePass, align 1
  %239 = load ptr, ptr %pTabList.addr, align 8
  %a353 = getelementptr inbounds nuw %struct.SrcList, ptr %239, i32 0, i32 2
  %arrayidx354 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a353, i64 0, i64 0
  %pTab355 = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx354, i32 0, i32 4
  %240 = load ptr, ptr %pTab355, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %240, i32 0, i32 9
  %241 = load i32, ptr %tabFlags, align 8
  %and356 = and i32 %241, 32
  %cmp357 = icmp eq i32 %and356, 0
  br i1 %cmp357, label %land.lhs.true359, label %if.end373

land.lhs.true359:                                 ; preds = %if.then349
  %242 = load i32, ptr %wsFlags323, align 4
  %and360 = and i32 %242, 64
  %tobool361 = icmp ne i32 %and360, 0
  br i1 %tobool361, label %if.then362, label %if.end373

if.then362:                                       ; preds = %land.lhs.true359
  %243 = load i16, ptr %wctrlFlags.addr, align 2
  %conv363 = zext i16 %243 to i32
  %and364 = and i32 %conv363, 8
  %tobool365 = icmp ne i32 %and364, 0
  br i1 %tobool365, label %if.then366, label %if.end367

if.then366:                                       ; preds = %if.then362
  store i8 8, ptr %bFordelete, align 1
  br label %if.end367

if.end367:                                        ; preds = %if.then366, %if.then362
  %244 = load i32, ptr %wsFlags323, align 4
  %and368 = and i32 %244, -65
  %245 = load ptr, ptr %pWInfo, align 8
  %a369 = getelementptr inbounds nuw %struct.WhereInfo, ptr %245, i32 0, i32 24
  %arrayidx370 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a369, i64 0, i64 0
  %pWLoop371 = getelementptr inbounds nuw %struct.WhereLevel, ptr %arrayidx370, i32 0, i32 20
  %246 = load ptr, ptr %pWLoop371, align 8
  %wsFlags372 = getelementptr inbounds nuw %struct.WhereLoop, ptr %246, i32 0, i32 8
  store i32 %and368, ptr %wsFlags372, align 8
  br label %if.end373

if.end373:                                        ; preds = %if.end367, %land.lhs.true359, %if.then349
  br label %if.end374

if.end374:                                        ; preds = %if.end373, %lor.lhs.false345, %land.lhs.true337, %lor.lhs.false332
  br label %if.end375

if.end375:                                        ; preds = %if.end374, %if.end312
  store i32 0, ptr %ii, align 4
  %247 = load ptr, ptr %pWInfo, align 8
  %a376 = getelementptr inbounds nuw %struct.WhereInfo, ptr %247, i32 0, i32 24
  %arraydecay = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a376, i64 0, i64 0
  store ptr %arraydecay, ptr %pLevel, align 8
  br label %for.cond377

for.cond377:                                      ; preds = %for.inc540, %if.end375
  %248 = load i32, ptr %ii, align 4
  %249 = load i32, ptr %nTabList, align 4
  %cmp378 = icmp slt i32 %248, %249
  br i1 %cmp378, label %for.body380, label %for.end543

for.body380:                                      ; preds = %for.cond377
  %250 = load ptr, ptr %pTabList.addr, align 8
  %a382 = getelementptr inbounds nuw %struct.SrcList, ptr %250, i32 0, i32 2
  %251 = load ptr, ptr %pLevel, align 8
  %iFrom = getelementptr inbounds nuw %struct.WhereLevel, ptr %251, i32 0, i32 13
  %252 = load i8, ptr %iFrom, align 4
  %idxprom383 = zext i8 %252 to i64
  %arrayidx384 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a382, i64 0, i64 %idxprom383
  store ptr %arrayidx384, ptr %pTabItem, align 8
  %253 = load ptr, ptr %pTabItem, align 8
  %pTab385 = getelementptr inbounds nuw %struct.SrcList_item, ptr %253, i32 0, i32 4
  %254 = load ptr, ptr %pTab385, align 8
  store ptr %254, ptr %pTab381, align 8
  %255 = load ptr, ptr %db, align 8
  %256 = load ptr, ptr %pTab381, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %256, i32 0, i32 20
  %257 = load ptr, ptr %pSchema, align 8
  %call386 = call i32 @sqlite3SchemaToIndex(ptr noundef %255, ptr noundef %257)
  store i32 %call386, ptr %iDb, align 4
  %258 = load ptr, ptr %pLevel, align 8
  %pWLoop387 = getelementptr inbounds nuw %struct.WhereLevel, ptr %258, i32 0, i32 20
  %259 = load ptr, ptr %pWLoop387, align 8
  store ptr %259, ptr %pLoop, align 8
  %260 = load ptr, ptr %pTab381, align 8
  %tabFlags388 = getelementptr inbounds nuw %struct.Table, ptr %260, i32 0, i32 9
  %261 = load i32, ptr %tabFlags388, align 8
  %and389 = and i32 %261, 2
  %cmp390 = icmp ne i32 %and389, 0
  br i1 %cmp390, label %if.then394, label %lor.lhs.false392

lor.lhs.false392:                                 ; preds = %for.body380
  %262 = load ptr, ptr %pTab381, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %262, i32 0, i32 3
  %263 = load ptr, ptr %pSelect, align 8
  %tobool393 = icmp ne ptr %263, null
  br i1 %tobool393, label %if.then394, label %if.else395

if.then394:                                       ; preds = %lor.lhs.false392, %for.body380
  br label %if.end457

if.else395:                                       ; preds = %lor.lhs.false392
  %264 = load ptr, ptr %pLoop, align 8
  %wsFlags396 = getelementptr inbounds nuw %struct.WhereLoop, ptr %264, i32 0, i32 8
  %265 = load i32, ptr %wsFlags396, align 8
  %and397 = and i32 %265, 1024
  %cmp398 = icmp ne i32 %and397, 0
  br i1 %cmp398, label %if.then400, label %if.else404

if.then400:                                       ; preds = %if.else395
  %266 = load ptr, ptr %db, align 8
  %267 = load ptr, ptr %pTab381, align 8
  %call401 = call ptr @sqlite3GetVTable(ptr noundef %266, ptr noundef %267)
  store ptr %call401, ptr %pVTab, align 8
  %268 = load ptr, ptr %pTabItem, align 8
  %iCursor402 = getelementptr inbounds nuw %struct.SrcList_item, ptr %268, i32 0, i32 10
  %269 = load i32, ptr %iCursor402, align 8
  store i32 %269, ptr %iCur, align 4
  %270 = load ptr, ptr %v, align 8
  %271 = load i32, ptr %iCur, align 4
  %272 = load ptr, ptr %pVTab, align 8
  %call403 = call i32 @sqlite3VdbeAddOp4(ptr noundef %270, i32 noundef 163, i32 noundef %271, i32 noundef 0, i32 noundef 0, ptr noundef %272, i32 noundef -12)
  br label %if.end456

if.else404:                                       ; preds = %if.else395
  %273 = load ptr, ptr %pTab381, align 8
  %nModuleArg405 = getelementptr inbounds nuw %struct.Table, ptr %273, i32 0, i32 16
  %274 = load i32, ptr %nModuleArg405, align 4
  %tobool406 = icmp ne i32 %274, 0
  br i1 %tobool406, label %if.then407, label %if.else408

if.then407:                                       ; preds = %if.else404
  br label %if.end455

if.else408:                                       ; preds = %if.else404
  %275 = load ptr, ptr %pLoop, align 8
  %wsFlags409 = getelementptr inbounds nuw %struct.WhereLoop, ptr %275, i32 0, i32 8
  %276 = load i32, ptr %wsFlags409, align 8
  %and410 = and i32 %276, 64
  %cmp411 = icmp eq i32 %and410, 0
  br i1 %cmp411, label %land.lhs.true413, label %if.else453

land.lhs.true413:                                 ; preds = %if.else408
  %277 = load i16, ptr %wctrlFlags.addr, align 2
  %conv414 = zext i16 %277 to i32
  %and415 = and i32 %conv414, 32
  %cmp416 = icmp eq i32 %and415, 0
  br i1 %cmp416, label %if.then418, label %if.else453

if.then418:                                       ; preds = %land.lhs.true413
  store i32 97, ptr %op, align 4
  %278 = load ptr, ptr %pWInfo, align 8
  %eOnePass419 = getelementptr inbounds nuw %struct.WhereInfo, ptr %278, i32 0, i32 14
  %279 = load i8, ptr %eOnePass419, align 1
  %conv420 = zext i8 %279 to i32
  %cmp421 = icmp ne i32 %conv420, 0
  br i1 %cmp421, label %if.then423, label %if.end427

if.then423:                                       ; preds = %if.then418
  store i32 98, ptr %op, align 4
  %280 = load ptr, ptr %pTabItem, align 8
  %iCursor424 = getelementptr inbounds nuw %struct.SrcList_item, ptr %280, i32 0, i32 10
  %281 = load i32, ptr %iCursor424, align 8
  %282 = load ptr, ptr %pWInfo, align 8
  %aiCurOnePass425 = getelementptr inbounds nuw %struct.WhereInfo, ptr %282, i32 0, i32 6
  %arrayidx426 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass425, i64 0, i64 0
  store i32 %281, ptr %arrayidx426, align 4
  br label %if.end427

if.end427:                                        ; preds = %if.then423, %if.then418
  %283 = load ptr, ptr %pParse.addr, align 8
  %284 = load ptr, ptr %pTabItem, align 8
  %iCursor428 = getelementptr inbounds nuw %struct.SrcList_item, ptr %284, i32 0, i32 10
  %285 = load i32, ptr %iCursor428, align 8
  %286 = load i32, ptr %iDb, align 4
  %287 = load ptr, ptr %pTab381, align 8
  %288 = load i32, ptr %op, align 4
  call void @sqlite3OpenTable(ptr noundef %283, i32 noundef %285, i32 noundef %286, ptr noundef %287, i32 noundef %288)
  %289 = load ptr, ptr %pWInfo, align 8
  %eOnePass429 = getelementptr inbounds nuw %struct.WhereInfo, ptr %289, i32 0, i32 14
  %290 = load i8, ptr %eOnePass429, align 1
  %conv430 = zext i8 %290 to i32
  %cmp431 = icmp eq i32 %conv430, 0
  br i1 %cmp431, label %land.lhs.true433, label %if.end451

land.lhs.true433:                                 ; preds = %if.end427
  %291 = load ptr, ptr %pTab381, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %291, i32 0, i32 11
  %292 = load i16, ptr %nCol, align 2
  %conv434 = sext i16 %292 to i32
  %cmp435 = icmp slt i32 %conv434, 64
  br i1 %cmp435, label %land.lhs.true437, label %if.end451

land.lhs.true437:                                 ; preds = %land.lhs.true433
  %293 = load ptr, ptr %pTab381, align 8
  %tabFlags438 = getelementptr inbounds nuw %struct.Table, ptr %293, i32 0, i32 9
  %294 = load i32, ptr %tabFlags438, align 8
  %and439 = and i32 %294, 32
  %cmp440 = icmp eq i32 %and439, 0
  br i1 %cmp440, label %if.then442, label %if.end451

if.then442:                                       ; preds = %land.lhs.true437
  %295 = load ptr, ptr %pTabItem, align 8
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %295, i32 0, i32 13
  %296 = load i64, ptr %colUsed, align 8
  store i64 %296, ptr %b, align 8
  store i32 0, ptr %n443, align 4
  br label %for.cond444

for.cond444:                                      ; preds = %for.inc447, %if.then442
  %297 = load i64, ptr %b, align 8
  %tobool445 = icmp ne i64 %297, 0
  br i1 %tobool445, label %for.body446, label %for.end449

for.body446:                                      ; preds = %for.cond444
  br label %for.inc447

for.inc447:                                       ; preds = %for.body446
  %298 = load i64, ptr %b, align 8
  %shr = lshr i64 %298, 1
  store i64 %shr, ptr %b, align 8
  %299 = load i32, ptr %n443, align 4
  %inc448 = add nsw i32 %299, 1
  store i32 %inc448, ptr %n443, align 4
  br label %for.cond444, !llvm.loop !12

for.end449:                                       ; preds = %for.cond444
  %300 = load ptr, ptr %v, align 8
  %301 = load i32, ptr %n443, align 4
  %conv450 = sext i32 %301 to i64
  %302 = inttoptr i64 %conv450 to ptr
  call void @sqlite3VdbeChangeP4(ptr noundef %300, i32 noundef -1, ptr noundef %302, i32 noundef -3)
  br label %if.end451

if.end451:                                        ; preds = %for.end449, %land.lhs.true437, %land.lhs.true433, %if.end427
  %303 = load ptr, ptr %v, align 8
  %304 = load i8, ptr %bFordelete, align 1
  %conv452 = zext i8 %304 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %303, i16 noundef zeroext %conv452)
  br label %if.end454

if.else453:                                       ; preds = %land.lhs.true413, %if.else408
  %305 = load ptr, ptr %pParse.addr, align 8
  %306 = load i32, ptr %iDb, align 4
  %307 = load ptr, ptr %pTab381, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %307, i32 0, i32 7
  %308 = load i32, ptr %tnum, align 8
  %309 = load ptr, ptr %pTab381, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %309, i32 0, i32 0
  %310 = load ptr, ptr %zName, align 8
  call void @sqlite3TableLock(ptr noundef %305, i32 noundef %306, i32 noundef %308, i8 noundef zeroext 0, ptr noundef %310)
  br label %if.end454

if.end454:                                        ; preds = %if.else453, %if.end451
  br label %if.end455

if.end455:                                        ; preds = %if.end454, %if.then407
  br label %if.end456

if.end456:                                        ; preds = %if.end455, %if.then400
  br label %if.end457

if.end457:                                        ; preds = %if.end456, %if.then394
  %311 = load ptr, ptr %pLoop, align 8
  %wsFlags458 = getelementptr inbounds nuw %struct.WhereLoop, ptr %311, i32 0, i32 8
  %312 = load i32, ptr %wsFlags458, align 8
  %and459 = and i32 %312, 512
  %tobool460 = icmp ne i32 %and459, 0
  br i1 %tobool460, label %if.then461, label %if.end535

if.then461:                                       ; preds = %if.end457
  %313 = load ptr, ptr %pLoop, align 8
  %u = getelementptr inbounds nuw %struct.WhereLoop, ptr %313, i32 0, i32 7
  %pIndex = getelementptr inbounds nuw %struct.anon.19, ptr %u, i32 0, i32 4
  %314 = load ptr, ptr %pIndex, align 8
  store ptr %314, ptr %pIx, align 8
  store i32 97, ptr %op462, align 4
  %315 = load ptr, ptr %pTab381, align 8
  %tabFlags463 = getelementptr inbounds nuw %struct.Table, ptr %315, i32 0, i32 9
  %316 = load i32, ptr %tabFlags463, align 8
  %and464 = and i32 %316, 32
  %cmp465 = icmp eq i32 %and464, 0
  br i1 %cmp465, label %if.else476, label %land.lhs.true467

land.lhs.true467:                                 ; preds = %if.then461
  %317 = load ptr, ptr %pIx, align 8
  %idxType = getelementptr inbounds nuw %struct.Index, ptr %317, i32 0, i32 16
  %bf.load = load i16, ptr %idxType, align 1
  %bf.clear = and i16 %bf.load, 3
  %bf.cast = zext i16 %bf.clear to i32
  %cmp468 = icmp eq i32 %bf.cast, 2
  br i1 %cmp468, label %land.lhs.true470, label %if.else476

land.lhs.true470:                                 ; preds = %land.lhs.true467
  %318 = load i16, ptr %wctrlFlags.addr, align 2
  %conv471 = zext i16 %318 to i32
  %and472 = and i32 %conv471, 32
  %cmp473 = icmp ne i32 %and472, 0
  br i1 %cmp473, label %if.then475, label %if.else476

if.then475:                                       ; preds = %land.lhs.true470
  %319 = load ptr, ptr %pLevel, align 8
  %iTabCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %319, i32 0, i32 1
  %320 = load i32, ptr %iTabCur, align 4
  store i32 %320, ptr %iIndexCur, align 4
  store i32 0, ptr %op462, align 4
  br label %if.end502

if.else476:                                       ; preds = %land.lhs.true470, %land.lhs.true467, %if.then461
  %321 = load ptr, ptr %pWInfo, align 8
  %eOnePass477 = getelementptr inbounds nuw %struct.WhereInfo, ptr %321, i32 0, i32 14
  %322 = load i8, ptr %eOnePass477, align 1
  %conv478 = zext i8 %322 to i32
  %cmp479 = icmp ne i32 %conv478, 0
  br i1 %cmp479, label %if.then481, label %if.else490

if.then481:                                       ; preds = %if.else476
  %323 = load ptr, ptr %pTabItem, align 8
  %pTab482 = getelementptr inbounds nuw %struct.SrcList_item, ptr %323, i32 0, i32 4
  %324 = load ptr, ptr %pTab482, align 8
  %pIndex483 = getelementptr inbounds nuw %struct.Table, ptr %324, i32 0, i32 2
  %325 = load ptr, ptr %pIndex483, align 8
  store ptr %325, ptr %pJ, align 8
  %326 = load i32, ptr %iAuxArg.addr, align 4
  store i32 %326, ptr %iIndexCur, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then481
  %327 = load ptr, ptr %pJ, align 8
  %tobool484 = icmp ne ptr %327, null
  br i1 %tobool484, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %328 = load ptr, ptr %pJ, align 8
  %329 = load ptr, ptr %pIx, align 8
  %cmp485 = icmp ne ptr %328, %329
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %330 = phi i1 [ false, %while.cond ], [ %cmp485, %land.rhs ]
  br i1 %330, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %331 = load i32, ptr %iIndexCur, align 4
  %inc487 = add nsw i32 %331, 1
  store i32 %inc487, ptr %iIndexCur, align 4
  %332 = load ptr, ptr %pJ, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %332, i32 0, i32 5
  %333 = load ptr, ptr %pNext, align 8
  store ptr %333, ptr %pJ, align 8
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %land.end
  store i32 98, ptr %op462, align 4
  %334 = load i32, ptr %iIndexCur, align 4
  %335 = load ptr, ptr %pWInfo, align 8
  %aiCurOnePass488 = getelementptr inbounds nuw %struct.WhereInfo, ptr %335, i32 0, i32 6
  %arrayidx489 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass488, i64 0, i64 1
  store i32 %334, ptr %arrayidx489, align 4
  br label %if.end501

if.else490:                                       ; preds = %if.else476
  %336 = load i32, ptr %iAuxArg.addr, align 4
  %tobool491 = icmp ne i32 %336, 0
  br i1 %tobool491, label %land.lhs.true492, label %if.else498

land.lhs.true492:                                 ; preds = %if.else490
  %337 = load i16, ptr %wctrlFlags.addr, align 2
  %conv493 = zext i16 %337 to i32
  %and494 = and i32 %conv493, 32
  %cmp495 = icmp ne i32 %and494, 0
  br i1 %cmp495, label %if.then497, label %if.else498

if.then497:                                       ; preds = %land.lhs.true492
  %338 = load i32, ptr %iAuxArg.addr, align 4
  store i32 %338, ptr %iIndexCur, align 4
  store i32 96, ptr %op462, align 4
  br label %if.end500

if.else498:                                       ; preds = %land.lhs.true492, %if.else490
  %339 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %339, i32 0, i32 17
  %340 = load i32, ptr %nTab, align 4
  %inc499 = add nsw i32 %340, 1
  store i32 %inc499, ptr %nTab, align 4
  store i32 %340, ptr %iIndexCur, align 4
  br label %if.end500

if.end500:                                        ; preds = %if.else498, %if.then497
  br label %if.end501

if.end501:                                        ; preds = %if.end500, %while.end
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.then475
  %341 = load i32, ptr %iIndexCur, align 4
  %342 = load ptr, ptr %pLevel, align 8
  %iIdxCur = getelementptr inbounds nuw %struct.WhereLevel, ptr %342, i32 0, i32 2
  store i32 %341, ptr %iIdxCur, align 8
  %343 = load i32, ptr %op462, align 4
  %tobool503 = icmp ne i32 %343, 0
  br i1 %tobool503, label %if.then504, label %if.end534

if.then504:                                       ; preds = %if.end502
  %344 = load ptr, ptr %v, align 8
  %345 = load i32, ptr %op462, align 4
  %346 = load i32, ptr %iIndexCur, align 4
  %347 = load ptr, ptr %pIx, align 8
  %tnum505 = getelementptr inbounds nuw %struct.Index, ptr %347, i32 0, i32 11
  %348 = load i32, ptr %tnum505, align 8
  %349 = load i32, ptr %iDb, align 4
  %call506 = call i32 @sqlite3VdbeAddOp3(ptr noundef %344, i32 noundef %345, i32 noundef %346, i32 noundef %348, i32 noundef %349)
  %350 = load ptr, ptr %pParse.addr, align 8
  %351 = load ptr, ptr %pIx, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %350, ptr noundef %351)
  %352 = load ptr, ptr %pLoop, align 8
  %wsFlags507 = getelementptr inbounds nuw %struct.WhereLoop, ptr %352, i32 0, i32 8
  %353 = load i32, ptr %wsFlags507, align 8
  %and508 = and i32 %353, 15
  %cmp509 = icmp ne i32 %and508, 0
  br i1 %cmp509, label %land.lhs.true511, label %if.end533

land.lhs.true511:                                 ; preds = %if.then504
  %354 = load ptr, ptr %pLoop, align 8
  %wsFlags512 = getelementptr inbounds nuw %struct.WhereLoop, ptr %354, i32 0, i32 8
  %355 = load i32, ptr %wsFlags512, align 8
  %and513 = and i32 %355, 32770
  %cmp514 = icmp eq i32 %and513, 0
  br i1 %cmp514, label %land.lhs.true516, label %if.end533

land.lhs.true516:                                 ; preds = %land.lhs.true511
  %356 = load ptr, ptr %pLoop, align 8
  %wsFlags517 = getelementptr inbounds nuw %struct.WhereLoop, ptr %356, i32 0, i32 8
  %357 = load i32, ptr %wsFlags517, align 8
  %and518 = and i32 %357, 524288
  %cmp519 = icmp eq i32 %and518, 0
  br i1 %cmp519, label %land.lhs.true521, label %if.end533

land.lhs.true521:                                 ; preds = %land.lhs.true516
  %358 = load ptr, ptr %pWInfo, align 8
  %wctrlFlags522 = getelementptr inbounds nuw %struct.WhereInfo, ptr %358, i32 0, i32 10
  %359 = load i16, ptr %wctrlFlags522, align 8
  %conv523 = zext i16 %359 to i32
  %and524 = and i32 %conv523, 1
  %cmp525 = icmp eq i32 %and524, 0
  br i1 %cmp525, label %land.lhs.true527, label %if.end533

land.lhs.true527:                                 ; preds = %land.lhs.true521
  %360 = load ptr, ptr %pWInfo, align 8
  %eDistinct528 = getelementptr inbounds nuw %struct.WhereInfo, ptr %360, i32 0, i32 16
  %361 = load i8, ptr %eDistinct528, align 1
  %conv529 = zext i8 %361 to i32
  %cmp530 = icmp ne i32 %conv529, 2
  br i1 %cmp530, label %if.then532, label %if.end533

if.then532:                                       ; preds = %land.lhs.true527
  %362 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %362, i16 noundef zeroext 2)
  br label %if.end533

if.end533:                                        ; preds = %if.then532, %land.lhs.true527, %land.lhs.true521, %land.lhs.true516, %land.lhs.true511, %if.then504
  br label %if.end534

if.end534:                                        ; preds = %if.end533, %if.end502
  br label %if.end535

if.end535:                                        ; preds = %if.end534, %if.end457
  %363 = load i32, ptr %iDb, align 4
  %cmp536 = icmp sge i32 %363, 0
  br i1 %cmp536, label %if.then538, label %if.end539

if.then538:                                       ; preds = %if.end535
  %364 = load ptr, ptr %pParse.addr, align 8
  %365 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %364, i32 noundef %365)
  br label %if.end539

if.end539:                                        ; preds = %if.then538, %if.end535
  br label %for.inc540

for.inc540:                                       ; preds = %if.end539
  %366 = load i32, ptr %ii, align 4
  %inc541 = add nsw i32 %366, 1
  store i32 %inc541, ptr %ii, align 4
  %367 = load ptr, ptr %pLevel, align 8
  %incdec.ptr542 = getelementptr inbounds nuw %struct.WhereLevel, ptr %367, i32 1
  store ptr %incdec.ptr542, ptr %pLevel, align 8
  br label %for.cond377, !llvm.loop !14

for.end543:                                       ; preds = %for.cond377
  %368 = load ptr, ptr %v, align 8
  %call544 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %368)
  %369 = load ptr, ptr %pWInfo, align 8
  %iTop = getelementptr inbounds nuw %struct.WhereInfo, ptr %369, i32 0, i32 18
  store i32 %call544, ptr %iTop, align 4
  %370 = load ptr, ptr %db, align 8
  %mallocFailed545 = getelementptr inbounds nuw %struct.sqlite3, ptr %370, i32 0, i32 19
  %371 = load i8, ptr %mallocFailed545, align 1
  %tobool546 = icmp ne i8 %371, 0
  br i1 %tobool546, label %if.then547, label %if.end548

if.then547:                                       ; preds = %for.end543
  br label %whereBeginError

if.end548:                                        ; preds = %for.end543
  store i32 0, ptr %ii, align 4
  br label %for.cond549

for.cond549:                                      ; preds = %for.inc589, %if.end548
  %372 = load i32, ptr %ii, align 4
  %373 = load i32, ptr %nTabList, align 4
  %cmp550 = icmp slt i32 %372, %373
  br i1 %cmp550, label %for.body552, label %for.end591

for.body552:                                      ; preds = %for.cond549
  %374 = load ptr, ptr %pWInfo, align 8
  %a554 = getelementptr inbounds nuw %struct.WhereInfo, ptr %374, i32 0, i32 24
  %375 = load i32, ptr %ii, align 4
  %idxprom555 = sext i32 %375 to i64
  %arrayidx556 = getelementptr inbounds [1 x %struct.WhereLevel], ptr %a554, i64 0, i64 %idxprom555
  store ptr %arrayidx556, ptr %pLevel, align 8
  %376 = load ptr, ptr %pLevel, align 8
  %pWLoop557 = getelementptr inbounds nuw %struct.WhereLevel, ptr %376, i32 0, i32 20
  %377 = load ptr, ptr %pWLoop557, align 8
  %wsFlags558 = getelementptr inbounds nuw %struct.WhereLoop, ptr %377, i32 0, i32 8
  %378 = load i32, ptr %wsFlags558, align 8
  store i32 %378, ptr %wsFlags553, align 4
  %379 = load ptr, ptr %pLevel, align 8
  %pWLoop559 = getelementptr inbounds nuw %struct.WhereLevel, ptr %379, i32 0, i32 20
  %380 = load ptr, ptr %pWLoop559, align 8
  %wsFlags560 = getelementptr inbounds nuw %struct.WhereLoop, ptr %380, i32 0, i32 8
  %381 = load i32, ptr %wsFlags560, align 8
  %and561 = and i32 %381, 16384
  %cmp562 = icmp ne i32 %and561, 0
  br i1 %cmp562, label %if.then564, label %if.end574

if.then564:                                       ; preds = %for.body552
  %382 = load ptr, ptr %pParse.addr, align 8
  %383 = load ptr, ptr %pWInfo, align 8
  %sWC565 = getelementptr inbounds nuw %struct.WhereInfo, ptr %383, i32 0, i32 22
  %384 = load ptr, ptr %pTabList.addr, align 8
  %a566 = getelementptr inbounds nuw %struct.SrcList, ptr %384, i32 0, i32 2
  %385 = load ptr, ptr %pLevel, align 8
  %iFrom567 = getelementptr inbounds nuw %struct.WhereLevel, ptr %385, i32 0, i32 13
  %386 = load i8, ptr %iFrom567, align 4
  %idxprom568 = zext i8 %386 to i64
  %arrayidx569 = getelementptr inbounds nuw [1 x %struct.SrcList_item], ptr %a566, i64 0, i64 %idxprom568
  %387 = load i64, ptr %notReady, align 8
  %388 = load ptr, ptr %pLevel, align 8
  call void @constructAutomaticIndex(ptr noundef %382, ptr noundef %sWC565, ptr noundef %arrayidx569, i64 noundef %387, ptr noundef %388)
  %389 = load ptr, ptr %db, align 8
  %mallocFailed570 = getelementptr inbounds nuw %struct.sqlite3, ptr %389, i32 0, i32 19
  %390 = load i8, ptr %mallocFailed570, align 1
  %tobool571 = icmp ne i8 %390, 0
  br i1 %tobool571, label %if.then572, label %if.end573

if.then572:                                       ; preds = %if.then564
  br label %whereBeginError

if.end573:                                        ; preds = %if.then564
  br label %if.end574

if.end574:                                        ; preds = %if.end573, %for.body552
  %391 = load ptr, ptr %pParse.addr, align 8
  %392 = load ptr, ptr %pTabList.addr, align 8
  %393 = load ptr, ptr %pLevel, align 8
  %394 = load i16, ptr %wctrlFlags.addr, align 2
  %call575 = call i32 @sqlite3WhereExplainOneScan(ptr noundef %391, ptr noundef %392, ptr noundef %393, i16 noundef zeroext %394)
  store i32 %call575, ptr %addrExplain, align 4
  %395 = load ptr, ptr %v, align 8
  %call576 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %395)
  %396 = load ptr, ptr %pLevel, align 8
  %addrBody = getelementptr inbounds nuw %struct.WhereLevel, ptr %396, i32 0, i32 8
  store i32 %call576, ptr %addrBody, align 8
  %397 = load ptr, ptr %pParse.addr, align 8
  %398 = load ptr, ptr %v, align 8
  %399 = load ptr, ptr %pWInfo, align 8
  %400 = load i32, ptr %ii, align 4
  %401 = load ptr, ptr %pLevel, align 8
  %402 = load i64, ptr %notReady, align 8
  %call577 = call i64 @sqlite3WhereCodeOneLoopStart(ptr noundef %397, ptr noundef %398, ptr noundef %399, i32 noundef %400, ptr noundef %401, i64 noundef %402)
  store i64 %call577, ptr %notReady, align 8
  %403 = load ptr, ptr %pLevel, align 8
  %addrCont = getelementptr inbounds nuw %struct.WhereLevel, ptr %403, i32 0, i32 6
  %404 = load i32, ptr %addrCont, align 8
  %405 = load ptr, ptr %pWInfo, align 8
  %iContinue578 = getelementptr inbounds nuw %struct.WhereInfo, ptr %405, i32 0, i32 7
  store i32 %404, ptr %iContinue578, align 4
  %406 = load i32, ptr %wsFlags553, align 4
  %and579 = and i32 %406, 8192
  %cmp580 = icmp eq i32 %and579, 0
  br i1 %cmp580, label %land.lhs.true582, label %if.end588

land.lhs.true582:                                 ; preds = %if.end574
  %407 = load i16, ptr %wctrlFlags.addr, align 2
  %conv583 = zext i16 %407 to i32
  %and584 = and i32 %conv583, 32
  %cmp585 = icmp eq i32 %and584, 0
  br i1 %cmp585, label %if.then587, label %if.end588

if.then587:                                       ; preds = %land.lhs.true582
  %408 = load i32, ptr %addrExplain, align 4
  br label %if.end588

if.end588:                                        ; preds = %if.then587, %land.lhs.true582, %if.end574
  br label %for.inc589

for.inc589:                                       ; preds = %if.end588
  %409 = load i32, ptr %ii, align 4
  %inc590 = add nsw i32 %409, 1
  store i32 %inc590, ptr %ii, align 4
  br label %for.cond549, !llvm.loop !15

for.end591:                                       ; preds = %for.cond549
  %410 = load ptr, ptr %pWInfo, align 8
  store ptr %410, ptr %retval, align 8
  br label %return

whereBeginError:                                  ; preds = %if.then572, %if.then547, %if.then166, %if.then148, %if.then137, %if.then132, %if.then73, %if.then25
  %411 = load ptr, ptr %pWInfo, align 8
  %tobool592 = icmp ne ptr %411, null
  br i1 %tobool592, label %if.then593, label %if.end596

if.then593:                                       ; preds = %whereBeginError
  %412 = load ptr, ptr %pWInfo, align 8
  %savedNQueryLoop594 = getelementptr inbounds nuw %struct.WhereInfo, ptr %412, i32 0, i32 9
  %413 = load i32, ptr %savedNQueryLoop594, align 4
  %414 = load ptr, ptr %pParse.addr, align 8
  %nQueryLoop595 = getelementptr inbounds nuw %struct.Parse, ptr %414, i32 0, i32 39
  store i32 %413, ptr %nQueryLoop595, align 4
  %415 = load ptr, ptr %db, align 8
  %416 = load ptr, ptr %pWInfo, align 8
  call void @whereInfoFree(ptr noundef %415, ptr noundef %416)
  br label %if.end596

if.end596:                                        ; preds = %if.then593, %whereBeginError
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end596, %for.end591, %if.then12
  %417 = load ptr, ptr %retval, align 8
  ret ptr %417
}

; Function Attrs: nounwind uwtable
declare hidden void @whereLoopInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereClauseInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereSplit(ptr noundef, ptr noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @createMask(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereTabFuncArgs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereExprAnalyze(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @exprIsDeterministic(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isDistinctRedundant(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereShortCut(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @whereLoopAddAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @wherePathSolver(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereExprListUsage(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @constructAutomaticIndex(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereExplainOneScan(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @sqlite3WhereCodeOneLoopStart(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @whereInfoFree(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!15 = distinct !{!15, !7}
