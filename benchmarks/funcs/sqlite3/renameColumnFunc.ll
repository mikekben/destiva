; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RenameCtx = type { ptr, i32, i32, ptr, ptr }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_int(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_code(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExpr(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkSelect(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalkExprList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @renameColumnFunc(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %sCtx = alloca %struct.RenameCtx, align 8
  %zSql = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zTable = alloca ptr, align 8
  %iCol = alloca i32, align 4
  %zNew = alloca ptr, align 8
  %bQuote = alloca i32, align 4
  %bTemp = alloca i32, align 4
  %zOld = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sParse = alloca %struct.Parse, align 8
  %sWalker = alloca %struct.Walker, align 8
  %pIdx = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTab = alloca ptr, align 8
  %xAuth = alloca ptr, align 8
  %pSelect = alloca ptr, align 8
  %bFKOnly = alloca i32, align 4
  %pFKey = alloca ptr, align 8
  %pStep = alloca ptr, align 8
  %pTarget = alloca ptr, align 8
  %pUpsertSet = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %0)
  store ptr %call, ptr %db, align 8
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @sqlite3_value_text(ptr noundef %2)
  store ptr %call1, ptr %zSql, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 3
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @sqlite3_value_text(ptr noundef %4)
  store ptr %call3, ptr %zDb, align 8
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 4
  %6 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %6)
  store ptr %call5, ptr %zTable, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 5
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @sqlite3_value_int(ptr noundef %8)
  store i32 %call7, ptr %iCol, align 4
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %9, i64 6
  %10 = load ptr, ptr %arrayidx8, align 8
  %call9 = call ptr @sqlite3_value_text(ptr noundef %10)
  store ptr %call9, ptr %zNew, align 8
  %11 = load ptr, ptr %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %11, i64 7
  %12 = load ptr, ptr %arrayidx10, align 8
  %call11 = call i32 @sqlite3_value_int(ptr noundef %12)
  store i32 %call11, ptr %bQuote, align 4
  %13 = load ptr, ptr %argv.addr, align 8
  %arrayidx12 = getelementptr inbounds ptr, ptr %13, i64 8
  %14 = load ptr, ptr %arrayidx12, align 8
  %call13 = call i32 @sqlite3_value_int(ptr noundef %14)
  store i32 %call13, ptr %bTemp, align 4
  %15 = load ptr, ptr %db, align 8
  %xAuth14 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 62
  %16 = load ptr, ptr %xAuth14, align 8
  store ptr %16, ptr %xAuth, align 8
  %17 = load i32, ptr %NotUsed.addr, align 4
  %18 = load ptr, ptr %zSql, align 8
  %cmp = icmp eq ptr %18, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %19 = load ptr, ptr %zTable, align 8
  %cmp15 = icmp eq ptr %19, null
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end
  br label %return

if.end17:                                         ; preds = %if.end
  %20 = load ptr, ptr %zNew, align 8
  %cmp18 = icmp eq ptr %20, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end17
  br label %return

if.end20:                                         ; preds = %if.end17
  %21 = load i32, ptr %iCol, align 4
  %cmp21 = icmp slt i32 %21, 0
  br i1 %cmp21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.end20
  br label %return

if.end23:                                         ; preds = %if.end20
  %22 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %22)
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %zTable, align 8
  %25 = load ptr, ptr %zDb, align 8
  %call24 = call ptr @sqlite3FindTable(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  store ptr %call24, ptr %pTab, align 8
  %26 = load ptr, ptr %pTab, align 8
  %cmp25 = icmp eq ptr %26, null
  br i1 %cmp25, label %if.then28, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end23
  %27 = load i32, ptr %iCol, align 4
  %28 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %28, i32 0, i32 11
  %29 = load i16, ptr %nCol, align 2
  %conv = sext i16 %29 to i32
  %cmp26 = icmp sge i32 %27, %conv
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %lor.lhs.false, %if.end23
  %30 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %30)
  br label %return

if.end29:                                         ; preds = %lor.lhs.false
  %31 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %aCol, align 8
  %33 = load i32, ptr %iCol, align 4
  %idxprom = sext i32 %33 to i64
  %arrayidx30 = getelementptr inbounds %struct.Column, ptr %32, i64 %idxprom
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx30, i32 0, i32 0
  %34 = load ptr, ptr %zName, align 8
  store ptr %34, ptr %zOld, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sCtx, i8 0, i64 32, i1 false)
  %35 = load i32, ptr %iCol, align 4
  %36 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %36, i32 0, i32 10
  %37 = load i16, ptr %iPKey, align 4
  %conv31 = sext i16 %37 to i32
  %cmp32 = icmp eq i32 %35, %conv31
  br i1 %cmp32, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end29
  br label %cond.end

cond.false:                                       ; preds = %if.end29
  %38 = load i32, ptr %iCol, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %38, %cond.false ]
  %iCol34 = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 2
  store i32 %cond, ptr %iCol34, align 4
  %39 = load ptr, ptr %db, align 8
  %xAuth35 = getelementptr inbounds nuw %struct.sqlite3, ptr %39, i32 0, i32 62
  store ptr null, ptr %xAuth35, align 8
  %40 = load ptr, ptr %zDb, align 8
  %41 = load ptr, ptr %db, align 8
  %42 = load ptr, ptr %zSql, align 8
  %43 = load i32, ptr %bTemp, align 4
  %call36 = call i32 @renameParseSql(ptr noundef %sParse, ptr noundef %40, i32 noundef 0, ptr noundef %41, ptr noundef %42, i32 noundef %43)
  store i32 %call36, ptr %rc, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %sWalker, i8 0, i64 48, i1 false)
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 0
  store ptr %sParse, ptr %pParse, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 1
  store ptr @renameColumnExprCb, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 2
  store ptr @renameColumnSelectCb, ptr %xSelectCallback, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 6
  store ptr %sCtx, ptr %u, align 8
  %44 = load ptr, ptr %pTab, align 8
  %pTab37 = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 3
  store ptr %44, ptr %pTab37, align 8
  %45 = load i32, ptr %rc, align 4
  %cmp38 = icmp ne i32 %45, 0
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %cond.end
  br label %renameColumnFunc_done

if.end41:                                         ; preds = %cond.end
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %46 = load ptr, ptr %pNewTable, align 8
  %tobool = icmp ne ptr %46, null
  br i1 %tobool, label %if.then42, label %if.else143

if.then42:                                        ; preds = %if.end41
  %pNewTable43 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %47 = load ptr, ptr %pNewTable43, align 8
  %pSelect44 = getelementptr inbounds nuw %struct.Table, ptr %47, i32 0, i32 3
  %48 = load ptr, ptr %pSelect44, align 8
  store ptr %48, ptr %pSelect, align 8
  %49 = load ptr, ptr %pSelect, align 8
  %tobool45 = icmp ne ptr %49, null
  br i1 %tobool45, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.then42
  %rc47 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  store i32 0, ptr %rc47, align 8
  %pNewTable48 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %50 = load ptr, ptr %pNewTable48, align 8
  %pSelect49 = getelementptr inbounds nuw %struct.Table, ptr %50, i32 0, i32 3
  %51 = load ptr, ptr %pSelect49, align 8
  call void @sqlite3SelectPrep(ptr noundef %sParse, ptr noundef %51, ptr noundef null)
  %52 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %52, i32 0, i32 19
  %53 = load i8, ptr %mallocFailed, align 1
  %conv50 = zext i8 %53 to i32
  %tobool51 = icmp ne i32 %conv50, 0
  br i1 %tobool51, label %cond.true52, label %cond.false53

cond.true52:                                      ; preds = %if.then46
  br label %cond.end55

cond.false53:                                     ; preds = %if.then46
  %rc54 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  %54 = load i32, ptr %rc54, align 8
  br label %cond.end55

cond.end55:                                       ; preds = %cond.false53, %cond.true52
  %cond56 = phi i32 [ 7, %cond.true52 ], [ %54, %cond.false53 ]
  store i32 %cond56, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %cmp57 = icmp eq i32 %55, 0
  br i1 %cmp57, label %if.then59, label %if.end61

if.then59:                                        ; preds = %cond.end55
  %56 = load ptr, ptr %pSelect, align 8
  %call60 = call i32 @sqlite3WalkSelect(ptr noundef %sWalker, ptr noundef %56)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %cond.end55
  %57 = load i32, ptr %rc, align 4
  %cmp62 = icmp ne i32 %57, 0
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %if.end61
  br label %renameColumnFunc_done

if.end65:                                         ; preds = %if.end61
  br label %if.end142

if.else:                                          ; preds = %if.then42
  %58 = load ptr, ptr %zTable, align 8
  %pNewTable66 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %59 = load ptr, ptr %pNewTable66, align 8
  %zName67 = getelementptr inbounds nuw %struct.Table, ptr %59, i32 0, i32 0
  %60 = load ptr, ptr %zName67, align 8
  %call68 = call i32 @sqlite3_stricmp(ptr noundef %58, ptr noundef %60)
  store i32 %call68, ptr %bFKOnly, align 4
  %pNewTable69 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %61 = load ptr, ptr %pNewTable69, align 8
  %pTab70 = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 3
  store ptr %61, ptr %pTab70, align 8
  %62 = load i32, ptr %bFKOnly, align 4
  %cmp71 = icmp eq i32 %62, 0
  br i1 %cmp71, label %if.then73, label %if.end99

if.then73:                                        ; preds = %if.else
  %pNewTable74 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %63 = load ptr, ptr %pNewTable74, align 8
  %aCol75 = getelementptr inbounds nuw %struct.Table, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %aCol75, align 8
  %65 = load i32, ptr %iCol, align 4
  %idxprom76 = sext i32 %65 to i64
  %arrayidx77 = getelementptr inbounds %struct.Column, ptr %64, i64 %idxprom76
  %zName78 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx77, i32 0, i32 0
  %66 = load ptr, ptr %zName78, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %66)
  %iCol79 = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 2
  %67 = load i32, ptr %iCol79, align 4
  %cmp80 = icmp slt i32 %67, 0
  br i1 %cmp80, label %if.then82, label %if.end85

if.then82:                                        ; preds = %if.then73
  %pNewTable83 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %68 = load ptr, ptr %pNewTable83, align 8
  %iPKey84 = getelementptr inbounds nuw %struct.Table, ptr %68, i32 0, i32 10
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %iPKey84)
  br label %if.end85

if.end85:                                         ; preds = %if.then82, %if.then73
  %pNewTable86 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %69 = load ptr, ptr %pNewTable86, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %69, i32 0, i32 6
  %70 = load ptr, ptr %pCheck, align 8
  %call87 = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %70)
  %pNewTable88 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %71 = load ptr, ptr %pNewTable88, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %71, i32 0, i32 2
  %72 = load ptr, ptr %pIndex, align 8
  store ptr %72, ptr %pIdx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end85
  %73 = load ptr, ptr %pIdx, align 8
  %tobool89 = icmp ne ptr %73, null
  br i1 %tobool89, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load ptr, ptr %pIdx, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %74, i32 0, i32 10
  %75 = load ptr, ptr %aColExpr, align 8
  %call90 = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %75)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %76 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %76, i32 0, i32 5
  %77 = load ptr, ptr %pNext, align 8
  store ptr %77, ptr %pIdx, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %pNewIndex = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %78 = load ptr, ptr %pNewIndex, align 8
  store ptr %78, ptr %pIdx, align 8
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc96, %for.end
  %79 = load ptr, ptr %pIdx, align 8
  %tobool92 = icmp ne ptr %79, null
  br i1 %tobool92, label %for.body93, label %for.end98

for.body93:                                       ; preds = %for.cond91
  %80 = load ptr, ptr %pIdx, align 8
  %aColExpr94 = getelementptr inbounds nuw %struct.Index, ptr %80, i32 0, i32 10
  %81 = load ptr, ptr %aColExpr94, align 8
  %call95 = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %81)
  br label %for.inc96

for.inc96:                                        ; preds = %for.body93
  %82 = load ptr, ptr %pIdx, align 8
  %pNext97 = getelementptr inbounds nuw %struct.Index, ptr %82, i32 0, i32 5
  %83 = load ptr, ptr %pNext97, align 8
  store ptr %83, ptr %pIdx, align 8
  br label %for.cond91, !llvm.loop !8

for.end98:                                        ; preds = %for.cond91
  br label %if.end99

if.end99:                                         ; preds = %for.end98, %if.else
  %pNewTable100 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %84 = load ptr, ptr %pNewTable100, align 8
  %pFKey101 = getelementptr inbounds nuw %struct.Table, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %pFKey101, align 8
  store ptr %85, ptr %pFKey, align 8
  br label %for.cond102

for.cond102:                                      ; preds = %for.inc140, %if.end99
  %86 = load ptr, ptr %pFKey, align 8
  %tobool103 = icmp ne ptr %86, null
  br i1 %tobool103, label %for.body104, label %for.end141

for.body104:                                      ; preds = %for.cond102
  store i32 0, ptr %i, align 4
  br label %for.cond105

for.cond105:                                      ; preds = %for.inc138, %for.body104
  %87 = load i32, ptr %i, align 4
  %88 = load ptr, ptr %pFKey, align 8
  %nCol106 = getelementptr inbounds nuw %struct.FKey, ptr %88, i32 0, i32 5
  %89 = load i32, ptr %nCol106, align 8
  %cmp107 = icmp slt i32 %87, %89
  br i1 %cmp107, label %for.body109, label %for.end139

for.body109:                                      ; preds = %for.cond105
  %90 = load i32, ptr %bFKOnly, align 4
  %cmp110 = icmp eq i32 %90, 0
  br i1 %cmp110, label %land.lhs.true, label %if.end121

land.lhs.true:                                    ; preds = %for.body109
  %91 = load ptr, ptr %pFKey, align 8
  %aCol112 = getelementptr inbounds nuw %struct.FKey, ptr %91, i32 0, i32 9
  %92 = load i32, ptr %i, align 4
  %idxprom113 = sext i32 %92 to i64
  %arrayidx114 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol112, i64 0, i64 %idxprom113
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx114, i32 0, i32 0
  %93 = load i32, ptr %iFrom, align 8
  %94 = load i32, ptr %iCol, align 4
  %cmp115 = icmp eq i32 %93, %94
  br i1 %cmp115, label %if.then117, label %if.end121

if.then117:                                       ; preds = %land.lhs.true
  %95 = load ptr, ptr %pFKey, align 8
  %aCol118 = getelementptr inbounds nuw %struct.FKey, ptr %95, i32 0, i32 9
  %96 = load i32, ptr %i, align 4
  %idxprom119 = sext i32 %96 to i64
  %arrayidx120 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol118, i64 0, i64 %idxprom119
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %arrayidx120)
  br label %if.end121

if.end121:                                        ; preds = %if.then117, %land.lhs.true, %for.body109
  %97 = load ptr, ptr %pFKey, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %97, i32 0, i32 2
  %98 = load ptr, ptr %zTo, align 8
  %99 = load ptr, ptr %zTable, align 8
  %call122 = call i32 @sqlite3_stricmp(ptr noundef %98, ptr noundef %99)
  %cmp123 = icmp eq i32 0, %call122
  br i1 %cmp123, label %land.lhs.true125, label %if.end137

land.lhs.true125:                                 ; preds = %if.end121
  %100 = load ptr, ptr %pFKey, align 8
  %aCol126 = getelementptr inbounds nuw %struct.FKey, ptr %100, i32 0, i32 9
  %101 = load i32, ptr %i, align 4
  %idxprom127 = sext i32 %101 to i64
  %arrayidx128 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol126, i64 0, i64 %idxprom127
  %zCol = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx128, i32 0, i32 1
  %102 = load ptr, ptr %zCol, align 8
  %103 = load ptr, ptr %zOld, align 8
  %call129 = call i32 @sqlite3_stricmp(ptr noundef %102, ptr noundef %103)
  %cmp130 = icmp eq i32 0, %call129
  br i1 %cmp130, label %if.then132, label %if.end137

if.then132:                                       ; preds = %land.lhs.true125
  %104 = load ptr, ptr %pFKey, align 8
  %aCol133 = getelementptr inbounds nuw %struct.FKey, ptr %104, i32 0, i32 9
  %105 = load i32, ptr %i, align 4
  %idxprom134 = sext i32 %105 to i64
  %arrayidx135 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol133, i64 0, i64 %idxprom134
  %zCol136 = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx135, i32 0, i32 1
  %106 = load ptr, ptr %zCol136, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %106)
  br label %if.end137

if.end137:                                        ; preds = %if.then132, %land.lhs.true125, %if.end121
  br label %for.inc138

for.inc138:                                       ; preds = %if.end137
  %107 = load i32, ptr %i, align 4
  %inc = add nsw i32 %107, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond105, !llvm.loop !9

for.end139:                                       ; preds = %for.cond105
  br label %for.inc140

for.inc140:                                       ; preds = %for.end139
  %108 = load ptr, ptr %pFKey, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %108, i32 0, i32 1
  %109 = load ptr, ptr %pNextFrom, align 8
  store ptr %109, ptr %pFKey, align 8
  br label %for.cond102, !llvm.loop !10

for.end141:                                       ; preds = %for.cond102
  br label %if.end142

if.end142:                                        ; preds = %for.end141, %if.end65
  br label %if.end190

if.else143:                                       ; preds = %if.end41
  %pNewIndex144 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %110 = load ptr, ptr %pNewIndex144, align 8
  %tobool145 = icmp ne ptr %110, null
  br i1 %tobool145, label %if.then146, label %if.else152

if.then146:                                       ; preds = %if.else143
  %pNewIndex147 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %111 = load ptr, ptr %pNewIndex147, align 8
  %aColExpr148 = getelementptr inbounds nuw %struct.Index, ptr %111, i32 0, i32 10
  %112 = load ptr, ptr %aColExpr148, align 8
  %call149 = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %112)
  %pNewIndex150 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %113 = load ptr, ptr %pNewIndex150, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %113, i32 0, i32 9
  %114 = load ptr, ptr %pPartIdxWhere, align 8
  %call151 = call i32 @sqlite3WalkExpr(ptr noundef %sWalker, ptr noundef %114)
  br label %if.end189

if.else152:                                       ; preds = %if.else143
  %115 = load i32, ptr %bTemp, align 4
  %tobool153 = icmp ne i32 %115, 0
  br i1 %tobool153, label %cond.true154, label %cond.false155

cond.true154:                                     ; preds = %if.else152
  br label %cond.end156

cond.false155:                                    ; preds = %if.else152
  %116 = load ptr, ptr %zDb, align 8
  br label %cond.end156

cond.end156:                                      ; preds = %cond.false155, %cond.true154
  %cond157 = phi ptr [ null, %cond.true154 ], [ %116, %cond.false155 ]
  %call158 = call i32 @renameResolveTrigger(ptr noundef %sParse, ptr noundef %cond157)
  store i32 %call158, ptr %rc, align 4
  %117 = load i32, ptr %rc, align 4
  %cmp159 = icmp ne i32 %117, 0
  br i1 %cmp159, label %if.then161, label %if.end162

if.then161:                                       ; preds = %cond.end156
  br label %renameColumnFunc_done

if.end162:                                        ; preds = %cond.end156
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %118 = load ptr, ptr %pNewTrigger, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %118, i32 0, i32 8
  %119 = load ptr, ptr %step_list, align 8
  store ptr %119, ptr %pStep, align 8
  br label %for.cond163

for.cond163:                                      ; preds = %for.inc180, %if.end162
  %120 = load ptr, ptr %pStep, align 8
  %tobool164 = icmp ne ptr %120, null
  br i1 %tobool164, label %for.body165, label %for.end182

for.body165:                                      ; preds = %for.cond163
  %121 = load ptr, ptr %pStep, align 8
  %zTarget = getelementptr inbounds nuw %struct.TriggerStep, ptr %121, i32 0, i32 4
  %122 = load ptr, ptr %zTarget, align 8
  %tobool166 = icmp ne ptr %122, null
  br i1 %tobool166, label %if.then167, label %if.end179

if.then167:                                       ; preds = %for.body165
  %123 = load ptr, ptr %pStep, align 8
  %zTarget168 = getelementptr inbounds nuw %struct.TriggerStep, ptr %123, i32 0, i32 4
  %124 = load ptr, ptr %zTarget168, align 8
  %125 = load ptr, ptr %zDb, align 8
  %call169 = call ptr @sqlite3LocateTable(ptr noundef %sParse, i32 noundef 0, ptr noundef %124, ptr noundef %125)
  store ptr %call169, ptr %pTarget, align 8
  %126 = load ptr, ptr %pTarget, align 8
  %127 = load ptr, ptr %pTab, align 8
  %cmp170 = icmp eq ptr %126, %127
  br i1 %cmp170, label %if.then172, label %if.end178

if.then172:                                       ; preds = %if.then167
  %128 = load ptr, ptr %pStep, align 8
  %pUpsert = getelementptr inbounds nuw %struct.TriggerStep, ptr %128, i32 0, i32 8
  %129 = load ptr, ptr %pUpsert, align 8
  %tobool173 = icmp ne ptr %129, null
  br i1 %tobool173, label %if.then174, label %if.end177

if.then174:                                       ; preds = %if.then172
  %130 = load ptr, ptr %pStep, align 8
  %pUpsert175 = getelementptr inbounds nuw %struct.TriggerStep, ptr %130, i32 0, i32 8
  %131 = load ptr, ptr %pUpsert175, align 8
  %pUpsertSet176 = getelementptr inbounds nuw %struct.Upsert, ptr %131, i32 0, i32 2
  %132 = load ptr, ptr %pUpsertSet176, align 8
  store ptr %132, ptr %pUpsertSet, align 8
  %133 = load ptr, ptr %pUpsertSet, align 8
  %134 = load ptr, ptr %zOld, align 8
  call void @renameColumnElistNames(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %133, ptr noundef %134)
  br label %if.end177

if.end177:                                        ; preds = %if.then174, %if.then172
  %135 = load ptr, ptr %pStep, align 8
  %pIdList = getelementptr inbounds nuw %struct.TriggerStep, ptr %135, i32 0, i32 7
  %136 = load ptr, ptr %pIdList, align 8
  %137 = load ptr, ptr %zOld, align 8
  call void @renameColumnIdlistNames(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %136, ptr noundef %137)
  %138 = load ptr, ptr %pStep, align 8
  %pExprList = getelementptr inbounds nuw %struct.TriggerStep, ptr %138, i32 0, i32 6
  %139 = load ptr, ptr %pExprList, align 8
  %140 = load ptr, ptr %zOld, align 8
  call void @renameColumnElistNames(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %139, ptr noundef %140)
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.then167
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %for.body165
  br label %for.inc180

for.inc180:                                       ; preds = %if.end179
  %141 = load ptr, ptr %pStep, align 8
  %pNext181 = getelementptr inbounds nuw %struct.TriggerStep, ptr %141, i32 0, i32 10
  %142 = load ptr, ptr %pNext181, align 8
  store ptr %142, ptr %pStep, align 8
  br label %for.cond163, !llvm.loop !11

for.end182:                                       ; preds = %for.cond163
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 36
  %143 = load ptr, ptr %pTriggerTab, align 8
  %144 = load ptr, ptr %pTab, align 8
  %cmp183 = icmp eq ptr %143, %144
  br i1 %cmp183, label %if.then185, label %if.end187

if.then185:                                       ; preds = %for.end182
  %pNewTrigger186 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %145 = load ptr, ptr %pNewTrigger186, align 8
  %pColumns = getelementptr inbounds nuw %struct.Trigger, ptr %145, i32 0, i32 5
  %146 = load ptr, ptr %pColumns, align 8
  %147 = load ptr, ptr %zOld, align 8
  call void @renameColumnIdlistNames(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %146, ptr noundef %147)
  br label %if.end187

if.end187:                                        ; preds = %if.then185, %for.end182
  %pNewTrigger188 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %148 = load ptr, ptr %pNewTrigger188, align 8
  call void @renameWalkTrigger(ptr noundef %sWalker, ptr noundef %148)
  br label %if.end189

if.end189:                                        ; preds = %if.end187, %if.then146
  br label %if.end190

if.end190:                                        ; preds = %if.end189, %if.end142
  %149 = load ptr, ptr %context.addr, align 8
  %150 = load ptr, ptr %zSql, align 8
  %151 = load ptr, ptr %zNew, align 8
  %152 = load i32, ptr %bQuote, align 4
  %call191 = call i32 @renameEditSql(ptr noundef %149, ptr noundef %sCtx, ptr noundef %150, ptr noundef %151, i32 noundef %152)
  store i32 %call191, ptr %rc, align 4
  br label %renameColumnFunc_done

renameColumnFunc_done:                            ; preds = %if.end190, %if.then161, %if.then64, %if.then40
  %153 = load i32, ptr %rc, align 4
  %cmp192 = icmp ne i32 %153, 0
  br i1 %cmp192, label %if.then194, label %if.end201

if.then194:                                       ; preds = %renameColumnFunc_done
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  %154 = load ptr, ptr %zErrMsg, align 8
  %tobool195 = icmp ne ptr %154, null
  br i1 %tobool195, label %if.then196, label %if.else199

if.then196:                                       ; preds = %if.then194
  %155 = load ptr, ptr %context.addr, align 8
  %156 = load ptr, ptr %argv.addr, align 8
  %arrayidx197 = getelementptr inbounds ptr, ptr %156, i64 1
  %157 = load ptr, ptr %arrayidx197, align 8
  %158 = load ptr, ptr %argv.addr, align 8
  %arrayidx198 = getelementptr inbounds ptr, ptr %158, i64 2
  %159 = load ptr, ptr %arrayidx198, align 8
  call void @renameColumnParseError(ptr noundef %155, i32 noundef 0, ptr noundef %157, ptr noundef %159, ptr noundef %sParse)
  br label %if.end200

if.else199:                                       ; preds = %if.then194
  %160 = load ptr, ptr %context.addr, align 8
  %161 = load i32, ptr %rc, align 4
  call void @sqlite3_result_error_code(ptr noundef %160, i32 noundef %161)
  br label %if.end200

if.end200:                                        ; preds = %if.else199, %if.then196
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %renameColumnFunc_done
  call void @renameParseCleanup(ptr noundef %sParse)
  %162 = load ptr, ptr %db, align 8
  %pList = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 0
  %163 = load ptr, ptr %pList, align 8
  call void @renameTokenFree(ptr noundef %162, ptr noundef %163)
  %164 = load ptr, ptr %xAuth, align 8
  %165 = load ptr, ptr %db, align 8
  %xAuth202 = getelementptr inbounds nuw %struct.sqlite3, ptr %165, i32 0, i32 62
  store ptr %164, ptr %xAuth202, align 8
  %166 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %166)
  br label %return

return:                                           ; preds = %if.end201, %if.then28, %if.then22, %if.then19, %if.then16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @renameParseSql(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameColumnExprCb(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameColumnSelectCb(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFind(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameResolveTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameColumnElistNames(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameColumnIdlistNames(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameWalkTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameEditSql(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameColumnParseError(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameParseCleanup(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFree(ptr noundef, ptr noundef) #0

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
