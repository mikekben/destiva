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
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }

@.str.628 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.804 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.805 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsRowid(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp2(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp3(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetNumCols(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeSetColName(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Update(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pChanges, ptr noundef %pWhere, i32 noundef %onError, ptr noundef %pOrderBy, ptr noundef %pLimit, ptr noundef %pUpsert) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pChanges.addr = alloca ptr, align 8
  %pWhere.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %pOrderBy.addr = alloca ptr, align 8
  %pLimit.addr = alloca ptr, align 8
  %pUpsert.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %addrTop = alloca i32, align 4
  %pWInfo = alloca ptr, align 8
  %v = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %nIdx = alloca i32, align 4
  %nAllIdx = alloca i32, align 4
  %iBaseCur = alloca i32, align 4
  %iDataCur = alloca i32, align 4
  %iIdxCur = alloca i32, align 4
  %db = alloca ptr, align 8
  %aRegIdx = alloca ptr, align 8
  %aXRef = alloca ptr, align 8
  %aToOpen = alloca ptr, align 8
  %chngPk = alloca i8, align 1
  %chngRowid = alloca i8, align 1
  %chngKey = alloca i8, align 1
  %pRowidExpr = alloca ptr, align 8
  %sContext = alloca %struct.AuthContext, align 8
  %sNC = alloca %struct.NameContext, align 8
  %iDb = alloca i32, align 4
  %eOnePass = alloca i32, align 4
  %hasFK = alloca i32, align 4
  %labelBreak = alloca i32, align 4
  %labelContinue = alloca i32, align 4
  %flags = alloca i32, align 4
  %isView = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %tmask = alloca i32, align 4
  %newmask = alloca i32, align 4
  %iEph = alloca i32, align 4
  %nKey = alloca i32, align 4
  %aiCurOnePass = alloca [2 x i32], align 4
  %addrOpen = alloca i32, align 4
  %iPk = alloca i32, align 4
  %nPk = alloca i16, align 2
  %bReplace = alloca i32, align 4
  %regRowCount = alloca i32, align 4
  %regOldRowid = alloca i32, align 4
  %regNewRowid = alloca i32, align 4
  %regNew = alloca i32, align 4
  %regOld = alloca i32, align 4
  %regRowSet = alloca i32, align 4
  %regKey = alloca i32, align 4
  %rc = alloca i32, align 4
  %reg = alloca i32, align 4
  %iCur = alloca i32, align 4
  %addrOnce = alloca i32, align 4
  %oldmask = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pChanges, ptr %pChanges.addr, align 8
  store ptr %pWhere, ptr %pWhere.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store ptr %pOrderBy, ptr %pOrderBy.addr, align 8
  store ptr %pLimit, ptr %pLimit.addr, align 8
  store ptr %pUpsert, ptr %pUpsert.addr, align 8
  store i32 0, ptr %addrTop, align 4
  store ptr null, ptr %aRegIdx, align 8
  store ptr null, ptr %aXRef, align 8
  store ptr null, ptr %pRowidExpr, align 8
  store i32 0, ptr %iEph, align 4
  store i32 0, ptr %nKey, align 4
  store i32 0, ptr %addrOpen, align 4
  store i32 0, ptr %iPk, align 4
  store i16 0, ptr %nPk, align 2
  store i32 0, ptr %bReplace, align 4
  store i32 0, ptr %regRowCount, align 4
  store i32 0, ptr %regOldRowid, align 4
  store i32 0, ptr %regNewRowid, align 4
  store i32 0, ptr %regNew, align 4
  store i32 0, ptr %regOld, align 4
  store i32 0, ptr %regRowSet, align 4
  store i32 0, ptr %regKey, align 4
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
  br label %update_cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pParse.addr, align 8
  %7 = load ptr, ptr %pTabList.addr, align 8
  %call = call ptr @sqlite3SrcListLookup(ptr noundef %6, ptr noundef %7)
  store ptr %call, ptr %pTab, align 8
  %8 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  br label %update_cleanup

if.end5:                                          ; preds = %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %db6 = getelementptr inbounds nuw %struct.Parse, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %db6, align 8
  %11 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %11, i32 0, i32 20
  %12 = load ptr, ptr %pSchema, align 8
  %call7 = call i32 @sqlite3SchemaToIndex(ptr noundef %10, ptr noundef %12)
  store i32 %call7, ptr %iDb, align 4
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pTab, align 8
  %15 = load ptr, ptr %pChanges.addr, align 8
  %call8 = call ptr @sqlite3TriggersExist(ptr noundef %13, ptr noundef %14, i32 noundef 125, ptr noundef %15, ptr noundef %tmask)
  store ptr %call8, ptr %pTrigger, align 8
  %16 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %pSelect, align 8
  %cmp9 = icmp ne ptr %17, null
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, ptr %isView, align 4
  %18 = load ptr, ptr %pParse.addr, align 8
  %19 = load ptr, ptr %pTab, align 8
  %call11 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %18, ptr noundef %19)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end5
  br label %update_cleanup

if.end14:                                         ; preds = %if.end5
  %20 = load ptr, ptr %pParse.addr, align 8
  %21 = load ptr, ptr %pTab, align 8
  %22 = load i32, ptr %tmask, align 4
  %call15 = call i32 @sqlite3IsReadOnly(ptr noundef %20, ptr noundef %21, i32 noundef %22)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  br label %update_cleanup

if.end18:                                         ; preds = %if.end14
  %23 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %23, i32 0, i32 17
  %24 = load i32, ptr %nTab, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %nTab, align 4
  store i32 %24, ptr %iDataCur, align 4
  store i32 %24, ptr %iBaseCur, align 4
  %25 = load i32, ptr %iDataCur, align 4
  %add = add nsw i32 %25, 1
  store i32 %add, ptr %iIdxCur, align 4
  %26 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 9
  %27 = load i32, ptr %tabFlags, align 8
  %and = and i32 %27, 32
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end18
  br label %cond.end

cond.false:                                       ; preds = %if.end18
  %28 = load ptr, ptr %pTab, align 8
  %call21 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %28)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call21, %cond.false ]
  store ptr %cond, ptr %pPk, align 8
  store i32 0, ptr %nIdx, align 4
  %29 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %pIndex, align 8
  store ptr %30, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %31 = load ptr, ptr %pIdx, align 8
  %tobool22 = icmp ne ptr %31, null
  br i1 %tobool22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load ptr, ptr %pPk, align 8
  %33 = load ptr, ptr %pIdx, align 8
  %cmp23 = icmp eq ptr %32, %33
  br i1 %cmp23, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body
  %34 = load ptr, ptr %pParse.addr, align 8
  %nTab26 = getelementptr inbounds nuw %struct.Parse, ptr %34, i32 0, i32 17
  %35 = load i32, ptr %nTab26, align 4
  store i32 %35, ptr %iDataCur, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body
  %36 = load ptr, ptr %pParse.addr, align 8
  %nTab28 = getelementptr inbounds nuw %struct.Parse, ptr %36, i32 0, i32 17
  %37 = load i32, ptr %nTab28, align 4
  %inc29 = add nsw i32 %37, 1
  store i32 %inc29, ptr %nTab28, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %38 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %38, i32 0, i32 5
  %39 = load ptr, ptr %pNext, align 8
  store ptr %39, ptr %pIdx, align 8
  %40 = load i32, ptr %nIdx, align 4
  %inc30 = add nsw i32 %40, 1
  store i32 %inc30, ptr %nIdx, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %pUpsert.addr, align 8
  %tobool31 = icmp ne ptr %41, null
  br i1 %tobool31, label %if.then32, label %if.end36

if.then32:                                        ; preds = %for.end
  %42 = load ptr, ptr %pUpsert.addr, align 8
  %iDataCur33 = getelementptr inbounds nuw %struct.Upsert, ptr %42, i32 0, i32 7
  %43 = load i32, ptr %iDataCur33, align 4
  store i32 %43, ptr %iDataCur, align 4
  %44 = load ptr, ptr %pUpsert.addr, align 8
  %iIdxCur34 = getelementptr inbounds nuw %struct.Upsert, ptr %44, i32 0, i32 8
  %45 = load i32, ptr %iIdxCur34, align 8
  store i32 %45, ptr %iIdxCur, align 4
  %46 = load i32, ptr %iBaseCur, align 4
  %47 = load ptr, ptr %pParse.addr, align 8
  %nTab35 = getelementptr inbounds nuw %struct.Parse, ptr %47, i32 0, i32 17
  store i32 %46, ptr %nTab35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %for.end
  %48 = load i32, ptr %iDataCur, align 4
  %49 = load ptr, ptr %pTabList.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %49, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx, i32 0, i32 10
  store i32 %48, ptr %iCursor, align 8
  %50 = load ptr, ptr %db, align 8
  %51 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %51, i32 0, i32 11
  %52 = load i16, ptr %nCol, align 2
  %conv37 = sext i16 %52 to i32
  %53 = load i32, ptr %nIdx, align 4
  %add38 = add nsw i32 %conv37, %53
  %add39 = add nsw i32 %add38, 1
  %conv40 = sext i32 %add39 to i64
  %mul = mul i64 4, %conv40
  %54 = load i32, ptr %nIdx, align 4
  %conv41 = sext i32 %54 to i64
  %add42 = add i64 %mul, %conv41
  %add43 = add i64 %add42, 2
  %call44 = call ptr @sqlite3DbMallocRawNN(ptr noundef %50, i64 noundef %add43)
  store ptr %call44, ptr %aXRef, align 8
  %55 = load ptr, ptr %aXRef, align 8
  %cmp45 = icmp eq ptr %55, null
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end36
  br label %update_cleanup

if.end48:                                         ; preds = %if.end36
  %56 = load ptr, ptr %aXRef, align 8
  %57 = load ptr, ptr %pTab, align 8
  %nCol49 = getelementptr inbounds nuw %struct.Table, ptr %57, i32 0, i32 11
  %58 = load i16, ptr %nCol49, align 2
  %conv50 = sext i16 %58 to i32
  %idx.ext = sext i32 %conv50 to i64
  %add.ptr = getelementptr inbounds i32, ptr %56, i64 %idx.ext
  store ptr %add.ptr, ptr %aRegIdx, align 8
  %59 = load ptr, ptr %aRegIdx, align 8
  %60 = load i32, ptr %nIdx, align 4
  %idx.ext51 = sext i32 %60 to i64
  %add.ptr52 = getelementptr inbounds i32, ptr %59, i64 %idx.ext51
  %add.ptr53 = getelementptr inbounds i32, ptr %add.ptr52, i64 1
  store ptr %add.ptr53, ptr %aToOpen, align 8
  %61 = load ptr, ptr %aToOpen, align 8
  %62 = load i32, ptr %nIdx, align 4
  %add54 = add nsw i32 %62, 1
  %conv55 = sext i32 %add54 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %61, i8 1, i64 %conv55, i1 false)
  %63 = load ptr, ptr %aToOpen, align 8
  %64 = load i32, ptr %nIdx, align 4
  %add56 = add nsw i32 %64, 1
  %idxprom = sext i32 %add56 to i64
  %arrayidx57 = getelementptr inbounds i8, ptr %63, i64 %idxprom
  store i8 0, ptr %arrayidx57, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc66, %if.end48
  %65 = load i32, ptr %i, align 4
  %66 = load ptr, ptr %pTab, align 8
  %nCol59 = getelementptr inbounds nuw %struct.Table, ptr %66, i32 0, i32 11
  %67 = load i16, ptr %nCol59, align 2
  %conv60 = sext i16 %67 to i32
  %cmp61 = icmp slt i32 %65, %conv60
  br i1 %cmp61, label %for.body63, label %for.end68

for.body63:                                       ; preds = %for.cond58
  %68 = load ptr, ptr %aXRef, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom64 = sext i32 %69 to i64
  %arrayidx65 = getelementptr inbounds i32, ptr %68, i64 %idxprom64
  store i32 -1, ptr %arrayidx65, align 4
  br label %for.inc66

for.inc66:                                        ; preds = %for.body63
  %70 = load i32, ptr %i, align 4
  %inc67 = add nsw i32 %70, 1
  store i32 %inc67, ptr %i, align 4
  br label %for.cond58, !llvm.loop !8

for.end68:                                        ; preds = %for.cond58
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %71 = load ptr, ptr %pParse.addr, align 8
  %pParse69 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %71, ptr %pParse69, align 8
  %72 = load ptr, ptr %pTabList.addr, align 8
  %pSrcList = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 1
  store ptr %72, ptr %pSrcList, align 8
  %73 = load ptr, ptr %pUpsert.addr, align 8
  %uNC = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 2
  store ptr %73, ptr %uNC, align 8
  %ncFlags = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 6
  store i32 512, ptr %ncFlags, align 8
  store i8 0, ptr %chngPk, align 1
  store i8 0, ptr %chngRowid, align 1
  store i32 0, ptr %i, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc173, %for.end68
  %74 = load i32, ptr %i, align 4
  %75 = load ptr, ptr %pChanges.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %75, i32 0, i32 0
  %76 = load i32, ptr %nExpr, align 8
  %cmp71 = icmp slt i32 %74, %76
  br i1 %cmp71, label %for.body73, label %for.end175

for.body73:                                       ; preds = %for.cond70
  %77 = load ptr, ptr %pChanges.addr, align 8
  %a74 = getelementptr inbounds nuw %struct.ExprList, ptr %77, i32 0, i32 1
  %78 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %78 to i64
  %arrayidx76 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a74, i64 0, i64 %idxprom75
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx76, i32 0, i32 0
  %79 = load ptr, ptr %pExpr, align 8
  %call77 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %79)
  %tobool78 = icmp ne i32 %call77, 0
  br i1 %tobool78, label %if.then79, label %if.end80

if.then79:                                        ; preds = %for.body73
  br label %update_cleanup

if.end80:                                         ; preds = %for.body73
  store i32 0, ptr %j, align 4
  br label %for.cond81

for.cond81:                                       ; preds = %for.inc119, %if.end80
  %80 = load i32, ptr %j, align 4
  %81 = load ptr, ptr %pTab, align 8
  %nCol82 = getelementptr inbounds nuw %struct.Table, ptr %81, i32 0, i32 11
  %82 = load i16, ptr %nCol82, align 2
  %conv83 = sext i16 %82 to i32
  %cmp84 = icmp slt i32 %80, %conv83
  br i1 %cmp84, label %for.body86, label %for.end121

for.body86:                                       ; preds = %for.cond81
  %83 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %aCol, align 8
  %85 = load i32, ptr %j, align 4
  %idxprom87 = sext i32 %85 to i64
  %arrayidx88 = getelementptr inbounds %struct.Column, ptr %84, i64 %idxprom87
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx88, i32 0, i32 0
  %86 = load ptr, ptr %zName, align 8
  %87 = load ptr, ptr %pChanges.addr, align 8
  %a89 = getelementptr inbounds nuw %struct.ExprList, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %88 to i64
  %arrayidx91 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a89, i64 0, i64 %idxprom90
  %zName92 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx91, i32 0, i32 1
  %89 = load ptr, ptr %zName92, align 8
  %call93 = call i32 @sqlite3StrICmp(ptr noundef %86, ptr noundef %89)
  %cmp94 = icmp eq i32 %call93, 0
  br i1 %cmp94, label %if.then96, label %if.end118

if.then96:                                        ; preds = %for.body86
  %90 = load i32, ptr %j, align 4
  %91 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %91, i32 0, i32 10
  %92 = load i16, ptr %iPKey, align 4
  %conv97 = sext i16 %92 to i32
  %cmp98 = icmp eq i32 %90, %conv97
  br i1 %cmp98, label %if.then100, label %if.else

if.then100:                                       ; preds = %if.then96
  store i8 1, ptr %chngRowid, align 1
  %93 = load ptr, ptr %pChanges.addr, align 8
  %a101 = getelementptr inbounds nuw %struct.ExprList, ptr %93, i32 0, i32 1
  %94 = load i32, ptr %i, align 4
  %idxprom102 = sext i32 %94 to i64
  %arrayidx103 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a101, i64 0, i64 %idxprom102
  %pExpr104 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx103, i32 0, i32 0
  %95 = load ptr, ptr %pExpr104, align 8
  store ptr %95, ptr %pRowidExpr, align 8
  br label %if.end115

if.else:                                          ; preds = %if.then96
  %96 = load ptr, ptr %pPk, align 8
  %tobool105 = icmp ne ptr %96, null
  br i1 %tobool105, label %land.lhs.true, label %if.end114

land.lhs.true:                                    ; preds = %if.else
  %97 = load ptr, ptr %pTab, align 8
  %aCol106 = getelementptr inbounds nuw %struct.Table, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %aCol106, align 8
  %99 = load i32, ptr %j, align 4
  %idxprom107 = sext i32 %99 to i64
  %arrayidx108 = getelementptr inbounds %struct.Column, ptr %98, i64 %idxprom107
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %arrayidx108, i32 0, i32 6
  %100 = load i8, ptr %colFlags, align 1
  %conv109 = zext i8 %100 to i32
  %and110 = and i32 %conv109, 1
  %cmp111 = icmp ne i32 %and110, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %land.lhs.true
  store i8 1, ptr %chngPk, align 1
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %land.lhs.true, %if.else
  br label %if.end115

if.end115:                                        ; preds = %if.end114, %if.then100
  %101 = load i32, ptr %i, align 4
  %102 = load ptr, ptr %aXRef, align 8
  %103 = load i32, ptr %j, align 4
  %idxprom116 = sext i32 %103 to i64
  %arrayidx117 = getelementptr inbounds i32, ptr %102, i64 %idxprom116
  store i32 %101, ptr %arrayidx117, align 4
  br label %for.end121

if.end118:                                        ; preds = %for.body86
  br label %for.inc119

for.inc119:                                       ; preds = %if.end118
  %104 = load i32, ptr %j, align 4
  %inc120 = add nsw i32 %104, 1
  store i32 %inc120, ptr %j, align 4
  br label %for.cond81, !llvm.loop !9

for.end121:                                       ; preds = %if.end115, %for.cond81
  %105 = load i32, ptr %j, align 4
  %106 = load ptr, ptr %pTab, align 8
  %nCol122 = getelementptr inbounds nuw %struct.Table, ptr %106, i32 0, i32 11
  %107 = load i16, ptr %nCol122, align 2
  %conv123 = sext i16 %107 to i32
  %cmp124 = icmp sge i32 %105, %conv123
  br i1 %cmp124, label %if.then126, label %if.end147

if.then126:                                       ; preds = %for.end121
  %108 = load ptr, ptr %pPk, align 8
  %cmp127 = icmp eq ptr %108, null
  br i1 %cmp127, label %land.lhs.true129, label %if.else141

land.lhs.true129:                                 ; preds = %if.then126
  %109 = load ptr, ptr %pChanges.addr, align 8
  %a130 = getelementptr inbounds nuw %struct.ExprList, ptr %109, i32 0, i32 1
  %110 = load i32, ptr %i, align 4
  %idxprom131 = sext i32 %110 to i64
  %arrayidx132 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a130, i64 0, i64 %idxprom131
  %zName133 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx132, i32 0, i32 1
  %111 = load ptr, ptr %zName133, align 8
  %call134 = call i32 @sqlite3IsRowid(ptr noundef %111)
  %tobool135 = icmp ne i32 %call134, 0
  br i1 %tobool135, label %if.then136, label %if.else141

if.then136:                                       ; preds = %land.lhs.true129
  store i32 -1, ptr %j, align 4
  store i8 1, ptr %chngRowid, align 1
  %112 = load ptr, ptr %pChanges.addr, align 8
  %a137 = getelementptr inbounds nuw %struct.ExprList, ptr %112, i32 0, i32 1
  %113 = load i32, ptr %i, align 4
  %idxprom138 = sext i32 %113 to i64
  %arrayidx139 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a137, i64 0, i64 %idxprom138
  %pExpr140 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx139, i32 0, i32 0
  %114 = load ptr, ptr %pExpr140, align 8
  store ptr %114, ptr %pRowidExpr, align 8
  br label %if.end146

if.else141:                                       ; preds = %land.lhs.true129, %if.then126
  %115 = load ptr, ptr %pParse.addr, align 8
  %116 = load ptr, ptr %pChanges.addr, align 8
  %a142 = getelementptr inbounds nuw %struct.ExprList, ptr %116, i32 0, i32 1
  %117 = load i32, ptr %i, align 4
  %idxprom143 = sext i32 %117 to i64
  %arrayidx144 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a142, i64 0, i64 %idxprom143
  %zName145 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx144, i32 0, i32 1
  %118 = load ptr, ptr %zName145, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %115, ptr noundef @.str.804, ptr noundef %118)
  %119 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %119, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  br label %update_cleanup

if.end146:                                        ; preds = %if.then136
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %for.end121
  %120 = load ptr, ptr %pParse.addr, align 8
  %121 = load ptr, ptr %pTab, align 8
  %zName148 = getelementptr inbounds nuw %struct.Table, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %zName148, align 8
  %123 = load i32, ptr %j, align 4
  %cmp149 = icmp slt i32 %123, 0
  br i1 %cmp149, label %cond.true151, label %cond.false152

cond.true151:                                     ; preds = %if.end147
  br label %cond.end157

cond.false152:                                    ; preds = %if.end147
  %124 = load ptr, ptr %pTab, align 8
  %aCol153 = getelementptr inbounds nuw %struct.Table, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %aCol153, align 8
  %126 = load i32, ptr %j, align 4
  %idxprom154 = sext i32 %126 to i64
  %arrayidx155 = getelementptr inbounds %struct.Column, ptr %125, i64 %idxprom154
  %zName156 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx155, i32 0, i32 0
  %127 = load ptr, ptr %zName156, align 8
  br label %cond.end157

cond.end157:                                      ; preds = %cond.false152, %cond.true151
  %cond158 = phi ptr [ @.str.628, %cond.true151 ], [ %127, %cond.false152 ]
  %128 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %128, i32 0, i32 4
  %129 = load ptr, ptr %aDb, align 8
  %130 = load i32, ptr %iDb, align 4
  %idxprom159 = sext i32 %130 to i64
  %arrayidx160 = getelementptr inbounds %struct.Db, ptr %129, i64 %idxprom159
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx160, i32 0, i32 0
  %131 = load ptr, ptr %zDbSName, align 8
  %call161 = call i32 @sqlite3AuthCheck(ptr noundef %120, i32 noundef 23, ptr noundef %122, ptr noundef %cond158, ptr noundef %131)
  store i32 %call161, ptr %rc, align 4
  %132 = load i32, ptr %rc, align 4
  %cmp162 = icmp eq i32 %132, 1
  br i1 %cmp162, label %if.then164, label %if.else165

if.then164:                                       ; preds = %cond.end157
  br label %update_cleanup

if.else165:                                       ; preds = %cond.end157
  %133 = load i32, ptr %rc, align 4
  %cmp166 = icmp eq i32 %133, 2
  br i1 %cmp166, label %if.then168, label %if.end171

if.then168:                                       ; preds = %if.else165
  %134 = load ptr, ptr %aXRef, align 8
  %135 = load i32, ptr %j, align 4
  %idxprom169 = sext i32 %135 to i64
  %arrayidx170 = getelementptr inbounds i32, ptr %134, i64 %idxprom169
  store i32 -1, ptr %arrayidx170, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then168, %if.else165
  br label %if.end172

if.end172:                                        ; preds = %if.end171
  br label %for.inc173

for.inc173:                                       ; preds = %if.end172
  %136 = load i32, ptr %i, align 4
  %inc174 = add nsw i32 %136, 1
  store i32 %inc174, ptr %i, align 4
  br label %for.cond70, !llvm.loop !10

for.end175:                                       ; preds = %for.cond70
  %137 = load i8, ptr %chngRowid, align 1
  %conv176 = zext i8 %137 to i32
  %138 = load i8, ptr %chngPk, align 1
  %conv177 = zext i8 %138 to i32
  %add178 = add nsw i32 %conv176, %conv177
  %conv179 = trunc i32 %add178 to i8
  store i8 %conv179, ptr %chngKey, align 1
  %139 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %139, i32 0, i32 16
  %140 = load i32, ptr %nModuleArg, align 4
  %tobool180 = icmp ne i32 %140, 0
  %141 = zext i1 %tobool180 to i64
  %cond181 = select i1 %tobool180, i64 -1, i64 0
  %142 = load ptr, ptr %pTabList.addr, align 8
  %a182 = getelementptr inbounds nuw %struct.SrcList, ptr %142, i32 0, i32 2
  %arrayidx183 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a182, i64 0, i64 0
  %colUsed = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx183, i32 0, i32 13
  store i64 %cond181, ptr %colUsed, align 8
  %143 = load ptr, ptr %pParse.addr, align 8
  %144 = load ptr, ptr %pTab, align 8
  %145 = load ptr, ptr %aXRef, align 8
  %146 = load i8, ptr %chngKey, align 1
  %conv184 = zext i8 %146 to i32
  %call185 = call i32 @sqlite3FkRequired(ptr noundef %143, ptr noundef %144, ptr noundef %145, i32 noundef %conv184)
  store i32 %call185, ptr %hasFK, align 4
  %147 = load i32, ptr %onError.addr, align 4
  %cmp186 = icmp eq i32 %147, 5
  br i1 %cmp186, label %if.then188, label %if.end189

if.then188:                                       ; preds = %for.end175
  store i32 1, ptr %bReplace, align 4
  br label %if.end189

if.end189:                                        ; preds = %if.then188, %for.end175
  store i32 0, ptr %nAllIdx, align 4
  %148 = load ptr, ptr %pTab, align 8
  %pIndex190 = getelementptr inbounds nuw %struct.Table, ptr %148, i32 0, i32 2
  %149 = load ptr, ptr %pIndex190, align 8
  store ptr %149, ptr %pIdx, align 8
  br label %for.cond191

for.cond191:                                      ; preds = %for.inc250, %if.end189
  %150 = load ptr, ptr %pIdx, align 8
  %tobool192 = icmp ne ptr %150, null
  br i1 %tobool192, label %for.body193, label %for.end253

for.body193:                                      ; preds = %for.cond191
  %151 = load i8, ptr %chngKey, align 1
  %conv194 = zext i8 %151 to i32
  %tobool195 = icmp ne i32 %conv194, 0
  br i1 %tobool195, label %if.then206, label %lor.lhs.false196

lor.lhs.false196:                                 ; preds = %for.body193
  %152 = load i32, ptr %hasFK, align 4
  %cmp197 = icmp sgt i32 %152, 1
  br i1 %cmp197, label %if.then206, label %lor.lhs.false199

lor.lhs.false199:                                 ; preds = %lor.lhs.false196
  %153 = load ptr, ptr %pIdx, align 8
  %154 = load ptr, ptr %pPk, align 8
  %cmp200 = icmp eq ptr %153, %154
  br i1 %cmp200, label %if.then206, label %lor.lhs.false202

lor.lhs.false202:                                 ; preds = %lor.lhs.false199
  %155 = load ptr, ptr %pIdx, align 8
  %156 = load ptr, ptr %aXRef, align 8
  %157 = load i8, ptr %chngRowid, align 1
  %conv203 = zext i8 %157 to i32
  %call204 = call i32 @indexWhereClauseMightChange(ptr noundef %155, ptr noundef %156, i32 noundef %conv203)
  %tobool205 = icmp ne i32 %call204, 0
  br i1 %tobool205, label %if.then206, label %if.else211

if.then206:                                       ; preds = %lor.lhs.false202, %lor.lhs.false199, %lor.lhs.false196, %for.body193
  %158 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %158, i32 0, i32 18
  %159 = load i32, ptr %nMem, align 8
  %inc207 = add nsw i32 %159, 1
  store i32 %inc207, ptr %nMem, align 8
  store i32 %inc207, ptr %reg, align 4
  %160 = load ptr, ptr %pIdx, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %160, i32 0, i32 14
  %161 = load i16, ptr %nColumn, align 8
  %conv208 = zext i16 %161 to i32
  %162 = load ptr, ptr %pParse.addr, align 8
  %nMem209 = getelementptr inbounds nuw %struct.Parse, ptr %162, i32 0, i32 18
  %163 = load i32, ptr %nMem209, align 8
  %add210 = add nsw i32 %163, %conv208
  store i32 %add210, ptr %nMem209, align 8
  br label %if.end240

if.else211:                                       ; preds = %lor.lhs.false202
  store i32 0, ptr %reg, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond212

for.cond212:                                      ; preds = %for.inc237, %if.else211
  %164 = load i32, ptr %i, align 4
  %165 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %165, i32 0, i32 13
  %166 = load i16, ptr %nKeyCol, align 2
  %conv213 = zext i16 %166 to i32
  %cmp214 = icmp slt i32 %164, %conv213
  br i1 %cmp214, label %for.body216, label %for.end239

for.body216:                                      ; preds = %for.cond212
  %167 = load ptr, ptr %pIdx, align 8
  %168 = load i32, ptr %i, align 4
  %169 = load ptr, ptr %aXRef, align 8
  %170 = load i8, ptr %chngRowid, align 1
  %conv217 = zext i8 %170 to i32
  %call218 = call i32 @indexColumnIsBeingUpdated(ptr noundef %167, i32 noundef %168, ptr noundef %169, i32 noundef %conv217)
  %tobool219 = icmp ne i32 %call218, 0
  br i1 %tobool219, label %if.then220, label %if.end236

if.then220:                                       ; preds = %for.body216
  %171 = load ptr, ptr %pParse.addr, align 8
  %nMem221 = getelementptr inbounds nuw %struct.Parse, ptr %171, i32 0, i32 18
  %172 = load i32, ptr %nMem221, align 8
  %inc222 = add nsw i32 %172, 1
  store i32 %inc222, ptr %nMem221, align 8
  store i32 %inc222, ptr %reg, align 4
  %173 = load ptr, ptr %pIdx, align 8
  %nColumn223 = getelementptr inbounds nuw %struct.Index, ptr %173, i32 0, i32 14
  %174 = load i16, ptr %nColumn223, align 8
  %conv224 = zext i16 %174 to i32
  %175 = load ptr, ptr %pParse.addr, align 8
  %nMem225 = getelementptr inbounds nuw %struct.Parse, ptr %175, i32 0, i32 18
  %176 = load i32, ptr %nMem225, align 8
  %add226 = add nsw i32 %176, %conv224
  store i32 %add226, ptr %nMem225, align 8
  %177 = load i32, ptr %onError.addr, align 4
  %cmp227 = icmp eq i32 %177, 11
  br i1 %cmp227, label %land.lhs.true229, label %if.end235

land.lhs.true229:                                 ; preds = %if.then220
  %178 = load ptr, ptr %pIdx, align 8
  %onError230 = getelementptr inbounds nuw %struct.Index, ptr %178, i32 0, i32 15
  %179 = load i8, ptr %onError230, align 2
  %conv231 = zext i8 %179 to i32
  %cmp232 = icmp eq i32 %conv231, 5
  br i1 %cmp232, label %if.then234, label %if.end235

if.then234:                                       ; preds = %land.lhs.true229
  store i32 1, ptr %bReplace, align 4
  br label %if.end235

if.end235:                                        ; preds = %if.then234, %land.lhs.true229, %if.then220
  br label %for.end239

if.end236:                                        ; preds = %for.body216
  br label %for.inc237

for.inc237:                                       ; preds = %if.end236
  %180 = load i32, ptr %i, align 4
  %inc238 = add nsw i32 %180, 1
  store i32 %inc238, ptr %i, align 4
  br label %for.cond212, !llvm.loop !11

for.end239:                                       ; preds = %if.end235, %for.cond212
  br label %if.end240

if.end240:                                        ; preds = %for.end239, %if.then206
  %181 = load i32, ptr %reg, align 4
  %cmp241 = icmp eq i32 %181, 0
  br i1 %cmp241, label %if.then243, label %if.end247

if.then243:                                       ; preds = %if.end240
  %182 = load ptr, ptr %aToOpen, align 8
  %183 = load i32, ptr %nAllIdx, align 4
  %add244 = add nsw i32 %183, 1
  %idxprom245 = sext i32 %add244 to i64
  %arrayidx246 = getelementptr inbounds i8, ptr %182, i64 %idxprom245
  store i8 0, ptr %arrayidx246, align 1
  br label %if.end247

if.end247:                                        ; preds = %if.then243, %if.end240
  %184 = load i32, ptr %reg, align 4
  %185 = load ptr, ptr %aRegIdx, align 8
  %186 = load i32, ptr %nAllIdx, align 4
  %idxprom248 = sext i32 %186 to i64
  %arrayidx249 = getelementptr inbounds i32, ptr %185, i64 %idxprom248
  store i32 %184, ptr %arrayidx249, align 4
  br label %for.inc250

for.inc250:                                       ; preds = %if.end247
  %187 = load ptr, ptr %pIdx, align 8
  %pNext251 = getelementptr inbounds nuw %struct.Index, ptr %187, i32 0, i32 5
  %188 = load ptr, ptr %pNext251, align 8
  store ptr %188, ptr %pIdx, align 8
  %189 = load i32, ptr %nAllIdx, align 4
  %inc252 = add nsw i32 %189, 1
  store i32 %inc252, ptr %nAllIdx, align 4
  br label %for.cond191, !llvm.loop !12

for.end253:                                       ; preds = %for.cond191
  %190 = load ptr, ptr %pParse.addr, align 8
  %nMem254 = getelementptr inbounds nuw %struct.Parse, ptr %190, i32 0, i32 18
  %191 = load i32, ptr %nMem254, align 8
  %inc255 = add nsw i32 %191, 1
  store i32 %inc255, ptr %nMem254, align 8
  %192 = load ptr, ptr %aRegIdx, align 8
  %193 = load i32, ptr %nAllIdx, align 4
  %idxprom256 = sext i32 %193 to i64
  %arrayidx257 = getelementptr inbounds i32, ptr %192, i64 %idxprom256
  store i32 %inc255, ptr %arrayidx257, align 4
  %194 = load i32, ptr %bReplace, align 4
  %tobool258 = icmp ne i32 %194, 0
  br i1 %tobool258, label %if.then259, label %if.end262

if.then259:                                       ; preds = %for.end253
  %195 = load ptr, ptr %aToOpen, align 8
  %196 = load i32, ptr %nIdx, align 4
  %add260 = add nsw i32 %196, 1
  %conv261 = sext i32 %add260 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %195, i8 1, i64 %conv261, i1 false)
  br label %if.end262

if.end262:                                        ; preds = %if.then259, %for.end253
  %197 = load ptr, ptr %pParse.addr, align 8
  %call263 = call ptr @sqlite3GetVdbe(ptr noundef %197)
  store ptr %call263, ptr %v, align 8
  %198 = load ptr, ptr %v, align 8
  %cmp264 = icmp eq ptr %198, null
  br i1 %cmp264, label %if.then266, label %if.end267

if.then266:                                       ; preds = %if.end262
  br label %update_cleanup

if.end267:                                        ; preds = %if.end262
  %199 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %199, i32 0, i32 6
  %200 = load i8, ptr %nested, align 2
  %conv268 = zext i8 %200 to i32
  %cmp269 = icmp eq i32 %conv268, 0
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end267
  %201 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeCountChanges(ptr noundef %201)
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.end267
  %202 = load ptr, ptr %pParse.addr, align 8
  %203 = load ptr, ptr %pTrigger, align 8
  %tobool273 = icmp ne ptr %203, null
  br i1 %tobool273, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end272
  %204 = load i32, ptr %hasFK, align 4
  %tobool274 = icmp ne i32 %204, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end272
  %205 = phi i1 [ true, %if.end272 ], [ %tobool274, %lor.rhs ]
  %lor.ext = zext i1 %205 to i32
  %206 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %202, i32 noundef %lor.ext, i32 noundef %206)
  %207 = load ptr, ptr %pTab, align 8
  %nModuleArg275 = getelementptr inbounds nuw %struct.Table, ptr %207, i32 0, i32 16
  %208 = load i32, ptr %nModuleArg275, align 4
  %tobool276 = icmp ne i32 %208, 0
  br i1 %tobool276, label %if.end312, label %if.then277

if.then277:                                       ; preds = %lor.end
  %209 = load ptr, ptr %aRegIdx, align 8
  %210 = load i32, ptr %nAllIdx, align 4
  %idxprom278 = sext i32 %210 to i64
  %arrayidx279 = getelementptr inbounds i32, ptr %209, i64 %idxprom278
  %211 = load i32, ptr %arrayidx279, align 4
  store i32 %211, ptr %regRowSet, align 4
  %212 = load ptr, ptr %pParse.addr, align 8
  %nMem280 = getelementptr inbounds nuw %struct.Parse, ptr %212, i32 0, i32 18
  %213 = load i32, ptr %nMem280, align 8
  %inc281 = add nsw i32 %213, 1
  store i32 %inc281, ptr %nMem280, align 8
  store i32 %inc281, ptr %regNewRowid, align 4
  store i32 %inc281, ptr %regOldRowid, align 4
  %214 = load i8, ptr %chngPk, align 1
  %conv282 = zext i8 %214 to i32
  %tobool283 = icmp ne i32 %conv282, 0
  br i1 %tobool283, label %if.then288, label %lor.lhs.false284

lor.lhs.false284:                                 ; preds = %if.then277
  %215 = load ptr, ptr %pTrigger, align 8
  %tobool285 = icmp ne ptr %215, null
  br i1 %tobool285, label %if.then288, label %lor.lhs.false286

lor.lhs.false286:                                 ; preds = %lor.lhs.false284
  %216 = load i32, ptr %hasFK, align 4
  %tobool287 = icmp ne i32 %216, 0
  br i1 %tobool287, label %if.then288, label %if.end295

if.then288:                                       ; preds = %lor.lhs.false286, %lor.lhs.false284, %if.then277
  %217 = load ptr, ptr %pParse.addr, align 8
  %nMem289 = getelementptr inbounds nuw %struct.Parse, ptr %217, i32 0, i32 18
  %218 = load i32, ptr %nMem289, align 8
  %add290 = add nsw i32 %218, 1
  store i32 %add290, ptr %regOld, align 4
  %219 = load ptr, ptr %pTab, align 8
  %nCol291 = getelementptr inbounds nuw %struct.Table, ptr %219, i32 0, i32 11
  %220 = load i16, ptr %nCol291, align 2
  %conv292 = sext i16 %220 to i32
  %221 = load ptr, ptr %pParse.addr, align 8
  %nMem293 = getelementptr inbounds nuw %struct.Parse, ptr %221, i32 0, i32 18
  %222 = load i32, ptr %nMem293, align 8
  %add294 = add nsw i32 %222, %conv292
  store i32 %add294, ptr %nMem293, align 8
  br label %if.end295

if.end295:                                        ; preds = %if.then288, %lor.lhs.false286
  %223 = load i8, ptr %chngKey, align 1
  %conv296 = zext i8 %223 to i32
  %tobool297 = icmp ne i32 %conv296, 0
  br i1 %tobool297, label %if.then302, label %lor.lhs.false298

lor.lhs.false298:                                 ; preds = %if.end295
  %224 = load ptr, ptr %pTrigger, align 8
  %tobool299 = icmp ne ptr %224, null
  br i1 %tobool299, label %if.then302, label %lor.lhs.false300

lor.lhs.false300:                                 ; preds = %lor.lhs.false298
  %225 = load i32, ptr %hasFK, align 4
  %tobool301 = icmp ne i32 %225, 0
  br i1 %tobool301, label %if.then302, label %if.end305

if.then302:                                       ; preds = %lor.lhs.false300, %lor.lhs.false298, %if.end295
  %226 = load ptr, ptr %pParse.addr, align 8
  %nMem303 = getelementptr inbounds nuw %struct.Parse, ptr %226, i32 0, i32 18
  %227 = load i32, ptr %nMem303, align 8
  %inc304 = add nsw i32 %227, 1
  store i32 %inc304, ptr %nMem303, align 8
  store i32 %inc304, ptr %regNewRowid, align 4
  br label %if.end305

if.end305:                                        ; preds = %if.then302, %lor.lhs.false300
  %228 = load ptr, ptr %pParse.addr, align 8
  %nMem306 = getelementptr inbounds nuw %struct.Parse, ptr %228, i32 0, i32 18
  %229 = load i32, ptr %nMem306, align 8
  %add307 = add nsw i32 %229, 1
  store i32 %add307, ptr %regNew, align 4
  %230 = load ptr, ptr %pTab, align 8
  %nCol308 = getelementptr inbounds nuw %struct.Table, ptr %230, i32 0, i32 11
  %231 = load i16, ptr %nCol308, align 2
  %conv309 = sext i16 %231 to i32
  %232 = load ptr, ptr %pParse.addr, align 8
  %nMem310 = getelementptr inbounds nuw %struct.Parse, ptr %232, i32 0, i32 18
  %233 = load i32, ptr %nMem310, align 8
  %add311 = add nsw i32 %233, %conv309
  store i32 %add311, ptr %nMem310, align 8
  br label %if.end312

if.end312:                                        ; preds = %if.end305, %lor.end
  %234 = load i32, ptr %isView, align 4
  %tobool313 = icmp ne i32 %234, 0
  br i1 %tobool313, label %if.then314, label %if.end316

if.then314:                                       ; preds = %if.end312
  %235 = load ptr, ptr %pParse.addr, align 8
  %236 = load ptr, ptr %pTab, align 8
  %zName315 = getelementptr inbounds nuw %struct.Table, ptr %236, i32 0, i32 0
  %237 = load ptr, ptr %zName315, align 8
  call void @sqlite3AuthContextPush(ptr noundef %235, ptr noundef %sContext, ptr noundef %237)
  br label %if.end316

if.end316:                                        ; preds = %if.then314, %if.end312
  %238 = load i32, ptr %isView, align 4
  %tobool317 = icmp ne i32 %238, 0
  br i1 %tobool317, label %if.then318, label %if.end319

if.then318:                                       ; preds = %if.end316
  %239 = load ptr, ptr %pParse.addr, align 8
  %240 = load ptr, ptr %pTab, align 8
  %241 = load ptr, ptr %pWhere.addr, align 8
  %242 = load ptr, ptr %pOrderBy.addr, align 8
  %243 = load ptr, ptr %pLimit.addr, align 8
  %244 = load i32, ptr %iDataCur, align 4
  call void @sqlite3MaterializeView(ptr noundef %239, ptr noundef %240, ptr noundef %241, ptr noundef %242, ptr noundef %243, i32 noundef %244)
  store ptr null, ptr %pOrderBy.addr, align 8
  store ptr null, ptr %pLimit.addr, align 8
  br label %if.end319

if.end319:                                        ; preds = %if.then318, %if.end316
  %245 = load ptr, ptr %pWhere.addr, align 8
  %call320 = call i32 @sqlite3ResolveExprNames(ptr noundef %sNC, ptr noundef %245)
  %tobool321 = icmp ne i32 %call320, 0
  br i1 %tobool321, label %if.then322, label %if.end323

if.then322:                                       ; preds = %if.end319
  br label %update_cleanup

if.end323:                                        ; preds = %if.end319
  %246 = load ptr, ptr %pTab, align 8
  %nModuleArg324 = getelementptr inbounds nuw %struct.Table, ptr %246, i32 0, i32 16
  %247 = load i32, ptr %nModuleArg324, align 4
  %tobool325 = icmp ne i32 %247, 0
  br i1 %tobool325, label %if.then326, label %if.end327

if.then326:                                       ; preds = %if.end323
  %248 = load ptr, ptr %pParse.addr, align 8
  %249 = load ptr, ptr %pTabList.addr, align 8
  %250 = load ptr, ptr %pTab, align 8
  %251 = load ptr, ptr %pChanges.addr, align 8
  %252 = load ptr, ptr %pRowidExpr, align 8
  %253 = load ptr, ptr %aXRef, align 8
  %254 = load ptr, ptr %pWhere.addr, align 8
  %255 = load i32, ptr %onError.addr, align 4
  call void @updateVirtualTable(ptr noundef %248, ptr noundef %249, ptr noundef %250, ptr noundef %251, ptr noundef %252, ptr noundef %253, ptr noundef %254, i32 noundef %255)
  br label %update_cleanup

if.end327:                                        ; preds = %if.end323
  %256 = load ptr, ptr %pParse.addr, align 8
  %call328 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %256)
  store i32 %call328, ptr %labelBreak, align 4
  store i32 %call328, ptr %labelContinue, align 4
  %257 = load ptr, ptr %db, align 8
  %flags329 = getelementptr inbounds nuw %struct.sqlite3, ptr %257, i32 0, i32 7
  %258 = load i64, ptr %flags329, align 8
  %and330 = and i64 %258, 128
  %cmp331 = icmp ne i64 %and330, 0
  br i1 %cmp331, label %land.lhs.true333, label %if.end345

land.lhs.true333:                                 ; preds = %if.end327
  %259 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %259, i32 0, i32 36
  %260 = load ptr, ptr %pTriggerTab, align 8
  %tobool334 = icmp ne ptr %260, null
  br i1 %tobool334, label %if.end345, label %land.lhs.true335

land.lhs.true335:                                 ; preds = %land.lhs.true333
  %261 = load ptr, ptr %pParse.addr, align 8
  %nested336 = getelementptr inbounds nuw %struct.Parse, ptr %261, i32 0, i32 6
  %262 = load i8, ptr %nested336, align 2
  %tobool337 = icmp ne i8 %262, 0
  br i1 %tobool337, label %if.end345, label %land.lhs.true338

land.lhs.true338:                                 ; preds = %land.lhs.true335
  %263 = load ptr, ptr %pUpsert.addr, align 8
  %cmp339 = icmp eq ptr %263, null
  br i1 %cmp339, label %if.then341, label %if.end345

if.then341:                                       ; preds = %land.lhs.true338
  %264 = load ptr, ptr %pParse.addr, align 8
  %nMem342 = getelementptr inbounds nuw %struct.Parse, ptr %264, i32 0, i32 18
  %265 = load i32, ptr %nMem342, align 8
  %inc343 = add nsw i32 %265, 1
  store i32 %inc343, ptr %nMem342, align 8
  store i32 %inc343, ptr %regRowCount, align 4
  %266 = load ptr, ptr %v, align 8
  %267 = load i32, ptr %regRowCount, align 4
  %call344 = call i32 @sqlite3VdbeAddOp2(ptr noundef %266, i32 noundef 70, i32 noundef 0, i32 noundef %267)
  br label %if.end345

if.end345:                                        ; preds = %if.then341, %land.lhs.true338, %land.lhs.true335, %land.lhs.true333, %if.end327
  %268 = load ptr, ptr %pTab, align 8
  %tabFlags346 = getelementptr inbounds nuw %struct.Table, ptr %268, i32 0, i32 9
  %269 = load i32, ptr %tabFlags346, align 8
  %and347 = and i32 %269, 32
  %cmp348 = icmp eq i32 %and347, 0
  br i1 %cmp348, label %if.then350, label %if.else352

if.then350:                                       ; preds = %if.end345
  %270 = load ptr, ptr %v, align 8
  %271 = load i32, ptr %regRowSet, align 4
  %272 = load i32, ptr %regOldRowid, align 4
  %call351 = call i32 @sqlite3VdbeAddOp3(ptr noundef %270, i32 noundef 73, i32 noundef 0, i32 noundef %271, i32 noundef %272)
  br label %if.end372

if.else352:                                       ; preds = %if.end345
  %273 = load ptr, ptr %pPk, align 8
  %nKeyCol353 = getelementptr inbounds nuw %struct.Index, ptr %273, i32 0, i32 13
  %274 = load i16, ptr %nKeyCol353, align 2
  store i16 %274, ptr %nPk, align 2
  %275 = load ptr, ptr %pParse.addr, align 8
  %nMem354 = getelementptr inbounds nuw %struct.Parse, ptr %275, i32 0, i32 18
  %276 = load i32, ptr %nMem354, align 8
  %add355 = add nsw i32 %276, 1
  store i32 %add355, ptr %iPk, align 4
  %277 = load i16, ptr %nPk, align 2
  %conv356 = sext i16 %277 to i32
  %278 = load ptr, ptr %pParse.addr, align 8
  %nMem357 = getelementptr inbounds nuw %struct.Parse, ptr %278, i32 0, i32 18
  %279 = load i32, ptr %nMem357, align 8
  %add358 = add nsw i32 %279, %conv356
  store i32 %add358, ptr %nMem357, align 8
  %280 = load ptr, ptr %pParse.addr, align 8
  %nMem359 = getelementptr inbounds nuw %struct.Parse, ptr %280, i32 0, i32 18
  %281 = load i32, ptr %nMem359, align 8
  %inc360 = add nsw i32 %281, 1
  store i32 %inc360, ptr %nMem359, align 8
  store i32 %inc360, ptr %regKey, align 4
  %282 = load ptr, ptr %pUpsert.addr, align 8
  %cmp361 = icmp eq ptr %282, null
  br i1 %cmp361, label %if.then363, label %if.end371

if.then363:                                       ; preds = %if.else352
  %283 = load ptr, ptr %pParse.addr, align 8
  %nTab364 = getelementptr inbounds nuw %struct.Parse, ptr %283, i32 0, i32 17
  %284 = load i32, ptr %nTab364, align 4
  %inc365 = add nsw i32 %284, 1
  store i32 %inc365, ptr %nTab364, align 4
  store i32 %284, ptr %iEph, align 4
  %285 = load ptr, ptr %v, align 8
  %286 = load i32, ptr %iPk, align 4
  %287 = load i32, ptr %iPk, align 4
  %288 = load i16, ptr %nPk, align 2
  %conv366 = sext i16 %288 to i32
  %add367 = add nsw i32 %287, %conv366
  %sub = sub nsw i32 %add367, 1
  %call368 = call i32 @sqlite3VdbeAddOp3(ptr noundef %285, i32 noundef 73, i32 noundef 0, i32 noundef %286, i32 noundef %sub)
  %289 = load ptr, ptr %v, align 8
  %290 = load i32, ptr %iEph, align 4
  %291 = load i16, ptr %nPk, align 2
  %conv369 = sext i16 %291 to i32
  %call370 = call i32 @sqlite3VdbeAddOp2(ptr noundef %289, i32 noundef 112, i32 noundef %290, i32 noundef %conv369)
  store i32 %call370, ptr %addrOpen, align 4
  %292 = load ptr, ptr %pParse.addr, align 8
  %293 = load ptr, ptr %pPk, align 8
  call void @sqlite3VdbeSetP4KeyInfo(ptr noundef %292, ptr noundef %293)
  br label %if.end371

if.end371:                                        ; preds = %if.then363, %if.else352
  br label %if.end372

if.end372:                                        ; preds = %if.end371, %if.then350
  %294 = load ptr, ptr %pUpsert.addr, align 8
  %tobool373 = icmp ne ptr %294, null
  br i1 %tobool373, label %if.then374, label %if.else375

if.then374:                                       ; preds = %if.end372
  store ptr null, ptr %pWInfo, align 8
  store i32 1, ptr %eOnePass, align 4
  %295 = load ptr, ptr %pParse.addr, align 8
  %296 = load ptr, ptr %pWhere.addr, align 8
  %297 = load i32, ptr %labelBreak, align 4
  call void @sqlite3ExprIfFalse(ptr noundef %295, ptr noundef %296, i32 noundef %297, i32 noundef 16)
  br label %if.end417

if.else375:                                       ; preds = %if.end372
  store i32 4100, ptr %flags, align 4
  %298 = load ptr, ptr %pParse.addr, align 8
  %nested376 = getelementptr inbounds nuw %struct.Parse, ptr %298, i32 0, i32 6
  %299 = load i8, ptr %nested376, align 2
  %tobool377 = icmp ne i8 %299, 0
  br i1 %tobool377, label %if.end387, label %land.lhs.true378

land.lhs.true378:                                 ; preds = %if.else375
  %300 = load ptr, ptr %pTrigger, align 8
  %tobool379 = icmp ne ptr %300, null
  br i1 %tobool379, label %if.end387, label %land.lhs.true380

land.lhs.true380:                                 ; preds = %land.lhs.true378
  %301 = load i32, ptr %hasFK, align 4
  %tobool381 = icmp ne i32 %301, 0
  br i1 %tobool381, label %if.end387, label %land.lhs.true382

land.lhs.true382:                                 ; preds = %land.lhs.true380
  %302 = load i8, ptr %chngKey, align 1
  %tobool383 = icmp ne i8 %302, 0
  br i1 %tobool383, label %if.end387, label %land.lhs.true384

land.lhs.true384:                                 ; preds = %land.lhs.true382
  %303 = load i32, ptr %bReplace, align 4
  %tobool385 = icmp ne i32 %303, 0
  br i1 %tobool385, label %if.end387, label %if.then386

if.then386:                                       ; preds = %land.lhs.true384
  %304 = load i32, ptr %flags, align 4
  %or = or i32 %304, 8
  store i32 %or, ptr %flags, align 4
  br label %if.end387

if.end387:                                        ; preds = %if.then386, %land.lhs.true384, %land.lhs.true382, %land.lhs.true380, %land.lhs.true378, %if.else375
  %305 = load ptr, ptr %pParse.addr, align 8
  %306 = load ptr, ptr %pTabList.addr, align 8
  %307 = load ptr, ptr %pWhere.addr, align 8
  %308 = load i32, ptr %flags, align 4
  %conv388 = trunc i32 %308 to i16
  %309 = load i32, ptr %iIdxCur, align 4
  %call389 = call ptr @sqlite3WhereBegin(ptr noundef %305, ptr noundef %306, ptr noundef %307, ptr noundef null, ptr noundef null, i16 noundef zeroext %conv388, i32 noundef %309)
  store ptr %call389, ptr %pWInfo, align 8
  %310 = load ptr, ptr %pWInfo, align 8
  %cmp390 = icmp eq ptr %310, null
  br i1 %cmp390, label %if.then392, label %if.end393

if.then392:                                       ; preds = %if.end387
  br label %update_cleanup

if.end393:                                        ; preds = %if.end387
  %311 = load ptr, ptr %pWInfo, align 8
  %arraydecay = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %call394 = call i32 @sqlite3WhereOkOnePass(ptr noundef %311, ptr noundef %arraydecay)
  store i32 %call394, ptr %eOnePass, align 4
  %312 = load i32, ptr %eOnePass, align 4
  %cmp395 = icmp ne i32 %312, 1
  br i1 %cmp395, label %if.then397, label %if.end416

if.then397:                                       ; preds = %if.end393
  %313 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MultiWrite(ptr noundef %313)
  %314 = load i32, ptr %eOnePass, align 4
  %cmp398 = icmp eq i32 %314, 2
  br i1 %cmp398, label %if.then400, label %if.end415

if.then400:                                       ; preds = %if.then397
  %arrayidx401 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %315 = load i32, ptr %arrayidx401, align 4
  store i32 %315, ptr %iCur, align 4
  %316 = load i32, ptr %iCur, align 4
  %cmp402 = icmp sge i32 %316, 0
  br i1 %cmp402, label %land.lhs.true404, label %if.end414

land.lhs.true404:                                 ; preds = %if.then400
  %317 = load i32, ptr %iCur, align 4
  %318 = load i32, ptr %iDataCur, align 4
  %cmp405 = icmp ne i32 %317, %318
  br i1 %cmp405, label %land.lhs.true407, label %if.end414

land.lhs.true407:                                 ; preds = %land.lhs.true404
  %319 = load ptr, ptr %aToOpen, align 8
  %320 = load i32, ptr %iCur, align 4
  %321 = load i32, ptr %iBaseCur, align 4
  %sub408 = sub nsw i32 %320, %321
  %idxprom409 = sext i32 %sub408 to i64
  %arrayidx410 = getelementptr inbounds i8, ptr %319, i64 %idxprom409
  %322 = load i8, ptr %arrayidx410, align 1
  %conv411 = zext i8 %322 to i32
  %tobool412 = icmp ne i32 %conv411, 0
  br i1 %tobool412, label %if.then413, label %if.end414

if.then413:                                       ; preds = %land.lhs.true407
  store i32 0, ptr %eOnePass, align 4
  br label %if.end414

if.end414:                                        ; preds = %if.then413, %land.lhs.true407, %land.lhs.true404, %if.then400
  br label %if.end415

if.end415:                                        ; preds = %if.end414, %if.then397
  br label %if.end416

if.end416:                                        ; preds = %if.end415, %if.end393
  br label %if.end417

if.end417:                                        ; preds = %if.end416, %if.then374
  %323 = load ptr, ptr %pTab, align 8
  %tabFlags418 = getelementptr inbounds nuw %struct.Table, ptr %323, i32 0, i32 9
  %324 = load i32, ptr %tabFlags418, align 8
  %and419 = and i32 %324, 32
  %cmp420 = icmp eq i32 %and419, 0
  br i1 %cmp420, label %if.then422, label %if.else433

if.then422:                                       ; preds = %if.end417
  %325 = load ptr, ptr %v, align 8
  %326 = load i32, ptr %iDataCur, align 4
  %327 = load i32, ptr %regOldRowid, align 4
  %call423 = call i32 @sqlite3VdbeAddOp2(ptr noundef %325, i32 noundef 128, i32 noundef %326, i32 noundef %327)
  %328 = load i32, ptr %eOnePass, align 4
  %cmp424 = icmp eq i32 %328, 0
  br i1 %cmp424, label %if.then426, label %if.end432

if.then426:                                       ; preds = %if.then422
  %329 = load ptr, ptr %pParse.addr, align 8
  %nMem427 = getelementptr inbounds nuw %struct.Parse, ptr %329, i32 0, i32 18
  %330 = load i32, ptr %nMem427, align 8
  %inc428 = add nsw i32 %330, 1
  store i32 %inc428, ptr %nMem427, align 8
  %331 = load ptr, ptr %aRegIdx, align 8
  %332 = load i32, ptr %nAllIdx, align 4
  %idxprom429 = sext i32 %332 to i64
  %arrayidx430 = getelementptr inbounds i32, ptr %331, i64 %idxprom429
  store i32 %inc428, ptr %arrayidx430, align 4
  %333 = load ptr, ptr %v, align 8
  %334 = load i32, ptr %regRowSet, align 4
  %335 = load i32, ptr %regOldRowid, align 4
  %call431 = call i32 @sqlite3VdbeAddOp2(ptr noundef %333, i32 noundef 147, i32 noundef %334, i32 noundef %335)
  br label %if.end432

if.end432:                                        ; preds = %if.then426, %if.then422
  br label %if.end461

if.else433:                                       ; preds = %if.end417
  store i32 0, ptr %i, align 4
  br label %for.cond434

for.cond434:                                      ; preds = %for.inc443, %if.else433
  %336 = load i32, ptr %i, align 4
  %337 = load i16, ptr %nPk, align 2
  %conv435 = sext i16 %337 to i32
  %cmp436 = icmp slt i32 %336, %conv435
  br i1 %cmp436, label %for.body438, label %for.end445

for.body438:                                      ; preds = %for.cond434
  %338 = load ptr, ptr %v, align 8
  %339 = load ptr, ptr %pTab, align 8
  %340 = load i32, ptr %iDataCur, align 4
  %341 = load ptr, ptr %pPk, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %341, i32 0, i32 1
  %342 = load ptr, ptr %aiColumn, align 8
  %343 = load i32, ptr %i, align 4
  %idxprom439 = sext i32 %343 to i64
  %arrayidx440 = getelementptr inbounds i16, ptr %342, i64 %idxprom439
  %344 = load i16, ptr %arrayidx440, align 2
  %conv441 = sext i16 %344 to i32
  %345 = load i32, ptr %iPk, align 4
  %346 = load i32, ptr %i, align 4
  %add442 = add nsw i32 %345, %346
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %338, ptr noundef %339, i32 noundef %340, i32 noundef %conv441, i32 noundef %add442)
  br label %for.inc443

for.inc443:                                       ; preds = %for.body438
  %347 = load i32, ptr %i, align 4
  %inc444 = add nsw i32 %347, 1
  store i32 %inc444, ptr %i, align 4
  br label %for.cond434, !llvm.loop !13

for.end445:                                       ; preds = %for.cond434
  %348 = load i32, ptr %eOnePass, align 4
  %tobool446 = icmp ne i32 %348, 0
  br i1 %tobool446, label %if.then447, label %if.else453

if.then447:                                       ; preds = %for.end445
  %349 = load i32, ptr %addrOpen, align 4
  %tobool448 = icmp ne i32 %349, 0
  br i1 %tobool448, label %if.then449, label %if.end451

if.then449:                                       ; preds = %if.then447
  %350 = load ptr, ptr %v, align 8
  %351 = load i32, ptr %addrOpen, align 4
  %call450 = call i32 @sqlite3VdbeChangeToNoop(ptr noundef %350, i32 noundef %351)
  br label %if.end451

if.end451:                                        ; preds = %if.then449, %if.then447
  %352 = load i16, ptr %nPk, align 2
  %conv452 = sext i16 %352 to i32
  store i32 %conv452, ptr %nKey, align 4
  %353 = load i32, ptr %iPk, align 4
  store i32 %353, ptr %regKey, align 4
  br label %if.end460

if.else453:                                       ; preds = %for.end445
  %354 = load ptr, ptr %v, align 8
  %355 = load i32, ptr %iPk, align 4
  %356 = load i16, ptr %nPk, align 2
  %conv454 = sext i16 %356 to i32
  %357 = load i32, ptr %regKey, align 4
  %358 = load ptr, ptr %db, align 8
  %359 = load ptr, ptr %pPk, align 8
  %call455 = call ptr @sqlite3IndexAffinityStr(ptr noundef %358, ptr noundef %359)
  %360 = load i16, ptr %nPk, align 2
  %conv456 = sext i16 %360 to i32
  %call457 = call i32 @sqlite3VdbeAddOp4(ptr noundef %354, i32 noundef 92, i32 noundef %355, i32 noundef %conv454, i32 noundef %357, ptr noundef %call455, i32 noundef %conv456)
  %361 = load ptr, ptr %v, align 8
  %362 = load i32, ptr %iEph, align 4
  %363 = load i32, ptr %regKey, align 4
  %364 = load i32, ptr %iPk, align 4
  %365 = load i16, ptr %nPk, align 2
  %conv458 = sext i16 %365 to i32
  %call459 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %361, i32 noundef 132, i32 noundef %362, i32 noundef %363, i32 noundef %364, i32 noundef %conv458)
  br label %if.end460

if.end460:                                        ; preds = %if.else453, %if.end451
  br label %if.end461

if.end461:                                        ; preds = %if.end460, %if.end432
  %366 = load ptr, ptr %pUpsert.addr, align 8
  %cmp462 = icmp eq ptr %366, null
  br i1 %cmp462, label %if.then464, label %if.end548

if.then464:                                       ; preds = %if.end461
  %367 = load i32, ptr %eOnePass, align 4
  %cmp465 = icmp ne i32 %367, 2
  br i1 %cmp465, label %if.then467, label %if.end468

if.then467:                                       ; preds = %if.then464
  %368 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %368)
  br label %if.end468

if.end468:                                        ; preds = %if.then467, %if.then464
  %369 = load i32, ptr %isView, align 4
  %tobool469 = icmp ne i32 %369, 0
  br i1 %tobool469, label %if.end509, label %if.then470

if.then470:                                       ; preds = %if.end468
  store i32 0, ptr %addrOnce, align 4
  %370 = load i32, ptr %eOnePass, align 4
  %cmp471 = icmp ne i32 %370, 0
  br i1 %cmp471, label %if.then473, label %if.end492

if.then473:                                       ; preds = %if.then470
  %arrayidx474 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %371 = load i32, ptr %arrayidx474, align 4
  %cmp475 = icmp sge i32 %371, 0
  br i1 %cmp475, label %if.then477, label %if.end482

if.then477:                                       ; preds = %if.then473
  %372 = load ptr, ptr %aToOpen, align 8
  %arrayidx478 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %373 = load i32, ptr %arrayidx478, align 4
  %374 = load i32, ptr %iBaseCur, align 4
  %sub479 = sub nsw i32 %373, %374
  %idxprom480 = sext i32 %sub479 to i64
  %arrayidx481 = getelementptr inbounds i8, ptr %372, i64 %idxprom480
  store i8 0, ptr %arrayidx481, align 1
  br label %if.end482

if.end482:                                        ; preds = %if.then477, %if.then473
  %arrayidx483 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %375 = load i32, ptr %arrayidx483, align 4
  %cmp484 = icmp sge i32 %375, 0
  br i1 %cmp484, label %if.then486, label %if.end491

if.then486:                                       ; preds = %if.end482
  %376 = load ptr, ptr %aToOpen, align 8
  %arrayidx487 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %377 = load i32, ptr %arrayidx487, align 4
  %378 = load i32, ptr %iBaseCur, align 4
  %sub488 = sub nsw i32 %377, %378
  %idxprom489 = sext i32 %sub488 to i64
  %arrayidx490 = getelementptr inbounds i8, ptr %376, i64 %idxprom489
  store i8 0, ptr %arrayidx490, align 1
  br label %if.end491

if.end491:                                        ; preds = %if.then486, %if.end482
  br label %if.end492

if.end492:                                        ; preds = %if.end491, %if.then470
  %379 = load i32, ptr %eOnePass, align 4
  %cmp493 = icmp eq i32 %379, 2
  br i1 %cmp493, label %land.lhs.true495, label %if.end504

land.lhs.true495:                                 ; preds = %if.end492
  %380 = load i32, ptr %nIdx, align 4
  %arrayidx496 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %381 = load i32, ptr %arrayidx496, align 4
  %cmp497 = icmp sge i32 %381, 0
  %conv498 = zext i1 %cmp497 to i32
  %sub499 = sub nsw i32 %380, %conv498
  %cmp500 = icmp sgt i32 %sub499, 0
  br i1 %cmp500, label %if.then502, label %if.end504

if.then502:                                       ; preds = %land.lhs.true495
  %382 = load ptr, ptr %v, align 8
  %call503 = call i32 @sqlite3VdbeAddOp0(ptr noundef %382, i32 noundef 17)
  store i32 %call503, ptr %addrOnce, align 4
  br label %if.end504

if.end504:                                        ; preds = %if.then502, %land.lhs.true495, %if.end492
  %383 = load ptr, ptr %pParse.addr, align 8
  %384 = load ptr, ptr %pTab, align 8
  %385 = load i32, ptr %iBaseCur, align 4
  %386 = load ptr, ptr %aToOpen, align 8
  %call505 = call i32 @sqlite3OpenTableAndIndices(ptr noundef %383, ptr noundef %384, i32 noundef 98, i8 noundef zeroext 0, i32 noundef %385, ptr noundef %386, ptr noundef null, ptr noundef null)
  %387 = load i32, ptr %addrOnce, align 4
  %tobool506 = icmp ne i32 %387, 0
  br i1 %tobool506, label %if.then507, label %if.end508

if.then507:                                       ; preds = %if.end504
  %388 = load ptr, ptr %v, align 8
  %389 = load i32, ptr %addrOnce, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %388, i32 noundef %389)
  br label %if.end508

if.end508:                                        ; preds = %if.then507, %if.end504
  br label %if.end509

if.end509:                                        ; preds = %if.end508, %if.end468
  %390 = load i32, ptr %eOnePass, align 4
  %cmp510 = icmp ne i32 %390, 0
  br i1 %cmp510, label %if.then512, label %if.else536

if.then512:                                       ; preds = %if.end509
  %391 = load i32, ptr %isView, align 4
  %tobool513 = icmp ne i32 %391, 0
  br i1 %tobool513, label %if.end524, label %land.lhs.true514

land.lhs.true514:                                 ; preds = %if.then512
  %arrayidx515 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 0
  %392 = load i32, ptr %arrayidx515, align 4
  %393 = load i32, ptr %iDataCur, align 4
  %cmp516 = icmp ne i32 %392, %393
  br i1 %cmp516, label %land.lhs.true518, label %if.end524

land.lhs.true518:                                 ; preds = %land.lhs.true514
  %arrayidx519 = getelementptr inbounds [2 x i32], ptr %aiCurOnePass, i64 0, i64 1
  %394 = load i32, ptr %arrayidx519, align 4
  %395 = load i32, ptr %iDataCur, align 4
  %cmp520 = icmp ne i32 %394, %395
  br i1 %cmp520, label %if.then522, label %if.end524

if.then522:                                       ; preds = %land.lhs.true518
  %396 = load ptr, ptr %v, align 8
  %397 = load i32, ptr %iDataCur, align 4
  %398 = load i32, ptr %labelBreak, align 4
  %399 = load i32, ptr %regKey, align 4
  %400 = load i32, ptr %nKey, align 4
  %call523 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %396, i32 noundef 28, i32 noundef %397, i32 noundef %398, i32 noundef %399, i32 noundef %400)
  br label %if.end524

if.end524:                                        ; preds = %if.then522, %land.lhs.true518, %land.lhs.true514, %if.then512
  %401 = load i32, ptr %eOnePass, align 4
  %cmp525 = icmp ne i32 %401, 1
  br i1 %cmp525, label %if.then527, label %if.end529

if.then527:                                       ; preds = %if.end524
  %402 = load ptr, ptr %pParse.addr, align 8
  %call528 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %402)
  store i32 %call528, ptr %labelContinue, align 4
  br label %if.end529

if.end529:                                        ; preds = %if.then527, %if.end524
  %403 = load ptr, ptr %v, align 8
  %404 = load ptr, ptr %pPk, align 8
  %tobool530 = icmp ne ptr %404, null
  br i1 %tobool530, label %cond.true531, label %cond.false532

cond.true531:                                     ; preds = %if.end529
  %405 = load i32, ptr %regKey, align 4
  br label %cond.end533

cond.false532:                                    ; preds = %if.end529
  %406 = load i32, ptr %regOldRowid, align 4
  br label %cond.end533

cond.end533:                                      ; preds = %cond.false532, %cond.true531
  %cond534 = phi i32 [ %405, %cond.true531 ], [ %406, %cond.false532 ]
  %407 = load i32, ptr %labelBreak, align 4
  %call535 = call i32 @sqlite3VdbeAddOp2(ptr noundef %403, i32 noundef 50, i32 noundef %cond534, i32 noundef %407)
  br label %if.end547

if.else536:                                       ; preds = %if.end509
  %408 = load ptr, ptr %pPk, align 8
  %tobool537 = icmp ne ptr %408, null
  br i1 %tobool537, label %if.then538, label %if.else543

if.then538:                                       ; preds = %if.else536
  %409 = load ptr, ptr %pParse.addr, align 8
  %call539 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %409)
  store i32 %call539, ptr %labelContinue, align 4
  %410 = load ptr, ptr %v, align 8
  %411 = load i32, ptr %iEph, align 4
  %412 = load i32, ptr %labelBreak, align 4
  %call540 = call i32 @sqlite3VdbeAddOp2(ptr noundef %410, i32 noundef 36, i32 noundef %411, i32 noundef %412)
  %413 = load ptr, ptr %v, align 8
  %414 = load i32, ptr %iEph, align 4
  %415 = load i32, ptr %regKey, align 4
  %call541 = call i32 @sqlite3VdbeAddOp2(ptr noundef %413, i32 noundef 127, i32 noundef %414, i32 noundef %415)
  store i32 %call541, ptr %addrTop, align 4
  %416 = load ptr, ptr %v, align 8
  %417 = load i32, ptr %iDataCur, align 4
  %418 = load i32, ptr %labelContinue, align 4
  %419 = load i32, ptr %regKey, align 4
  %call542 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %416, i32 noundef 28, i32 noundef %417, i32 noundef %418, i32 noundef %419, i32 noundef 0)
  br label %if.end546

if.else543:                                       ; preds = %if.else536
  %420 = load ptr, ptr %v, align 8
  %421 = load i32, ptr %regRowSet, align 4
  %422 = load i32, ptr %labelBreak, align 4
  %423 = load i32, ptr %regOldRowid, align 4
  %call544 = call i32 @sqlite3VdbeAddOp3(ptr noundef %420, i32 noundef 41, i32 noundef %421, i32 noundef %422, i32 noundef %423)
  store i32 %call544, ptr %labelContinue, align 4
  %424 = load ptr, ptr %v, align 8
  %425 = load i32, ptr %iDataCur, align 4
  %426 = load i32, ptr %labelContinue, align 4
  %427 = load i32, ptr %regOldRowid, align 4
  %call545 = call i32 @sqlite3VdbeAddOp3(ptr noundef %424, i32 noundef 31, i32 noundef %425, i32 noundef %426, i32 noundef %427)
  br label %if.end546

if.end546:                                        ; preds = %if.else543, %if.then538
  br label %if.end547

if.end547:                                        ; preds = %if.end546, %cond.end533
  br label %if.end548

if.end548:                                        ; preds = %if.end547, %if.end461
  %428 = load i8, ptr %chngRowid, align 1
  %tobool549 = icmp ne i8 %428, 0
  br i1 %tobool549, label %if.then550, label %if.end552

if.then550:                                       ; preds = %if.end548
  %429 = load ptr, ptr %pParse.addr, align 8
  %430 = load ptr, ptr %pRowidExpr, align 8
  %431 = load i32, ptr %regNewRowid, align 4
  call void @sqlite3ExprCode(ptr noundef %429, ptr noundef %430, i32 noundef %431)
  %432 = load ptr, ptr %v, align 8
  %433 = load i32, ptr %regNewRowid, align 4
  %call551 = call i32 @sqlite3VdbeAddOp1(ptr noundef %432, i32 noundef 15, i32 noundef %433)
  br label %if.end552

if.end552:                                        ; preds = %if.then550, %if.end548
  %434 = load i8, ptr %chngPk, align 1
  %conv553 = zext i8 %434 to i32
  %tobool554 = icmp ne i32 %conv553, 0
  br i1 %tobool554, label %if.then559, label %lor.lhs.false555

lor.lhs.false555:                                 ; preds = %if.end552
  %435 = load i32, ptr %hasFK, align 4
  %tobool556 = icmp ne i32 %435, 0
  br i1 %tobool556, label %if.then559, label %lor.lhs.false557

lor.lhs.false557:                                 ; preds = %lor.lhs.false555
  %436 = load ptr, ptr %pTrigger, align 8
  %tobool558 = icmp ne ptr %436, null
  br i1 %tobool558, label %if.then559, label %if.end610

if.then559:                                       ; preds = %lor.lhs.false557, %lor.lhs.false555, %if.end552
  %437 = load i32, ptr %hasFK, align 4
  %tobool560 = icmp ne i32 %437, 0
  br i1 %tobool560, label %cond.true561, label %cond.false563

cond.true561:                                     ; preds = %if.then559
  %438 = load ptr, ptr %pParse.addr, align 8
  %439 = load ptr, ptr %pTab, align 8
  %call562 = call i32 @sqlite3FkOldmask(ptr noundef %438, ptr noundef %439)
  br label %cond.end564

cond.false563:                                    ; preds = %if.then559
  br label %cond.end564

cond.end564:                                      ; preds = %cond.false563, %cond.true561
  %cond565 = phi i32 [ %call562, %cond.true561 ], [ 0, %cond.false563 ]
  store i32 %cond565, ptr %oldmask, align 4
  %440 = load ptr, ptr %pParse.addr, align 8
  %441 = load ptr, ptr %pTrigger, align 8
  %442 = load ptr, ptr %pChanges.addr, align 8
  %443 = load ptr, ptr %pTab, align 8
  %444 = load i32, ptr %onError.addr, align 4
  %call566 = call i32 @sqlite3TriggerColmask(ptr noundef %440, ptr noundef %441, ptr noundef %442, i32 noundef 0, i32 noundef 3, ptr noundef %443, i32 noundef %444)
  %445 = load i32, ptr %oldmask, align 4
  %or567 = or i32 %445, %call566
  store i32 %or567, ptr %oldmask, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond568

for.cond568:                                      ; preds = %for.inc598, %cond.end564
  %446 = load i32, ptr %i, align 4
  %447 = load ptr, ptr %pTab, align 8
  %nCol569 = getelementptr inbounds nuw %struct.Table, ptr %447, i32 0, i32 11
  %448 = load i16, ptr %nCol569, align 2
  %conv570 = sext i16 %448 to i32
  %cmp571 = icmp slt i32 %446, %conv570
  br i1 %cmp571, label %for.body573, label %for.end600

for.body573:                                      ; preds = %for.cond568
  %449 = load i32, ptr %oldmask, align 4
  %cmp574 = icmp eq i32 %449, -1
  br i1 %cmp574, label %if.then592, label %lor.lhs.false576

lor.lhs.false576:                                 ; preds = %for.body573
  %450 = load i32, ptr %i, align 4
  %cmp577 = icmp slt i32 %450, 32
  br i1 %cmp577, label %land.lhs.true579, label %lor.lhs.false583

land.lhs.true579:                                 ; preds = %lor.lhs.false576
  %451 = load i32, ptr %oldmask, align 4
  %452 = load i32, ptr %i, align 4
  %shl = shl i32 1, %452
  %and580 = and i32 %451, %shl
  %cmp581 = icmp ne i32 %and580, 0
  br i1 %cmp581, label %if.then592, label %lor.lhs.false583

lor.lhs.false583:                                 ; preds = %land.lhs.true579, %lor.lhs.false576
  %453 = load ptr, ptr %pTab, align 8
  %aCol584 = getelementptr inbounds nuw %struct.Table, ptr %453, i32 0, i32 1
  %454 = load ptr, ptr %aCol584, align 8
  %455 = load i32, ptr %i, align 4
  %idxprom585 = sext i32 %455 to i64
  %arrayidx586 = getelementptr inbounds %struct.Column, ptr %454, i64 %idxprom585
  %colFlags587 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx586, i32 0, i32 6
  %456 = load i8, ptr %colFlags587, align 1
  %conv588 = zext i8 %456 to i32
  %and589 = and i32 %conv588, 1
  %cmp590 = icmp ne i32 %and589, 0
  br i1 %cmp590, label %if.then592, label %if.else594

if.then592:                                       ; preds = %lor.lhs.false583, %land.lhs.true579, %for.body573
  %457 = load ptr, ptr %v, align 8
  %458 = load ptr, ptr %pTab, align 8
  %459 = load i32, ptr %iDataCur, align 4
  %460 = load i32, ptr %i, align 4
  %461 = load i32, ptr %regOld, align 4
  %462 = load i32, ptr %i, align 4
  %add593 = add nsw i32 %461, %462
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %457, ptr noundef %458, i32 noundef %459, i32 noundef %460, i32 noundef %add593)
  br label %if.end597

if.else594:                                       ; preds = %lor.lhs.false583
  %463 = load ptr, ptr %v, align 8
  %464 = load i32, ptr %regOld, align 4
  %465 = load i32, ptr %i, align 4
  %add595 = add nsw i32 %464, %465
  %call596 = call i32 @sqlite3VdbeAddOp2(ptr noundef %463, i32 noundef 73, i32 noundef 0, i32 noundef %add595)
  br label %if.end597

if.end597:                                        ; preds = %if.else594, %if.then592
  br label %for.inc598

for.inc598:                                       ; preds = %if.end597
  %466 = load i32, ptr %i, align 4
  %inc599 = add nsw i32 %466, 1
  store i32 %inc599, ptr %i, align 4
  br label %for.cond568, !llvm.loop !14

for.end600:                                       ; preds = %for.cond568
  %467 = load i8, ptr %chngRowid, align 1
  %conv601 = zext i8 %467 to i32
  %cmp602 = icmp eq i32 %conv601, 0
  br i1 %cmp602, label %land.lhs.true604, label %if.end609

land.lhs.true604:                                 ; preds = %for.end600
  %468 = load ptr, ptr %pPk, align 8
  %cmp605 = icmp eq ptr %468, null
  br i1 %cmp605, label %if.then607, label %if.end609

if.then607:                                       ; preds = %land.lhs.true604
  %469 = load ptr, ptr %v, align 8
  %470 = load i32, ptr %regOldRowid, align 4
  %471 = load i32, ptr %regNewRowid, align 4
  %call608 = call i32 @sqlite3VdbeAddOp2(ptr noundef %469, i32 noundef 78, i32 noundef %470, i32 noundef %471)
  br label %if.end609

if.end609:                                        ; preds = %if.then607, %land.lhs.true604, %for.end600
  br label %if.end610

if.end610:                                        ; preds = %if.end609, %lor.lhs.false557
  %472 = load ptr, ptr %pParse.addr, align 8
  %473 = load ptr, ptr %pTrigger, align 8
  %474 = load ptr, ptr %pChanges.addr, align 8
  %475 = load ptr, ptr %pTab, align 8
  %476 = load i32, ptr %onError.addr, align 4
  %call611 = call i32 @sqlite3TriggerColmask(ptr noundef %472, ptr noundef %473, ptr noundef %474, i32 noundef 1, i32 noundef 1, ptr noundef %475, i32 noundef %476)
  store i32 %call611, ptr %newmask, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond612

for.cond612:                                      ; preds = %for.inc655, %if.end610
  %477 = load i32, ptr %i, align 4
  %478 = load ptr, ptr %pTab, align 8
  %nCol613 = getelementptr inbounds nuw %struct.Table, ptr %478, i32 0, i32 11
  %479 = load i16, ptr %nCol613, align 2
  %conv614 = sext i16 %479 to i32
  %cmp615 = icmp slt i32 %477, %conv614
  br i1 %cmp615, label %for.body617, label %for.end657

for.body617:                                      ; preds = %for.cond612
  %480 = load i32, ptr %i, align 4
  %481 = load ptr, ptr %pTab, align 8
  %iPKey618 = getelementptr inbounds nuw %struct.Table, ptr %481, i32 0, i32 10
  %482 = load i16, ptr %iPKey618, align 4
  %conv619 = sext i16 %482 to i32
  %cmp620 = icmp eq i32 %480, %conv619
  br i1 %cmp620, label %if.then622, label %if.else625

if.then622:                                       ; preds = %for.body617
  %483 = load ptr, ptr %v, align 8
  %484 = load i32, ptr %regNew, align 4
  %485 = load i32, ptr %i, align 4
  %add623 = add nsw i32 %484, %485
  %call624 = call i32 @sqlite3VdbeAddOp2(ptr noundef %483, i32 noundef 73, i32 noundef 0, i32 noundef %add623)
  br label %if.end654

if.else625:                                       ; preds = %for.body617
  %486 = load ptr, ptr %aXRef, align 8
  %487 = load i32, ptr %i, align 4
  %idxprom626 = sext i32 %487 to i64
  %arrayidx627 = getelementptr inbounds i32, ptr %486, i64 %idxprom626
  %488 = load i32, ptr %arrayidx627, align 4
  store i32 %488, ptr %j, align 4
  %489 = load i32, ptr %j, align 4
  %cmp628 = icmp sge i32 %489, 0
  br i1 %cmp628, label %if.then630, label %if.else636

if.then630:                                       ; preds = %if.else625
  %490 = load ptr, ptr %pParse.addr, align 8
  %491 = load ptr, ptr %pChanges.addr, align 8
  %a631 = getelementptr inbounds nuw %struct.ExprList, ptr %491, i32 0, i32 1
  %492 = load i32, ptr %j, align 4
  %idxprom632 = sext i32 %492 to i64
  %arrayidx633 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a631, i64 0, i64 %idxprom632
  %pExpr634 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx633, i32 0, i32 0
  %493 = load ptr, ptr %pExpr634, align 8
  %494 = load i32, ptr %regNew, align 4
  %495 = load i32, ptr %i, align 4
  %add635 = add nsw i32 %494, %495
  call void @sqlite3ExprCode(ptr noundef %490, ptr noundef %493, i32 noundef %add635)
  br label %if.end653

if.else636:                                       ; preds = %if.else625
  %496 = load i32, ptr %tmask, align 4
  %and637 = and i32 %496, 1
  %cmp638 = icmp eq i32 0, %and637
  br i1 %cmp638, label %if.then647, label %lor.lhs.false640

lor.lhs.false640:                                 ; preds = %if.else636
  %497 = load i32, ptr %i, align 4
  %cmp641 = icmp sgt i32 %497, 31
  br i1 %cmp641, label %if.then647, label %lor.lhs.false643

lor.lhs.false643:                                 ; preds = %lor.lhs.false640
  %498 = load i32, ptr %newmask, align 4
  %499 = load i32, ptr %i, align 4
  %shl644 = shl i32 1, %499
  %and645 = and i32 %498, %shl644
  %tobool646 = icmp ne i32 %and645, 0
  br i1 %tobool646, label %if.then647, label %if.else649

if.then647:                                       ; preds = %lor.lhs.false643, %lor.lhs.false640, %if.else636
  %500 = load ptr, ptr %v, align 8
  %501 = load ptr, ptr %pTab, align 8
  %502 = load i32, ptr %iDataCur, align 4
  %503 = load i32, ptr %i, align 4
  %504 = load i32, ptr %regNew, align 4
  %505 = load i32, ptr %i, align 4
  %add648 = add nsw i32 %504, %505
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %500, ptr noundef %501, i32 noundef %502, i32 noundef %503, i32 noundef %add648)
  br label %if.end652

if.else649:                                       ; preds = %lor.lhs.false643
  %506 = load ptr, ptr %v, align 8
  %507 = load i32, ptr %regNew, align 4
  %508 = load i32, ptr %i, align 4
  %add650 = add nsw i32 %507, %508
  %call651 = call i32 @sqlite3VdbeAddOp2(ptr noundef %506, i32 noundef 73, i32 noundef 0, i32 noundef %add650)
  br label %if.end652

if.end652:                                        ; preds = %if.else649, %if.then647
  br label %if.end653

if.end653:                                        ; preds = %if.end652, %if.then630
  br label %if.end654

if.end654:                                        ; preds = %if.end653, %if.then622
  br label %for.inc655

for.inc655:                                       ; preds = %if.end654
  %509 = load i32, ptr %i, align 4
  %inc656 = add nsw i32 %509, 1
  store i32 %inc656, ptr %i, align 4
  br label %for.cond612, !llvm.loop !15

for.end657:                                       ; preds = %for.cond612
  %510 = load i32, ptr %tmask, align 4
  %and658 = and i32 %510, 1
  %tobool659 = icmp ne i32 %and658, 0
  br i1 %tobool659, label %if.then660, label %if.end688

if.then660:                                       ; preds = %for.end657
  %511 = load ptr, ptr %v, align 8
  %512 = load ptr, ptr %pTab, align 8
  %513 = load i32, ptr %regNew, align 4
  call void @sqlite3TableAffinity(ptr noundef %511, ptr noundef %512, i32 noundef %513)
  %514 = load ptr, ptr %pParse.addr, align 8
  %515 = load ptr, ptr %pTrigger, align 8
  %516 = load ptr, ptr %pChanges.addr, align 8
  %517 = load ptr, ptr %pTab, align 8
  %518 = load i32, ptr %regOldRowid, align 4
  %519 = load i32, ptr %onError.addr, align 4
  %520 = load i32, ptr %labelContinue, align 4
  call void @sqlite3CodeRowTrigger(ptr noundef %514, ptr noundef %515, i32 noundef 125, ptr noundef %516, i32 noundef 1, ptr noundef %517, i32 noundef %518, i32 noundef %519, i32 noundef %520)
  %521 = load ptr, ptr %pPk, align 8
  %tobool661 = icmp ne ptr %521, null
  br i1 %tobool661, label %if.then662, label %if.else664

if.then662:                                       ; preds = %if.then660
  %522 = load ptr, ptr %v, align 8
  %523 = load i32, ptr %iDataCur, align 4
  %524 = load i32, ptr %labelContinue, align 4
  %525 = load i32, ptr %regKey, align 4
  %526 = load i32, ptr %nKey, align 4
  %call663 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %522, i32 noundef 28, i32 noundef %523, i32 noundef %524, i32 noundef %525, i32 noundef %526)
  br label %if.end666

if.else664:                                       ; preds = %if.then660
  %527 = load ptr, ptr %v, align 8
  %528 = load i32, ptr %iDataCur, align 4
  %529 = load i32, ptr %labelContinue, align 4
  %530 = load i32, ptr %regOldRowid, align 4
  %call665 = call i32 @sqlite3VdbeAddOp3(ptr noundef %527, i32 noundef 31, i32 noundef %528, i32 noundef %529, i32 noundef %530)
  br label %if.end666

if.end666:                                        ; preds = %if.else664, %if.then662
  store i32 0, ptr %i, align 4
  br label %for.cond667

for.cond667:                                      ; preds = %for.inc685, %if.end666
  %531 = load i32, ptr %i, align 4
  %532 = load ptr, ptr %pTab, align 8
  %nCol668 = getelementptr inbounds nuw %struct.Table, ptr %532, i32 0, i32 11
  %533 = load i16, ptr %nCol668, align 2
  %conv669 = sext i16 %533 to i32
  %cmp670 = icmp slt i32 %531, %conv669
  br i1 %cmp670, label %for.body672, label %for.end687

for.body672:                                      ; preds = %for.cond667
  %534 = load ptr, ptr %aXRef, align 8
  %535 = load i32, ptr %i, align 4
  %idxprom673 = sext i32 %535 to i64
  %arrayidx674 = getelementptr inbounds i32, ptr %534, i64 %idxprom673
  %536 = load i32, ptr %arrayidx674, align 4
  %cmp675 = icmp slt i32 %536, 0
  br i1 %cmp675, label %land.lhs.true677, label %if.end684

land.lhs.true677:                                 ; preds = %for.body672
  %537 = load i32, ptr %i, align 4
  %538 = load ptr, ptr %pTab, align 8
  %iPKey678 = getelementptr inbounds nuw %struct.Table, ptr %538, i32 0, i32 10
  %539 = load i16, ptr %iPKey678, align 4
  %conv679 = sext i16 %539 to i32
  %cmp680 = icmp ne i32 %537, %conv679
  br i1 %cmp680, label %if.then682, label %if.end684

if.then682:                                       ; preds = %land.lhs.true677
  %540 = load ptr, ptr %v, align 8
  %541 = load ptr, ptr %pTab, align 8
  %542 = load i32, ptr %iDataCur, align 4
  %543 = load i32, ptr %i, align 4
  %544 = load i32, ptr %regNew, align 4
  %545 = load i32, ptr %i, align 4
  %add683 = add nsw i32 %544, %545
  call void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %540, ptr noundef %541, i32 noundef %542, i32 noundef %543, i32 noundef %add683)
  br label %if.end684

if.end684:                                        ; preds = %if.then682, %land.lhs.true677, %for.body672
  br label %for.inc685

for.inc685:                                       ; preds = %if.end684
  %546 = load i32, ptr %i, align 4
  %inc686 = add nsw i32 %546, 1
  store i32 %inc686, ptr %i, align 4
  br label %for.cond667, !llvm.loop !16

for.end687:                                       ; preds = %for.cond667
  br label %if.end688

if.end688:                                        ; preds = %for.end687, %for.end657
  %547 = load i32, ptr %isView, align 4
  %tobool689 = icmp ne i32 %547, 0
  br i1 %tobool689, label %if.end728, label %if.then690

if.then690:                                       ; preds = %if.end688
  %548 = load ptr, ptr %pParse.addr, align 8
  %549 = load ptr, ptr %pTab, align 8
  %550 = load ptr, ptr %aRegIdx, align 8
  %551 = load i32, ptr %iDataCur, align 4
  %552 = load i32, ptr %iIdxCur, align 4
  %553 = load i32, ptr %regNewRowid, align 4
  %554 = load i32, ptr %regOldRowid, align 4
  %555 = load i8, ptr %chngKey, align 1
  %556 = load i32, ptr %onError.addr, align 4
  %conv691 = trunc i32 %556 to i8
  %557 = load i32, ptr %labelContinue, align 4
  %558 = load ptr, ptr %aXRef, align 8
  call void @sqlite3GenerateConstraintChecks(ptr noundef %548, ptr noundef %549, ptr noundef %550, i32 noundef %551, i32 noundef %552, i32 noundef %553, i32 noundef %554, i8 noundef zeroext %555, i8 noundef zeroext %conv691, i32 noundef %557, ptr noundef %bReplace, ptr noundef %558, ptr noundef null)
  %559 = load i32, ptr %bReplace, align 4
  %tobool692 = icmp ne i32 %559, 0
  br i1 %tobool692, label %if.then696, label %lor.lhs.false693

lor.lhs.false693:                                 ; preds = %if.then690
  %560 = load i8, ptr %chngKey, align 1
  %conv694 = zext i8 %560 to i32
  %tobool695 = icmp ne i32 %conv694, 0
  br i1 %tobool695, label %if.then696, label %if.end703

if.then696:                                       ; preds = %lor.lhs.false693, %if.then690
  %561 = load ptr, ptr %pPk, align 8
  %tobool697 = icmp ne ptr %561, null
  br i1 %tobool697, label %if.then698, label %if.else700

if.then698:                                       ; preds = %if.then696
  %562 = load ptr, ptr %v, align 8
  %563 = load i32, ptr %iDataCur, align 4
  %564 = load i32, ptr %labelContinue, align 4
  %565 = load i32, ptr %regKey, align 4
  %566 = load i32, ptr %nKey, align 4
  %call699 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %562, i32 noundef 28, i32 noundef %563, i32 noundef %564, i32 noundef %565, i32 noundef %566)
  br label %if.end702

if.else700:                                       ; preds = %if.then696
  %567 = load ptr, ptr %v, align 8
  %568 = load i32, ptr %iDataCur, align 4
  %569 = load i32, ptr %labelContinue, align 4
  %570 = load i32, ptr %regOldRowid, align 4
  %call701 = call i32 @sqlite3VdbeAddOp3(ptr noundef %567, i32 noundef 31, i32 noundef %568, i32 noundef %569, i32 noundef %570)
  br label %if.end702

if.end702:                                        ; preds = %if.else700, %if.then698
  br label %if.end703

if.end703:                                        ; preds = %if.end702, %lor.lhs.false693
  %571 = load i32, ptr %hasFK, align 4
  %tobool704 = icmp ne i32 %571, 0
  br i1 %tobool704, label %if.then705, label %if.end707

if.then705:                                       ; preds = %if.end703
  %572 = load ptr, ptr %pParse.addr, align 8
  %573 = load ptr, ptr %pTab, align 8
  %574 = load i32, ptr %regOldRowid, align 4
  %575 = load ptr, ptr %aXRef, align 8
  %576 = load i8, ptr %chngKey, align 1
  %conv706 = zext i8 %576 to i32
  call void @sqlite3FkCheck(ptr noundef %572, ptr noundef %573, i32 noundef %574, i32 noundef 0, ptr noundef %575, i32 noundef %conv706)
  br label %if.end707

if.end707:                                        ; preds = %if.then705, %if.end703
  %577 = load ptr, ptr %pParse.addr, align 8
  %578 = load ptr, ptr %pTab, align 8
  %579 = load i32, ptr %iDataCur, align 4
  %580 = load i32, ptr %iIdxCur, align 4
  %581 = load ptr, ptr %aRegIdx, align 8
  call void @sqlite3GenerateRowIndexDelete(ptr noundef %577, ptr noundef %578, i32 noundef %579, i32 noundef %580, ptr noundef %581, i32 noundef -1)
  %582 = load i32, ptr %hasFK, align 4
  %cmp708 = icmp sgt i32 %582, 1
  br i1 %cmp708, label %if.then713, label %lor.lhs.false710

lor.lhs.false710:                                 ; preds = %if.end707
  %583 = load i8, ptr %chngKey, align 1
  %conv711 = zext i8 %583 to i32
  %tobool712 = icmp ne i32 %conv711, 0
  br i1 %tobool712, label %if.then713, label %if.end715

if.then713:                                       ; preds = %lor.lhs.false710, %if.end707
  %584 = load ptr, ptr %v, align 8
  %585 = load i32, ptr %iDataCur, align 4
  %call714 = call i32 @sqlite3VdbeAddOp2(ptr noundef %584, i32 noundef 123, i32 noundef %585, i32 noundef 0)
  br label %if.end715

if.end715:                                        ; preds = %if.then713, %lor.lhs.false710
  %586 = load i32, ptr %hasFK, align 4
  %tobool716 = icmp ne i32 %586, 0
  br i1 %tobool716, label %if.then717, label %if.end719

if.then717:                                       ; preds = %if.end715
  %587 = load ptr, ptr %pParse.addr, align 8
  %588 = load ptr, ptr %pTab, align 8
  %589 = load i32, ptr %regNewRowid, align 4
  %590 = load ptr, ptr %aXRef, align 8
  %591 = load i8, ptr %chngKey, align 1
  %conv718 = zext i8 %591 to i32
  call void @sqlite3FkCheck(ptr noundef %587, ptr noundef %588, i32 noundef 0, i32 noundef %589, ptr noundef %590, i32 noundef %conv718)
  br label %if.end719

if.end719:                                        ; preds = %if.then717, %if.end715
  %592 = load ptr, ptr %pParse.addr, align 8
  %593 = load ptr, ptr %pTab, align 8
  %594 = load i32, ptr %iDataCur, align 4
  %595 = load i32, ptr %iIdxCur, align 4
  %596 = load i32, ptr %regNewRowid, align 4
  %597 = load ptr, ptr %aRegIdx, align 8
  %598 = load i32, ptr %eOnePass, align 4
  %cmp720 = icmp eq i32 %598, 2
  %599 = zext i1 %cmp720 to i64
  %cond722 = select i1 %cmp720, i32 2, i32 0
  %or723 = or i32 4, %cond722
  call void @sqlite3CompleteInsertion(ptr noundef %592, ptr noundef %593, i32 noundef %594, i32 noundef %595, i32 noundef %596, ptr noundef %597, i32 noundef %or723, i32 noundef 0, i32 noundef 0)
  %600 = load i32, ptr %hasFK, align 4
  %tobool724 = icmp ne i32 %600, 0
  br i1 %tobool724, label %if.then725, label %if.end727

if.then725:                                       ; preds = %if.end719
  %601 = load ptr, ptr %pParse.addr, align 8
  %602 = load ptr, ptr %pTab, align 8
  %603 = load ptr, ptr %pChanges.addr, align 8
  %604 = load i32, ptr %regOldRowid, align 4
  %605 = load ptr, ptr %aXRef, align 8
  %606 = load i8, ptr %chngKey, align 1
  %conv726 = zext i8 %606 to i32
  call void @sqlite3FkActions(ptr noundef %601, ptr noundef %602, ptr noundef %603, i32 noundef %604, ptr noundef %605, i32 noundef %conv726)
  br label %if.end727

if.end727:                                        ; preds = %if.then725, %if.end719
  br label %if.end728

if.end728:                                        ; preds = %if.end727, %if.end688
  %607 = load i32, ptr %regRowCount, align 4
  %tobool729 = icmp ne i32 %607, 0
  br i1 %tobool729, label %if.then730, label %if.end732

if.then730:                                       ; preds = %if.end728
  %608 = load ptr, ptr %v, align 8
  %609 = load i32, ptr %regRowCount, align 4
  %call731 = call i32 @sqlite3VdbeAddOp2(ptr noundef %608, i32 noundef 83, i32 noundef %609, i32 noundef 1)
  br label %if.end732

if.end732:                                        ; preds = %if.then730, %if.end728
  %610 = load ptr, ptr %pParse.addr, align 8
  %611 = load ptr, ptr %pTrigger, align 8
  %612 = load ptr, ptr %pChanges.addr, align 8
  %613 = load ptr, ptr %pTab, align 8
  %614 = load i32, ptr %regOldRowid, align 4
  %615 = load i32, ptr %onError.addr, align 4
  %616 = load i32, ptr %labelContinue, align 4
  call void @sqlite3CodeRowTrigger(ptr noundef %610, ptr noundef %611, i32 noundef 125, ptr noundef %612, i32 noundef 2, ptr noundef %613, i32 noundef %614, i32 noundef %615, i32 noundef %616)
  %617 = load i32, ptr %eOnePass, align 4
  %cmp733 = icmp eq i32 %617, 1
  br i1 %cmp733, label %if.then735, label %if.else736

if.then735:                                       ; preds = %if.end732
  br label %if.end748

if.else736:                                       ; preds = %if.end732
  %618 = load i32, ptr %eOnePass, align 4
  %cmp737 = icmp eq i32 %618, 2
  br i1 %cmp737, label %if.then739, label %if.else740

if.then739:                                       ; preds = %if.else736
  %619 = load ptr, ptr %v, align 8
  %620 = load i32, ptr %labelContinue, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %619, i32 noundef %620)
  %621 = load ptr, ptr %pWInfo, align 8
  call void @sqlite3WhereEnd(ptr noundef %621)
  br label %if.end747

if.else740:                                       ; preds = %if.else736
  %622 = load ptr, ptr %pPk, align 8
  %tobool741 = icmp ne ptr %622, null
  br i1 %tobool741, label %if.then742, label %if.else744

if.then742:                                       ; preds = %if.else740
  %623 = load ptr, ptr %v, align 8
  %624 = load i32, ptr %labelContinue, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %623, i32 noundef %624)
  %625 = load ptr, ptr %v, align 8
  %626 = load i32, ptr %iEph, align 4
  %627 = load i32, ptr %addrTop, align 4
  %call743 = call i32 @sqlite3VdbeAddOp2(ptr noundef %625, i32 noundef 5, i32 noundef %626, i32 noundef %627)
  br label %if.end746

if.else744:                                       ; preds = %if.else740
  %628 = load ptr, ptr %v, align 8
  %629 = load i32, ptr %labelContinue, align 4
  %call745 = call i32 @sqlite3VdbeGoto(ptr noundef %628, i32 noundef %629)
  br label %if.end746

if.end746:                                        ; preds = %if.else744, %if.then742
  br label %if.end747

if.end747:                                        ; preds = %if.end746, %if.then739
  br label %if.end748

if.end748:                                        ; preds = %if.end747, %if.then735
  %630 = load ptr, ptr %v, align 8
  %631 = load i32, ptr %labelBreak, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %630, i32 noundef %631)
  %632 = load ptr, ptr %pParse.addr, align 8
  %nested749 = getelementptr inbounds nuw %struct.Parse, ptr %632, i32 0, i32 6
  %633 = load i8, ptr %nested749, align 2
  %conv750 = zext i8 %633 to i32
  %cmp751 = icmp eq i32 %conv750, 0
  br i1 %cmp751, label %land.lhs.true753, label %if.end761

land.lhs.true753:                                 ; preds = %if.end748
  %634 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab754 = getelementptr inbounds nuw %struct.Parse, ptr %634, i32 0, i32 36
  %635 = load ptr, ptr %pTriggerTab754, align 8
  %cmp755 = icmp eq ptr %635, null
  br i1 %cmp755, label %land.lhs.true757, label %if.end761

land.lhs.true757:                                 ; preds = %land.lhs.true753
  %636 = load ptr, ptr %pUpsert.addr, align 8
  %cmp758 = icmp eq ptr %636, null
  br i1 %cmp758, label %if.then760, label %if.end761

if.then760:                                       ; preds = %land.lhs.true757
  %637 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3AutoincrementEnd(ptr noundef %637)
  br label %if.end761

if.end761:                                        ; preds = %if.then760, %land.lhs.true757, %land.lhs.true753, %if.end748
  %638 = load i32, ptr %regRowCount, align 4
  %tobool762 = icmp ne i32 %638, 0
  br i1 %tobool762, label %if.then763, label %if.end766

if.then763:                                       ; preds = %if.end761
  %639 = load ptr, ptr %v, align 8
  %640 = load i32, ptr %regRowCount, align 4
  %call764 = call i32 @sqlite3VdbeAddOp2(ptr noundef %639, i32 noundef 81, i32 noundef %640, i32 noundef 1)
  %641 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %641, i32 noundef 1)
  %642 = load ptr, ptr %v, align 8
  %call765 = call i32 @sqlite3VdbeSetColName(ptr noundef %642, i32 noundef 0, i32 noundef 0, ptr noundef @.str.805, ptr noundef null)
  br label %if.end766

if.end766:                                        ; preds = %if.then763, %if.end761
  br label %update_cleanup

update_cleanup:                                   ; preds = %if.end766, %if.then392, %if.then326, %if.then322, %if.then266, %if.then164, %if.else141, %if.then79, %if.then47, %if.then17, %if.then13, %if.then4, %if.then
  call void @sqlite3AuthContextPop(ptr noundef %sContext)
  %643 = load ptr, ptr %db, align 8
  %644 = load ptr, ptr %aXRef, align 8
  call void @sqlite3DbFree(ptr noundef %643, ptr noundef %644)
  %645 = load ptr, ptr %db, align 8
  %646 = load ptr, ptr %pTabList.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %645, ptr noundef %646)
  %647 = load ptr, ptr %db, align 8
  %648 = load ptr, ptr %pChanges.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %647, ptr noundef %648)
  %649 = load ptr, ptr %db, align 8
  %650 = load ptr, ptr %pWhere.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %649, ptr noundef %650)
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
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeGoto(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeSetP4KeyInfo(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp1(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeMakeLabel(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeResolveLabel(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprIfFalse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeGetColumnOfTable(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeChangeToNoop(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableAffinity(ptr noundef, ptr noundef, i32 noundef) #0

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
declare hidden void @sqlite3AutoincrementEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AuthContextPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TriggerColmask(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FkOldmask(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeRowTrigger(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkCheck(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateRowIndexDelete(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkActions(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @indexWhereClauseMightChange(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @indexColumnIsBeingUpdated(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @updateVirtualTable(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateConstraintChecks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CompleteInsertion(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
