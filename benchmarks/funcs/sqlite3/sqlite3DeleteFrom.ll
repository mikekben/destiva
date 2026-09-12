; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AuthContext = type { ptr, ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

@.str.798 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetNumCols(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DeleteFrom(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pWhere, ptr noundef %pOrderBy, ptr noundef %pLimit) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %pOrderBy.addr = alloca ptr, align 8
  %pLimit.addr = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %i = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %iTabCur = alloca i32, align 4
  %iDataCur = alloca i32, align 4
  %iIdxCur = alloca i32, align 4
  %nIdx = alloca i32, align 4
  %db = alloca ptr, align 8
  %sContext = alloca %struct.AuthContext, align 8
  %sNC = alloca %struct.NameContext, align 8
  %iDb = alloca i32, align 4
  %memCnt = alloca i32, align 4
  %rcauth = alloca i32, align 4
  %eOnePass = alloca i32, align 4
  %aiCurOnePass = alloca [2 x i32], align 4
  %aToOpen = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %iPk = alloca i32, align 4
  %nPk = alloca i16, align 2
  %iKey = alloca i32, align 4
  %nKey = alloca i16, align 2
  %iEphCur = alloca i32, align 4
  %iRowSet = alloca i32, align 4
  %addrBypass = alloca i32, align 4
  %addrLoop = alloca i32, align 4
  %addrEphOpen = alloca i32, align 4
  %bComplex = alloca i32, align 4
  %isView = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %wcf = alloca i16, align 2
  %iAddrOnce = alloca i32, align 4
  %pVTab = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pLimit, ptr %pLimit.addr, align 8
  store i32 0, ptr %iDataCur, align 4
  store i32 0, ptr %iIdxCur, align 4
  store i32 0, ptr %memCnt, align 4
  store ptr null, ptr %aToOpen, align 8
  store i32 0, ptr %iPk, align 4
  store i16 1, ptr %nPk, align 2
  store i32 0, ptr %iEphCur, align 4
  store i32 0, ptr %iRowSet, align 4
  store i32 0, ptr %addrBypass, align 4
  store i32 0, ptr %addrLoop, align 4
  store i32 0, ptr %addrEphOpen, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sContext, i8 0, i64 16, i1 false)
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 16
  %3 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %5 to i32
  %tobool2 = icmp ne i32 %conv, 0
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %delete_from_cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pTabList.addr, align 8
  %call = call ptr @sqlite3SrcListLookup(ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %pTab, align 8
  %8 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %delete_from_cleanup

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %10 = load ptr, ptr %pTab, align 8
  %call6 = call ptr @sqlite3TriggersExist(ptr noundef %9, ptr noundef %10, i32 noundef 124, ptr noundef null, ptr noundef null)
  store ptr %call6, ptr %pTrigger, align 8
  %11 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pSelect, align 8
  %cmp7 = icmp ne ptr %12, null
  %conv8 = zext i1 %cmp7 to i32
  store i32 %conv8, ptr %isView, align 4
  %13 = load ptr, ptr %pTrigger, align 8
  %tobool9 = icmp ne ptr %13, null
  br i1 %tobool9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end5
  %14 = load ptr, ptr %pParse.addr, align 8
  %15 = load ptr, ptr %pTab, align 8
  %call10 = call i32 @sqlite3FkRequired(ptr noundef %14, ptr noundef %15, ptr noundef null, i32 noundef 0)
  %tobool11 = icmp ne i32 %call10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end5
  %16 = phi i1 [ true, %if.end5 ], [ %tobool11, %lor.rhs ]
  %lor.ext = zext i1 %16 to i32
  store i32 %lor.ext, ptr %bComplex, align 4
  %17 = load ptr, ptr %pParse.addr, align 8
  %18 = load ptr, ptr %pTab, align 8
  %call12 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %17, ptr noundef %18)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %lor.end
  br label %delete_from_cleanup

if.end15:                                         ; preds = %lor.end
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pTab, align 8
  %21 = load ptr, ptr %pTrigger, align 8
  %tobool16 = icmp ne ptr %21, null
  %22 = zext i1 %tobool16 to i64
  %cond = select i1 %tobool16, i32 1, i32 0
  %call17 = call i32 @sqlite3IsReadOnly(ptr noundef %19, ptr noundef %20, i32 noundef %cond)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  br label %delete_from_cleanup

if.end20:                                         ; preds = %if.end15
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 20
  %25 = load ptr, ptr %pSchema, align 8
  %call21 = call i32 @sqlite3SchemaToIndex(ptr noundef %23, ptr noundef %25)
  store i32 %call21, ptr %iDb, align 4
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %zName, align 8
  %29 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 4
  %30 = load ptr, ptr %aDb, align 8
  %31 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %31 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %30, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %32 = load ptr, ptr %zDbSName, align 8
  %call22 = call i32 @sqlite3AuthCheck(ptr noundef %26, i32 noundef 9, ptr noundef %28, ptr noundef null, ptr noundef %32)
  store i32 %call22, ptr %rcauth, align 4
  %33 = load i32, ptr %rcauth, align 4
  %cmp23 = icmp eq i32 %33, 1
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end20
  br label %delete_from_cleanup

if.end26:                                         ; preds = %if.end20
  %34 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 17
  %35 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %nTab, align 4
  %36 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %36, i32 0, i32 2
  %arrayidx27 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx27, i32 0, i32 10
  store i32 %35, ptr %iCursor, align 8
  store i32 %35, ptr %iTabCur, align 4
  store i32 0, ptr %nIdx, align 4
  %37 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pIndex, align 8
  store ptr %38, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end26
  %39 = load ptr, ptr %pIdx, align 8
  %tobool28 = icmp ne ptr %39, null
  br i1 %tobool28, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %pParse.addr, align 8
  %nTab29 = getelementptr inbounds nuw %struct.Parse, ptr %40, i32 0, i32 17
  %41 = load i32, ptr %nTab29, align 4
  %inc30 = add nsw i32 %41, 1
  store i32 %inc30, ptr %nTab29, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %42 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %42, i32 0, i32 5
  %43 = load ptr, ptr %pNext, align 8
  store ptr %43, ptr %pIdx, align 8
  %44 = load i32, ptr %nIdx, align 4
  %inc31 = add nsw i32 %44, 1
  store i32 %inc31, ptr %nIdx, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %45 = load i32, ptr %isView, align 4
  %tobool32 = icmp ne i32 %45, 0
  br i1 %tobool32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.end
  %46 = load ptr, ptr %pParse.addr, align 8
  %47 = load ptr, ptr %pTab, align 8
  %zName34 = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %zName34, align 8
  call void @sqlite3AuthContextPush(ptr noundef %46, ptr noundef %sContext, ptr noundef %48)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end
  %49 = load ptr, ptr %pParse.addr, align 8
  %call36 = call ptr @sqlite3GetVdbe(ptr noundef %49)
  store ptr %call36, ptr %v, align 8
  %50 = load ptr, ptr %v, align 8
  %cmp37 = icmp eq ptr %50, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %delete_from_cleanup

if.end40:                                         ; preds = %if.end35
  %51 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %51, i32 0, i32 6
  %52 = load i8, ptr %nested, align 2
  %conv41 = zext i8 %52 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  %53 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeCountChanges(ptr noundef %53)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40
  %54 = load ptr, ptr %pParse.addr, align 8
  %55 = load i32, ptr %bComplex, align 4
  %56 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %54, i32 noundef %55, i32 noundef %56)
  %57 = load i32, ptr %isView, align 4
  %tobool46 = icmp ne i32 %57, 0
  br i1 %tobool46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  %58 = load ptr, ptr %pParse.addr, align 8
  %59 = load ptr, ptr %pTab, align 8
  %60 = load ptr, ptr %pWhere.addr, align 8
  %61 = load ptr, ptr %pOrderBy.addr, align 8
  %62 = load ptr, ptr %pLimit.addr, align 8
  %63 = load i32, ptr %iTabCur, align 4
  call void @sqlite3MaterializeView(ptr noundef %58, ptr noundef %59, ptr noundef %60, ptr noundef %61, ptr noundef %62, i32 noundef %63)
  %64 = load i32, ptr %iTabCur, align 4
  store i32 %64, ptr %iIdxCur, align 4
  store i32 %64, ptr %iDataCur, align 4
  store ptr null, ptr %pOrderBy.addr, align 8
  store ptr null, ptr %pLimit.addr, align 8
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %if.end45
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %65 = load ptr, ptr %pParse.addr, align 8
  %pParse49 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %65, ptr %pParse49, align 8
  %66 = load ptr, ptr %pTabList.addr, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %66, ptr %pSrcList, align 8
  %67 = load ptr, ptr %pWhere.addr, align 8
  %call50 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %67)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.end48
  br label %delete_from_cleanup

if.end53:                                         ; preds = %if.end48
  %68 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %68, i32 0, i32 7
  %69 = load i64, ptr %flags, align 8
  %and = and i64 %69, 128
  %cmp54 = icmp ne i64 %and, 0
  br i1 %cmp54, label %land.lhs.true, label %if.end63

land.lhs.true:                                    ; preds = %if.end53
  %70 = load ptr, ptr %pParse.addr, align 8
  %nested56 = getelementptr inbounds nuw %struct.Parse, ptr %70, i32 0, i32 6
  %71 = load i8, ptr %nested56, align 2
  %tobool57 = icmp ne i8 %71, 0
  br i1 %tobool57, label %if.end63, label %land.lhs.true58

land.lhs.true58:                                  ; preds = %land.lhs.true
  %72 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %72, i32 0, i32 36
  %73 = load ptr, ptr %pTriggerTab, align 8
  %tobool59 = icmp ne ptr %73, null
  br i1 %tobool59, label %if.end63, label %if.then60

if.then60:                                        ; preds = %land.lhs.true58
  %74 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %74, i32 0, i32 18
  %75 = load i32, ptr %nMem, align 8
  %inc61 = add nsw i32 %75, 1
  store i32 %inc61, ptr %nMem, align 8
  store i32 %inc61, ptr %memCnt, align 4
  %76 = load ptr, ptr %v, align 8
  %77 = load i32, ptr %memCnt, align 4
  %call62 = call i32 @sqlite3VdbeAddOp2(ptr noundef %76, i32 noundef 70, i32 noundef 0, i32 noundef %77)
  br label %if.end63

if.end63:                                         ; preds = %if.then60, %land.lhs.true58, %land.lhs.true, %if.end53
  %78 = load i32, ptr %rcauth, align 4
  %cmp64 = icmp eq i32 %78, 0
  br i1 %cmp64, label %land.lhs.true66, label %if.else

land.lhs.true66:                                  ; preds = %if.end63
  %79 = load ptr, ptr %pWhere.addr, align 8
  %cmp67 = icmp eq ptr %79, null
  br i1 %cmp67, label %land.lhs.true69, label %if.else

land.lhs.true69:                                  ; preds = %land.lhs.true66
  %80 = load i32, ptr %bComplex, align 4
  %tobool70 = icmp ne i32 %80, 0
  br i1 %tobool70, label %if.else, label %land.lhs.true71

land.lhs.true71:                                  ; preds = %land.lhs.true69
  %81 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %81, i32 0, i32 16
  %82 = load i32, ptr %nModuleArg, align 4
  %tobool72 = icmp ne i32 %82, 0
  br i1 %tobool72, label %if.else, label %if.then73

if.then73:                                        ; preds = %land.lhs.true71
  %83 = load ptr, ptr %pParse.addr, align 8
  %84 = load i32, ptr %iDb, align 4
  %85 = load ptr, ptr %pTab, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %85, i32 0, i32 7
  %86 = load i32, ptr %tnum, align 8
  %87 = load ptr, ptr %pTab, align 8
  %zName74 = getelementptr inbounds nuw %struct.Table, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %zName74, align 8
  call void @sqlite3TableLock(ptr noundef %83, i32 noundef %84, i32 noundef %86, i8 noundef zeroext 1, ptr noundef %88)
  %89 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %89, i32 0, i32 9
  %90 = load i32, ptr %tabFlags, align 8
  %and75 = and i32 %90, 32
  %cmp76 = icmp eq i32 %and75, 0
  br i1 %cmp76, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.then73
  %91 = load ptr, ptr %v, align 8
  %92 = load ptr, ptr %pTab, align 8
  %tnum79 = getelementptr inbounds nuw %struct.Table, ptr %92, i32 0, i32 7
  %93 = load i32, ptr %tnum79, align 8
  %94 = load i32, ptr %iDb, align 4
  %95 = load i32, ptr %memCnt, align 4
  %tobool80 = icmp ne i32 %95, 0
  br i1 %tobool80, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then78
  %96 = load i32, ptr %memCnt, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then78
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond81 = phi i32 [ %96, %cond.true ], [ -1, %cond.false ]
  %97 = load ptr, ptr %pTab, align 8
  %zName82 = getelementptr inbounds nuw %struct.Table, ptr %97, i32 0, i32 0
  %98 = load ptr, ptr %zName82, align 8
  %call83 = call i32 @sqlite3VdbeAddOp4(ptr noundef %91, i32 noundef 137, i32 noundef %93, i32 noundef %94, i32 noundef %cond81, ptr noundef %98, i32 noundef -1)
  br label %if.end84

if.end84:                                         ; preds = %cond.end, %if.then73
  %99 = load ptr, ptr %pTab, align 8
  %pIndex85 = getelementptr inbounds nuw %struct.Table, ptr %99, i32 0, i32 2
  %100 = load ptr, ptr %pIndex85, align 8
  store ptr %100, ptr %pIdx, align 8
  br label %for.cond86

for.cond86:                                       ; preds = %for.inc91, %if.end84
  %101 = load ptr, ptr %pIdx, align 8
  %tobool87 = icmp ne ptr %101, null
  br i1 %tobool87, label %for.body88, label %for.end93

for.body88:                                       ; preds = %for.cond86
  %102 = load ptr, ptr %v, align 8
  %103 = load ptr, ptr %pIdx, align 8
  %tnum89 = getelementptr inbounds nuw %struct.Index, ptr %103, i32 0, i32 11
  %104 = load i32, ptr %tnum89, align 8
  %105 = load i32, ptr %iDb, align 4
  %call90 = call i32 @sqlite3VdbeAddOp2(ptr noundef %102, i32 noundef 137, i32 noundef %104, i32 noundef %105)
  br label %for.inc91

for.inc91:                                        ; preds = %for.body88
  %106 = load ptr, ptr %pIdx, align 8
  %pNext92 = getelementptr inbounds nuw %struct.Index, ptr %106, i32 0, i32 5
  %107 = load ptr, ptr %pNext92, align 8
  store ptr %107, ptr %pIdx, align 8
  br label %for.cond86, !llvm.loop !8

for.end93:                                        ; preds = %for.cond86
  br label %if.end290

if.else:                                          ; preds = %land.lhs.true71, %land.lhs.true69, %land.lhs.true66, %if.end63
  store i16 1044, ptr %wcf, align 2
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  %108 = load i32, ptr %ncFlags, align 8
  %and94 = and i32 %108, 64
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.then96, label %if.end97

if.then96:                                        ; preds = %if.else
  store i32 1, ptr %bComplex, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.else
  %109 = load i32, ptr %bComplex, align 4
  %tobool98 = icmp ne i32 %109, 0
  %110 = zext i1 %tobool98 to i64
  %cond99 = select i1 %tobool98, i32 0, i32 8
  %111 = load i16, ptr %wcf, align 2
  %conv100 = zext i16 %111 to i32
  %or = or i32 %conv100, %cond99
  %conv101 = trunc i32 %or to i16
  store i16 %conv101, ptr %wcf, align 2
  %112 = load ptr, ptr %pTab, align 8
  %tabFlags102 = getelementptr inbounds nuw %struct.Table, ptr %112, i32 0, i32 9
  %113 = load i32, ptr %tabFlags102, align 8
  %and103 = and i32 %113, 32
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %if.then106, label %if.else110

if.then106:                                       ; preds = %if.end97
  store ptr null, ptr %pPk, align 8
  store i16 1, ptr %nPk, align 2
  %114 = load ptr, ptr %pParse.addr, align 8
  %nMem107 = getelementptr inbounds nuw %struct.Parse, ptr %114, i32 0, i32 18
  %115 = load i32, ptr %nMem107, align 8
  %inc108 = add nsw i32 %115, 1
  store i32 %inc108, ptr %nMem107, align 8
  store i32 %inc108, ptr %iRowSet, align 4
  %116 = load ptr, ptr %v, align 8
  %117 = load i32, ptr %iRowSet, align 4
  %call109 = call i32 @sqlite3VdbeAddOp2(ptr noundef %116, i32 noundef 73, i32 noundef 0, i32 noundef %117)
  br label %if.end120

if.else110:                                       ; preds = %if.end97
  %118 = load ptr, ptr %pTab, align 8
  %call111 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %118)
  store ptr %call111, ptr %pPk, align 8
  %119 = load ptr, ptr %pPk, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %119, i32 0, i32 13
  %120 = load i16, ptr %nKeyCol, align 2
  store i16 %120, ptr %nPk, align 2
  %121 = load ptr, ptr %pParse.addr, align 8
  %nMem112 = getelementptr inbounds nuw %struct.Parse, ptr %121, i32 0, i32 18
  %122 = load i32, ptr %nMem112, align 8
  %add = add nsw i32 %122, 1
  store i32 %add, ptr %iPk, align 4
  %123 = load i16, ptr %nPk, align 2
  %conv113 = sext i16 %123 to i32
  %124 = load ptr, ptr %pParse.addr, align 8
  %nMem114 = getelementptr inbounds nuw %struct.Parse, ptr %124, i32 0, i32 18
  %125 = load i32, ptr %nMem114, align 8
  %add115 = add nsw i32 %125, %conv113
  store i32 %add115, ptr %nMem114, align 8
  %126 = load ptr, ptr %pParse.addr, align 8
  %nTab116 = getelementptr inbounds nuw %struct.Parse, ptr %126, i32 0, i32 17
  %127 = load i32, ptr %nTab116, align 4
  %inc117 = add nsw i32 %127, 1
  store i32 %inc117, ptr %nTab116, align 4
  store i32 %127, ptr %iEphCur, align 4
  %128 = load ptr, ptr %v, align 8
  %129 = load i32, ptr %iEphCur, align 4
  %130 = load i16, ptr %nPk, align 2
  %conv118 = sext i16 %130 to i32
  %call119 = call i32 @sqlite3VdbeAddOp2(ptr noundef %128, i32 noundef 112, i32 noundef %129, i32 noundef %conv118)
  store i32 %call119, ptr %addrEphOpen, align 4
  %131 = load ptr, ptr %pParse.addr, align 8
  %132 = load ptr, ptr %pPk, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %131, ptr noundef %132)
  br label %if.end120

if.end120:                                        ; preds = %if.else110, %if.then106
  %133 = load ptr, ptr %pParse.addr, align 8
  %134 = load ptr, ptr %pTabList.addr, align 8
  %135 = load ptr, ptr %pWhere.addr, align 8
  %136 = load i16, ptr %wcf, align 2
  %137 = load i32, ptr %iTabCur, align 4
  %add121 = add nsw i32 %137, 1
  %call122 = call ptr @sqlite3WhereBegin(ptr noundef %133, ptr noundef %134, ptr noundef %135, ptr noundef null, ptr noundef null, i16 noundef zeroext %136, i32 noundef %add121)
  store ptr %call122, ptr %pWInfo, align 8
  %138 = load ptr, ptr %pWInfo, align 8
  %cmp123 = icmp eq ptr %138, null
  br i1 %cmp123, label %if.then125, label %if.end126

if.then125:                                       ; preds = %if.end120
  br label %delete_from_cleanup

if.end126:                                        ; preds = %if.end120
  %139 = load ptr, ptr %pWInfo, align 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %call127 = call i32 @sqlite3WhereOkOnePass(ptr noundef %139, ptr noundef %arraydecay)
  store i32 %call127, ptr %eOnePass, align 4
  %140 = load i32, ptr %eOnePass, align 4
  %cmp128 = icmp ne i32 %140, 1
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %if.end126
  %141 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %141)
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %if.end126
  %142 = load i32, ptr %memCnt, align 4
  %tobool132 = icmp ne i32 %142, 0
  br i1 %tobool132, label %if.then133, label %if.end135

if.then133:                                       ; preds = %if.end131
  %143 = load ptr, ptr %v, align 8
  %144 = load i32, ptr %memCnt, align 4
  %call134 = call i32 @sqlite3VdbeAddOp2(ptr noundef %143, i32 noundef 83, i32 noundef %144, i32 noundef 1)
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end131
  %145 = load ptr, ptr %pPk, align 8
  %tobool136 = icmp ne ptr %145, null
  br i1 %tobool136, label %if.then137, label %if.else150

if.then137:                                       ; preds = %if.end135
  store i32 0, ptr %i, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc147, %if.then137
  %146 = load i32, ptr %i, align 4
  %147 = load i16, ptr %nPk, align 2
  %conv139 = sext i16 %147 to i32
  %cmp140 = icmp slt i32 %146, %conv139
  br i1 %cmp140, label %for.body142, label %for.end149

for.body142:                                      ; preds = %for.cond138
  %148 = load ptr, ptr %v, align 8
  %149 = load ptr, ptr %pTab, align 8
  %150 = load i32, ptr %iTabCur, align 4
  %151 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %151, i32 0, i32 1
  %152 = load ptr, ptr %aiColumn, align 8
  %153 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %153 to i64
  %arrayidx144 = getelementptr inbounds i16, ptr %152, i64 %idxprom143
  %154 = load i16, ptr %arrayidx144, align 2
  %conv145 = sext i16 %154 to i32
  %155 = load i32, ptr %iPk, align 4
  %156 = load i32, ptr %i, align 4
  %add146 = add nsw i32 %155, %156
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %148, ptr noundef %149, i32 noundef %150, i32 noundef %conv145, i32 noundef %add146)
  br label %for.inc147

for.inc147:                                       ; preds = %for.body142
  %157 = load i32, ptr %i, align 4
  %inc148 = add nsw i32 %157, 1
  store i32 %inc148, ptr %i, align 4
  br label %for.cond138, !llvm.loop !9

for.end149:                                       ; preds = %for.cond138
  %158 = load i32, ptr %iPk, align 4
  store i32 %158, ptr %iKey, align 4
  br label %if.end153

if.else150:                                       ; preds = %if.end135
  %159 = load ptr, ptr %pParse.addr, align 8
  %nMem151 = getelementptr inbounds nuw %struct.Parse, ptr %159, i32 0, i32 18
  %160 = load i32, ptr %nMem151, align 8
  %inc152 = add nsw i32 %160, 1
  store i32 %inc152, ptr %nMem151, align 8
  store i32 %inc152, ptr %iKey, align 4
  %161 = load ptr, ptr %v, align 8
  %162 = load ptr, ptr %pTab, align 8
  %163 = load i32, ptr %iTabCur, align 4
  %164 = load i32, ptr %iKey, align 4
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %161, ptr noundef %162, i32 noundef %163, i32 noundef -1, i32 noundef %164)
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %for.end149
  %165 = load i32, ptr %eOnePass, align 4
  %cmp154 = icmp ne i32 %165, 0
  br i1 %cmp154, label %if.then156, label %if.else190

if.then156:                                       ; preds = %if.end153
  %166 = load i16, ptr %nPk, align 2
  store i16 %166, ptr %nKey, align 2
  %167 = load ptr, ptr %db, align 8
  %168 = load i32, ptr %nIdx, align 4
  %add157 = add nsw i32 %168, 2
  %conv158 = sext i32 %add157 to i64
  %call159 = call ptr @sqlite3DbMallocRawNN(ptr noundef %167, i64 noundef %conv158)
  store ptr %call159, ptr %aToOpen, align 8
  %169 = load ptr, ptr %aToOpen, align 8
  %cmp160 = icmp eq ptr %169, null
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.then156
  %170 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %170)
  br label %delete_from_cleanup

if.end163:                                        ; preds = %if.then156
  %171 = load ptr, ptr %aToOpen, align 8
  %172 = load i32, ptr %nIdx, align 4
  %add164 = add nsw i32 %172, 1
  %conv165 = sext i32 %add164 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %171, i8 1, i64 %conv165, i1 false)
  %173 = load ptr, ptr %aToOpen, align 8
  %174 = load i32, ptr %nIdx, align 4
  %add166 = add nsw i32 %174, 1
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds i8, ptr %173, i64 %idxprom167
  store i8 0, ptr %arrayidx168, align 1
  %arrayidx169 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %175 = load i32, ptr %arrayidx169, align 4
  %cmp170 = icmp sge i32 %175, 0
  br i1 %cmp170, label %if.then172, label %if.end176

if.then172:                                       ; preds = %if.end163
  %176 = load ptr, ptr %aToOpen, align 8
  %arrayidx173 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %177 = load i32, ptr %arrayidx173, align 4
  %178 = load i32, ptr %iTabCur, align 4
  %sub = sub nsw i32 %177, %178
  %idxprom174 = sext i32 %sub to i64
  %arrayidx175 = getelementptr inbounds i8, ptr %176, i64 %idxprom174
  store i8 0, ptr %arrayidx175, align 1
  br label %if.end176

if.end176:                                        ; preds = %if.then172, %if.end163
  %arrayidx177 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %179 = load i32, ptr %arrayidx177, align 4
  %cmp178 = icmp sge i32 %179, 0
  br i1 %cmp178, label %if.then180, label %if.end185

if.then180:                                       ; preds = %if.end176
  %180 = load ptr, ptr %aToOpen, align 8
  %arrayidx181 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %181 = load i32, ptr %arrayidx181, align 4
  %182 = load i32, ptr %iTabCur, align 4
  %sub182 = sub nsw i32 %181, %182
  %idxprom183 = sext i32 %sub182 to i64
  %arrayidx184 = getelementptr inbounds i8, ptr %180, i64 %idxprom183
  store i8 0, ptr %arrayidx184, align 1
  br label %if.end185

if.end185:                                        ; preds = %if.then180, %if.end176
  %183 = load i32, ptr %addrEphOpen, align 4
  %tobool186 = icmp ne i32 %183, 0
  br i1 %tobool186, label %if.then187, label %if.end189

if.then187:                                       ; preds = %if.end185
  %184 = load ptr, ptr %v, align 8
  %185 = load i32, ptr %addrEphOpen, align 4
  %call188 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %184, i32 noundef %185)
  br label %if.end189

if.end189:                                        ; preds = %if.then187, %if.end185
  br label %if.end205

if.else190:                                       ; preds = %if.end153
  %186 = load ptr, ptr %pPk, align 8
  %tobool191 = icmp ne ptr %186, null
  br i1 %tobool191, label %if.then192, label %if.else202

if.then192:                                       ; preds = %if.else190
  %187 = load ptr, ptr %pParse.addr, align 8
  %nMem193 = getelementptr inbounds nuw %struct.Parse, ptr %187, i32 0, i32 18
  %188 = load i32, ptr %nMem193, align 8
  %inc194 = add nsw i32 %188, 1
  store i32 %inc194, ptr %nMem193, align 8
  store i32 %inc194, ptr %iKey, align 4
  store i16 0, ptr %nKey, align 2
  %189 = load ptr, ptr %v, align 8
  %190 = load i32, ptr %iPk, align 4
  %191 = load i16, ptr %nPk, align 2
  %conv195 = sext i16 %191 to i32
  %192 = load i32, ptr %iKey, align 4
  %193 = load ptr, ptr %pParse.addr, align 8
  %db196 = getelementptr inbounds nuw %struct.Parse, ptr %193, i32 0, i32 0
  %194 = load ptr, ptr %db196, align 8
  %195 = load ptr, ptr %pPk, align 8
  %call197 = call ptr @sqlite3IndexAffinityStr(ptr noundef %194, ptr noundef %195)
  %196 = load i16, ptr %nPk, align 2
  %conv198 = sext i16 %196 to i32
  %call199 = call i32 @sqlite3VdbeAddOp4(ptr noundef %189, i32 noundef 92, i32 noundef %190, i32 noundef %conv195, i32 noundef %192, ptr noundef %call197, i32 noundef %conv198)
  %197 = load ptr, ptr %v, align 8
  %198 = load i32, ptr %iEphCur, align 4
  %199 = load i32, ptr %iKey, align 4
  %200 = load i32, ptr %iPk, align 4
  %201 = load i16, ptr %nPk, align 2
  %conv200 = sext i16 %201 to i32
  %call201 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %197, i32 noundef 132, i32 noundef %198, i32 noundef %199, i32 noundef %200, i32 noundef %conv200)
  br label %if.end204

if.else202:                                       ; preds = %if.else190
  store i16 1, ptr %nKey, align 2
  %202 = load ptr, ptr %v, align 8
  %203 = load i32, ptr %iRowSet, align 4
  %204 = load i32, ptr %iKey, align 4
  %call203 = call i32 @sqlite3VdbeAddOp2(ptr noundef %202, i32 noundef 147, i32 noundef %203, i32 noundef %204)
  br label %if.end204

if.end204:                                        ; preds = %if.else202, %if.then192
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end189
  %205 = load i32, ptr %eOnePass, align 4
  %cmp206 = icmp ne i32 %205, 0
  br i1 %cmp206, label %if.then208, label %if.else210

if.then208:                                       ; preds = %if.end205
  %206 = load ptr, ptr %pParse.addr, align 8
  %call209 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %206)
  store i32 %call209, ptr %addrBypass, align 4
  br label %if.end211

if.else210:                                       ; preds = %if.end205
  %207 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %207)
  br label %if.end211

if.end211:                                        ; preds = %if.else210, %if.then208
  %208 = load i32, ptr %isView, align 4
  %tobool212 = icmp ne i32 %208, 0
  br i1 %tobool212, label %if.end224, label %if.then213

if.then213:                                       ; preds = %if.end211
  store i32 0, ptr %iAddrOnce, align 4
  %209 = load i32, ptr %eOnePass, align 4
  %cmp214 = icmp eq i32 %209, 2
  br i1 %cmp214, label %if.then216, label %if.end218

if.then216:                                       ; preds = %if.then213
  %210 = load ptr, ptr %v, align 8
  %call217 = call i32 @sqlite3VdbeAddOp0(ptr noundef %210, i32 noundef 17)
  store i32 %call217, ptr %iAddrOnce, align 4
  br label %if.end218

if.end218:                                        ; preds = %if.then216, %if.then213
  %211 = load ptr, ptr %pParse.addr, align 8
  %212 = load ptr, ptr %pTab, align 8
  %213 = load i32, ptr %iTabCur, align 4
  %214 = load ptr, ptr %aToOpen, align 8
  %call219 = call i32 @sqlite3OpenTableAndIndices(ptr noundef %211, ptr noundef %212, i32 noundef 98, i8 noundef zeroext 8, i32 noundef %213, ptr noundef %214, ptr noundef %iDataCur, ptr noundef %iIdxCur)
  %215 = load i32, ptr %eOnePass, align 4
  %cmp220 = icmp eq i32 %215, 2
  br i1 %cmp220, label %if.then222, label %if.end223

if.then222:                                       ; preds = %if.end218
  %216 = load ptr, ptr %v, align 8
  %217 = load i32, ptr %iAddrOnce, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %216, i32 noundef %217)
  br label %if.end223

if.end223:                                        ; preds = %if.then222, %if.end218
  br label %if.end224

if.end224:                                        ; preds = %if.end223, %if.end211
  %218 = load i32, ptr %eOnePass, align 4
  %cmp225 = icmp ne i32 %218, 0
  br i1 %cmp225, label %if.then227, label %if.else240

if.then227:                                       ; preds = %if.end224
  %219 = load ptr, ptr %pTab, align 8
  %nModuleArg228 = getelementptr inbounds nuw %struct.Table, ptr %219, i32 0, i32 16
  %220 = load i32, ptr %nModuleArg228, align 4
  %tobool229 = icmp ne i32 %220, 0
  br i1 %tobool229, label %if.end239, label %land.lhs.true230

land.lhs.true230:                                 ; preds = %if.then227
  %221 = load ptr, ptr %aToOpen, align 8
  %222 = load i32, ptr %iDataCur, align 4
  %223 = load i32, ptr %iTabCur, align 4
  %sub231 = sub nsw i32 %222, %223
  %idxprom232 = sext i32 %sub231 to i64
  %arrayidx233 = getelementptr inbounds i8, ptr %221, i64 %idxprom232
  %224 = load i8, ptr %arrayidx233, align 1
  %conv234 = zext i8 %224 to i32
  %tobool235 = icmp ne i32 %conv234, 0
  br i1 %tobool235, label %if.then236, label %if.end239

if.then236:                                       ; preds = %land.lhs.true230
  %225 = load ptr, ptr %v, align 8
  %226 = load i32, ptr %iDataCur, align 4
  %227 = load i32, ptr %addrBypass, align 4
  %228 = load i32, ptr %iKey, align 4
  %229 = load i16, ptr %nKey, align 2
  %conv237 = sext i16 %229 to i32
  %call238 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %225, i32 noundef 28, i32 noundef %226, i32 noundef %227, i32 noundef %228, i32 noundef %conv237)
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %land.lhs.true230, %if.then227
  br label %if.end254

if.else240:                                       ; preds = %if.end224
  %230 = load ptr, ptr %pPk, align 8
  %tobool241 = icmp ne ptr %230, null
  br i1 %tobool241, label %if.then242, label %if.else251

if.then242:                                       ; preds = %if.else240
  %231 = load ptr, ptr %v, align 8
  %232 = load i32, ptr %iEphCur, align 4
  %call243 = call i32 @sqlite3VdbeAddOp1(ptr noundef %231, i32 noundef 36, i32 noundef %232)
  store i32 %call243, ptr %addrLoop, align 4
  %233 = load ptr, ptr %pTab, align 8
  %nModuleArg244 = getelementptr inbounds nuw %struct.Table, ptr %233, i32 0, i32 16
  %234 = load i32, ptr %nModuleArg244, align 4
  %tobool245 = icmp ne i32 %234, 0
  br i1 %tobool245, label %if.then246, label %if.else248

if.then246:                                       ; preds = %if.then242
  %235 = load ptr, ptr %v, align 8
  %236 = load i32, ptr %iEphCur, align 4
  %237 = load i32, ptr %iKey, align 4
  %call247 = call i32 @sqlite3VdbeAddOp3(ptr noundef %235, i32 noundef 90, i32 noundef %236, i32 noundef 0, i32 noundef %237)
  br label %if.end250

if.else248:                                       ; preds = %if.then242
  %238 = load ptr, ptr %v, align 8
  %239 = load i32, ptr %iEphCur, align 4
  %240 = load i32, ptr %iKey, align 4
  %call249 = call i32 @sqlite3VdbeAddOp2(ptr noundef %238, i32 noundef 127, i32 noundef %239, i32 noundef %240)
  br label %if.end250

if.end250:                                        ; preds = %if.else248, %if.then246
  br label %if.end253

if.else251:                                       ; preds = %if.else240
  %241 = load ptr, ptr %v, align 8
  %242 = load i32, ptr %iRowSet, align 4
  %243 = load i32, ptr %iKey, align 4
  %call252 = call i32 @sqlite3VdbeAddOp3(ptr noundef %241, i32 noundef 41, i32 noundef %242, i32 noundef 0, i32 noundef %243)
  store i32 %call252, ptr %addrLoop, align 4
  br label %if.end253

if.end253:                                        ; preds = %if.else251, %if.end250
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.end239
  %244 = load ptr, ptr %pTab, align 8
  %nModuleArg255 = getelementptr inbounds nuw %struct.Table, ptr %244, i32 0, i32 16
  %245 = load i32, ptr %nModuleArg255, align 4
  %tobool256 = icmp ne i32 %245, 0
  br i1 %tobool256, label %if.then257, label %if.else269

if.then257:                                       ; preds = %if.end254
  %246 = load ptr, ptr %db, align 8
  %247 = load ptr, ptr %pTab, align 8
  %call258 = call ptr @sqlite3GetVTable(ptr noundef %246, ptr noundef %247)
  store ptr %call258, ptr %pVTab, align 8
  %248 = load ptr, ptr %pParse.addr, align 8
  %249 = load ptr, ptr %pTab, align 8
  call void @sqlite3VtabMakeWritable(ptr noundef %248, ptr noundef %249)
  %250 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %250)
  %251 = load i32, ptr %eOnePass, align 4
  %cmp259 = icmp eq i32 %251, 1
  br i1 %cmp259, label %if.then261, label %if.end267

if.then261:                                       ; preds = %if.then257
  %252 = load ptr, ptr %v, align 8
  %253 = load i32, ptr %iTabCur, align 4
  %call262 = call i32 @sqlite3VdbeAddOp1(ptr noundef %252, i32 noundef 117, i32 noundef %253)
  %254 = load ptr, ptr %pParse.addr, align 8
  %pToplevel = getelementptr inbounds nuw %struct.Parse, ptr %254, i32 0, i32 35
  %255 = load ptr, ptr %pToplevel, align 8
  %cmp263 = icmp eq ptr %255, null
  br i1 %cmp263, label %if.then265, label %if.end266

if.then265:                                       ; preds = %if.then261
  %256 = load ptr, ptr %pParse.addr, align 8
  %isMultiWrite = getelementptr inbounds nuw %struct.Parse, ptr %256, i32 0, i32 8
  store i8 0, ptr %isMultiWrite, align 8
  br label %if.end266

if.end266:                                        ; preds = %if.then265, %if.then261
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.then257
  %257 = load ptr, ptr %v, align 8
  %258 = load i32, ptr %iKey, align 4
  %259 = load ptr, ptr %pVTab, align 8
  %call268 = call i32 @sqlite3VdbeAddOp4(ptr noundef %257, i32 noundef 10, i32 noundef 0, i32 noundef 1, i32 noundef %258, ptr noundef %259, i32 noundef -12)
  %260 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %260, i16 noundef zeroext 2)
  br label %if.end277

if.else269:                                       ; preds = %if.end254
  %261 = load ptr, ptr %pParse.addr, align 8
  %nested270 = getelementptr inbounds nuw %struct.Parse, ptr %261, i32 0, i32 6
  %262 = load i8, ptr %nested270, align 2
  %conv271 = zext i8 %262 to i32
  %cmp272 = icmp eq i32 %conv271, 0
  %conv273 = zext i1 %cmp272 to i32
  store i32 %conv273, ptr %count, align 4
  %263 = load ptr, ptr %pParse.addr, align 8
  %264 = load ptr, ptr %pTab, align 8
  %265 = load ptr, ptr %pTrigger, align 8
  %266 = load i32, ptr %iDataCur, align 4
  %267 = load i32, ptr %iIdxCur, align 4
  %268 = load i32, ptr %iKey, align 4
  %269 = load i16, ptr %nKey, align 2
  %270 = load i32, ptr %count, align 4
  %conv274 = trunc i32 %270 to i8
  %271 = load i32, ptr %eOnePass, align 4
  %conv275 = trunc i32 %271 to i8
  %arrayidx276 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %272 = load i32, ptr %arrayidx276, align 4
  call void @sqlite3GenerateRowDelete(ptr noundef %263, ptr noundef %264, ptr noundef %265, i32 noundef %266, i32 noundef %267, i32 noundef %268, i16 noundef signext %269, i8 noundef zeroext %conv274, i8 noundef zeroext 11, i8 noundef zeroext %conv275, i32 noundef %272)
  br label %if.end277

if.end277:                                        ; preds = %if.else269, %if.end267
  %273 = load i32, ptr %eOnePass, align 4
  %cmp278 = icmp ne i32 %273, 0
  br i1 %cmp278, label %if.then280, label %if.else281

if.then280:                                       ; preds = %if.end277
  %274 = load ptr, ptr %v, align 8
  %275 = load i32, ptr %addrBypass, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %274, i32 noundef %275)
  %276 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %276)
  br label %if.end289

if.else281:                                       ; preds = %if.end277
  %277 = load ptr, ptr %pPk, align 8
  %tobool282 = icmp ne ptr %277, null
  br i1 %tobool282, label %if.then283, label %if.else286

if.then283:                                       ; preds = %if.else281
  %278 = load ptr, ptr %v, align 8
  %279 = load i32, ptr %iEphCur, align 4
  %280 = load i32, ptr %addrLoop, align 4
  %add284 = add nsw i32 %280, 1
  %call285 = call i32 @sqlite3VdbeAddOp2(ptr noundef %278, i32 noundef 5, i32 noundef %279, i32 noundef %add284)
  %281 = load ptr, ptr %v, align 8
  %282 = load i32, ptr %addrLoop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %281, i32 noundef %282)
  br label %if.end288

if.else286:                                       ; preds = %if.else281
  %283 = load ptr, ptr %v, align 8
  %284 = load i32, ptr %addrLoop, align 4
  %call287 = call i32 @sqlite3VdbeGoto(ptr noundef %283, i32 noundef %284)
  %285 = load ptr, ptr %v, align 8
  %286 = load i32, ptr %addrLoop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %285, i32 noundef %286)
  br label %if.end288

if.end288:                                        ; preds = %if.else286, %if.then283
  br label %if.end289

if.end289:                                        ; preds = %if.end288, %if.then280
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %for.end93
  %287 = load ptr, ptr %pParse.addr, align 8
  %nested291 = getelementptr inbounds nuw %struct.Parse, ptr %287, i32 0, i32 6
  %288 = load i8, ptr %nested291, align 2
  %conv292 = zext i8 %288 to i32
  %cmp293 = icmp eq i32 %conv292, 0
  br i1 %cmp293, label %land.lhs.true295, label %if.end300

land.lhs.true295:                                 ; preds = %if.end290
  %289 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab296 = getelementptr inbounds nuw %struct.Parse, ptr %289, i32 0, i32 36
  %290 = load ptr, ptr %pTriggerTab296, align 8
  %cmp297 = icmp eq ptr %290, null
  br i1 %cmp297, label %if.then299, label %if.end300

if.then299:                                       ; preds = %land.lhs.true295
  %291 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3AutoincrementEnd(ptr noundef %291)
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %land.lhs.true295, %if.end290
  %292 = load i32, ptr %memCnt, align 4
  %tobool301 = icmp ne i32 %292, 0
  br i1 %tobool301, label %if.then302, label %if.end305

if.then302:                                       ; preds = %if.end300
  %293 = load ptr, ptr %v, align 8
  %294 = load i32, ptr %memCnt, align 4
  %call303 = call i32 @sqlite3VdbeAddOp2(ptr noundef %293, i32 noundef 81, i32 noundef %294, i32 noundef 1)
  %295 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %295, i32 noundef 1)
  %296 = load ptr, ptr %v, align 8
  %call304 = call i32 @sqlite3VdbeSetColName(ptr noundef %296, i32 noundef 0, i32 noundef 0, ptr noundef @.str.798, ptr noundef null)
  br label %if.end305

if.end305:                                        ; preds = %if.then302, %if.end300
  br label %delete_from_cleanup

delete_from_cleanup:                              ; preds = %if.end305, %if.then162, %if.then125, %if.then52, %if.then39, %if.then25, %if.then19, %if.then14, %if.then4, %if.then
  call void @sqlite3AuthContextPop(ptr noundef %sContext)
  %297 = load ptr, ptr %db, align 8
  %298 = load ptr, ptr %pTabList.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %297, ptr noundef %298)
  %299 = load ptr, ptr %db, align 8
  %300 = load ptr, ptr %pWhere.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %299, ptr noundef %300)
  %301 = load ptr, ptr %db, align 8
  %302 = load ptr, ptr %aToOpen, align 8
  call void @sqlite3DbFree(ptr noundef %301, ptr noundef %302)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableLock(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListLookup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MultiWrite(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3IndexAffinityStr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3WhereBegin(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WhereEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggersExist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkRequired(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsReadOnly(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AuthContextPush(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeCountChanges(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3MaterializeView(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WhereOkOnePass(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OpenTableAndIndices(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabMakeWritable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateRowDelete(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef signext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AutoincrementEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AuthContextPop(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
