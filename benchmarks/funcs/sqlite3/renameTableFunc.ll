; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.RenameCtx = type { ptr, i32, i32, ptr, ptr }
%struct.Walker = type { ptr, ptr, ptr, ptr, i32, i8, %union.anon.14 }
%union.anon.14 = type { ptr }
%struct.NameContext = type { ptr, ptr, %union.anon.15, ptr, i32, i32, i32, ptr }
%union.anon.15 = type { ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.TriggerStep = type { i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

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
define hidden void @renameTableFunc(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %zInput = alloca ptr, align 8
  %zOld = alloca ptr, align 8
  %zNew = alloca ptr, align 8
  %bTemp = alloca i32, align 4
  %sParse = alloca %struct.Parse, align 8
  %rc = alloca i32, align 4
  %bQuote = alloca i32, align 4
  %sCtx = alloca %struct.RenameCtx, align 8
  %sWalker = alloca %struct.Walker, align 8
  %xAuth = alloca ptr, align 8
  %isLegacy = alloca i32, align 4
  %pTab20 = alloca ptr, align 8
  %sNC = alloca %struct.NameContext, align 8
  %pFKey = alloca ptr, align 8
  %pTrigger = alloca ptr, align 8
  %pStep = alloca ptr, align 8
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
  store ptr %call1, ptr %zDb, align 8
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 3
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @sqlite3_value_text(ptr noundef %4)
  store ptr %call3, ptr %zInput, align 8
  %5 = load ptr, ptr %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %5, i64 4
  %6 = load ptr, ptr %arrayidx4, align 8
  %call5 = call ptr @sqlite3_value_text(ptr noundef %6)
  store ptr %call5, ptr %zOld, align 8
  %7 = load ptr, ptr %argv.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 5
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call ptr @sqlite3_value_text(ptr noundef %8)
  store ptr %call7, ptr %zNew, align 8
  %9 = load ptr, ptr %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds ptr, ptr %9, i64 6
  %10 = load ptr, ptr %arrayidx8, align 8
  %call9 = call i32 @sqlite3_value_int(ptr noundef %10)
  store i32 %call9, ptr %bTemp, align 4
  %11 = load i32, ptr %NotUsed.addr, align 4
  %12 = load ptr, ptr %zInput, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end130

land.lhs.true:                                    ; preds = %entry
  %13 = load ptr, ptr %zOld, align 8
  %tobool10 = icmp ne ptr %13, null
  br i1 %tobool10, label %land.lhs.true11, label %if.end130

land.lhs.true11:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %zNew, align 8
  %tobool12 = icmp ne ptr %14, null
  br i1 %tobool12, label %if.then, label %if.end130

if.then:                                          ; preds = %land.lhs.true11
  store i32 1, ptr %bQuote, align 4
  %15 = load ptr, ptr %db, align 8
  %xAuth13 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 62
  %16 = load ptr, ptr %xAuth13, align 8
  store ptr %16, ptr %xAuth, align 8
  %17 = load ptr, ptr %db, align 8
  %xAuth14 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 62
  store ptr null, ptr %xAuth14, align 8
  %18 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %18)
  call void @llvm.memset.p0.i64(ptr align 8 %sCtx, i8 0, i64 32, i1 false)
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %zOld, align 8
  %21 = load ptr, ptr %zDb, align 8
  %call15 = call ptr @sqlite3FindTable(ptr noundef %19, ptr noundef %20, ptr noundef %21)
  %pTab = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 3
  store ptr %call15, ptr %pTab, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %sWalker, i8 0, i64 48, i1 false)
  %pParse = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 0
  store ptr %sParse, ptr %pParse, align 8
  %xExprCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 1
  store ptr @renameTableExprCb, ptr %xExprCallback, align 8
  %xSelectCallback = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 2
  store ptr @renameTableSelectCb, ptr %xSelectCallback, align 8
  %u = getelementptr inbounds nuw %struct.Walker, ptr %sWalker, i32 0, i32 6
  store ptr %sCtx, ptr %u, align 8
  %22 = load ptr, ptr %zDb, align 8
  %23 = load ptr, ptr %db, align 8
  %24 = load ptr, ptr %zInput, align 8
  %25 = load i32, ptr %bTemp, align 4
  %call16 = call i32 @renameParseSql(ptr noundef %sParse, ptr noundef %22, i32 noundef 1, ptr noundef %23, ptr noundef %24, i32 noundef %25)
  store i32 %call16, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %26, 0
  br i1 %cmp, label %if.then17, label %if.end113

if.then17:                                        ; preds = %if.then
  %27 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 7
  %28 = load i64, ptr %flags, align 8
  %and = and i64 %28, 67108864
  %conv = trunc i64 %and to i32
  store i32 %conv, ptr %isLegacy, align 4
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %29 = load ptr, ptr %pNewTable, align 8
  %tobool18 = icmp ne ptr %29, null
  br i1 %tobool18, label %if.then19, label %if.else63

if.then19:                                        ; preds = %if.then17
  %pNewTable21 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 58
  %30 = load ptr, ptr %pNewTable21, align 8
  store ptr %30, ptr %pTab20, align 8
  %31 = load ptr, ptr %pTab20, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %pSelect, align 8
  %tobool22 = icmp ne ptr %32, null
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then19
  %33 = load i32, ptr %isLegacy, align 4
  %cmp24 = icmp eq i32 %33, 0
  br i1 %cmp24, label %if.then26, label %if.end34

if.then26:                                        ; preds = %if.then23
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %pParse27 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %sParse, ptr %pParse27, align 8
  %34 = load ptr, ptr %pTab20, align 8
  %pSelect28 = getelementptr inbounds nuw %struct.Table, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %pSelect28, align 8
  call void @sqlite3SelectPrep(ptr noundef %sParse, ptr noundef %35, ptr noundef %sNC)
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 16
  %36 = load i32, ptr %nErr, align 8
  %tobool29 = icmp ne i32 %36, 0
  br i1 %tobool29, label %if.then30, label %if.end

if.then30:                                        ; preds = %if.then26
  %rc31 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 3
  %37 = load i32, ptr %rc31, align 8
  store i32 %37, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then30, %if.then26
  %38 = load ptr, ptr %pTab20, align 8
  %pSelect32 = getelementptr inbounds nuw %struct.Table, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %pSelect32, align 8
  %call33 = call i32 @sqlite3WalkSelect(ptr noundef %sWalker, ptr noundef %39)
  br label %if.end34

if.end34:                                         ; preds = %if.end, %if.then23
  br label %if.end62

if.else:                                          ; preds = %if.then19
  %40 = load i32, ptr %isLegacy, align 4
  %cmp35 = icmp eq i32 %40, 0
  br i1 %cmp35, label %if.then40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %41 = load ptr, ptr %db, align 8
  %flags37 = getelementptr inbounds nuw %struct.sqlite3, ptr %41, i32 0, i32 7
  %42 = load i64, ptr %flags37, align 8
  %and38 = and i64 %42, 16384
  %tobool39 = icmp ne i64 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end49

if.then40:                                        ; preds = %lor.lhs.false, %if.else
  %43 = load ptr, ptr %pTab20, align 8
  %pFKey41 = getelementptr inbounds nuw %struct.Table, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %pFKey41, align 8
  store ptr %44, ptr %pFKey, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then40
  %45 = load ptr, ptr %pFKey, align 8
  %tobool42 = icmp ne ptr %45, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load ptr, ptr %pFKey, align 8
  %zTo = getelementptr inbounds nuw %struct.FKey, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %zTo, align 8
  %48 = load ptr, ptr %zOld, align 8
  %call43 = call i32 @sqlite3_stricmp(ptr noundef %47, ptr noundef %48)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.body
  %49 = load ptr, ptr %pFKey, align 8
  %zTo47 = getelementptr inbounds nuw %struct.FKey, ptr %49, i32 0, i32 2
  %50 = load ptr, ptr %zTo47, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %50)
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %51 = load ptr, ptr %pFKey, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %pNextFrom, align 8
  store ptr %52, ptr %pFKey, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end49

if.end49:                                         ; preds = %for.end, %lor.lhs.false
  %53 = load ptr, ptr %zOld, align 8
  %54 = load ptr, ptr %pTab20, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %zName, align 8
  %call50 = call i32 @sqlite3_stricmp(ptr noundef %53, ptr noundef %55)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then53, label %if.end61

if.then53:                                        ; preds = %if.end49
  %56 = load ptr, ptr %pTab20, align 8
  %pTab54 = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 3
  store ptr %56, ptr %pTab54, align 8
  %57 = load i32, ptr %isLegacy, align 4
  %cmp55 = icmp eq i32 %57, 0
  br i1 %cmp55, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.then53
  %58 = load ptr, ptr %pTab20, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 6
  %59 = load ptr, ptr %pCheck, align 8
  %call58 = call i32 @sqlite3WalkExprList(ptr noundef %sWalker, ptr noundef %59)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %if.then53
  %60 = load ptr, ptr %pTab20, align 8
  %zName60 = getelementptr inbounds nuw %struct.Table, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %zName60, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %61)
  br label %if.end61

if.end61:                                         ; preds = %if.end59, %if.end49
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end34
  br label %if.end112

if.else63:                                        ; preds = %if.then17
  %pNewIndex = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %62 = load ptr, ptr %pNewIndex, align 8
  %tobool64 = icmp ne ptr %62, null
  br i1 %tobool64, label %if.then65, label %if.else74

if.then65:                                        ; preds = %if.else63
  %pNewIndex66 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %63 = load ptr, ptr %pNewIndex66, align 8
  %zName67 = getelementptr inbounds nuw %struct.Index, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %zName67, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %64)
  %65 = load i32, ptr %isLegacy, align 4
  %cmp68 = icmp eq i32 %65, 0
  br i1 %cmp68, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.then65
  %pNewIndex71 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 59
  %66 = load ptr, ptr %pNewIndex71, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %66, i32 0, i32 9
  %67 = load ptr, ptr %pPartIdxWhere, align 8
  %call72 = call i32 @sqlite3WalkExpr(ptr noundef %sWalker, ptr noundef %67)
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %if.then65
  br label %if.end111

if.else74:                                        ; preds = %if.else63
  %pNewTrigger = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %68 = load ptr, ptr %pNewTrigger, align 8
  store ptr %68, ptr %pTrigger, align 8
  %pNewTrigger75 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %69 = load ptr, ptr %pNewTrigger75, align 8
  %table = getelementptr inbounds nuw %struct.Trigger, ptr %69, i32 0, i32 1
  %70 = load ptr, ptr %table, align 8
  %71 = load ptr, ptr %zOld, align 8
  %call76 = call i32 @sqlite3_stricmp(ptr noundef %70, ptr noundef %71)
  %cmp77 = icmp eq i32 0, %call76
  br i1 %cmp77, label %land.lhs.true79, label %if.end86

land.lhs.true79:                                  ; preds = %if.else74
  %pTab80 = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 3
  %72 = load ptr, ptr %pTab80, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %72, i32 0, i32 20
  %73 = load ptr, ptr %pSchema, align 8
  %74 = load ptr, ptr %pTrigger, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %74, i32 0, i32 7
  %75 = load ptr, ptr %pTabSchema, align 8
  %cmp81 = icmp eq ptr %73, %75
  br i1 %cmp81, label %if.then83, label %if.end86

if.then83:                                        ; preds = %land.lhs.true79
  %pNewTrigger84 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 60
  %76 = load ptr, ptr %pNewTrigger84, align 8
  %table85 = getelementptr inbounds nuw %struct.Trigger, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %table85, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %77)
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %land.lhs.true79, %if.else74
  %78 = load i32, ptr %isLegacy, align 4
  %cmp87 = icmp eq i32 %78, 0
  br i1 %cmp87, label %if.then89, label %if.end110

if.then89:                                        ; preds = %if.end86
  %79 = load i32, ptr %bTemp, align 4
  %tobool90 = icmp ne i32 %79, 0
  br i1 %tobool90, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then89
  br label %cond.end

cond.false:                                       ; preds = %if.then89
  %80 = load ptr, ptr %zDb, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %80, %cond.false ]
  %call91 = call i32 @renameResolveTrigger(ptr noundef %sParse, ptr noundef %cond)
  store i32 %call91, ptr %rc, align 4
  %81 = load i32, ptr %rc, align 4
  %cmp92 = icmp eq i32 %81, 0
  br i1 %cmp92, label %if.then94, label %if.end109

if.then94:                                        ; preds = %cond.end
  %82 = load ptr, ptr %pTrigger, align 8
  call void @renameWalkTrigger(ptr noundef %sWalker, ptr noundef %82)
  %83 = load ptr, ptr %pTrigger, align 8
  %step_list = getelementptr inbounds nuw %struct.Trigger, ptr %83, i32 0, i32 8
  %84 = load ptr, ptr %step_list, align 8
  store ptr %84, ptr %pStep, align 8
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc107, %if.then94
  %85 = load ptr, ptr %pStep, align 8
  %tobool96 = icmp ne ptr %85, null
  br i1 %tobool96, label %for.body97, label %for.end108

for.body97:                                       ; preds = %for.cond95
  %86 = load ptr, ptr %pStep, align 8
  %zTarget = getelementptr inbounds nuw %struct.TriggerStep, ptr %86, i32 0, i32 4
  %87 = load ptr, ptr %zTarget, align 8
  %tobool98 = icmp ne ptr %87, null
  br i1 %tobool98, label %land.lhs.true99, label %if.end106

land.lhs.true99:                                  ; preds = %for.body97
  %88 = load ptr, ptr %pStep, align 8
  %zTarget100 = getelementptr inbounds nuw %struct.TriggerStep, ptr %88, i32 0, i32 4
  %89 = load ptr, ptr %zTarget100, align 8
  %90 = load ptr, ptr %zOld, align 8
  %call101 = call i32 @sqlite3_stricmp(ptr noundef %89, ptr noundef %90)
  %cmp102 = icmp eq i32 0, %call101
  br i1 %cmp102, label %if.then104, label %if.end106

if.then104:                                       ; preds = %land.lhs.true99
  %91 = load ptr, ptr %pStep, align 8
  %zTarget105 = getelementptr inbounds nuw %struct.TriggerStep, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %zTarget105, align 8
  call void @renameTokenFind(ptr noundef %sParse, ptr noundef %sCtx, ptr noundef %92)
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %land.lhs.true99, %for.body97
  br label %for.inc107

for.inc107:                                       ; preds = %if.end106
  %93 = load ptr, ptr %pStep, align 8
  %pNext = getelementptr inbounds nuw %struct.TriggerStep, ptr %93, i32 0, i32 10
  %94 = load ptr, ptr %pNext, align 8
  store ptr %94, ptr %pStep, align 8
  br label %for.cond95, !llvm.loop !8

for.end108:                                       ; preds = %for.cond95
  br label %if.end109

if.end109:                                        ; preds = %for.end108, %cond.end
  br label %if.end110

if.end110:                                        ; preds = %if.end109, %if.end86
  br label %if.end111

if.end111:                                        ; preds = %if.end110, %if.end73
  br label %if.end112

if.end112:                                        ; preds = %if.end111, %if.end62
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then
  %95 = load i32, ptr %rc, align 4
  %cmp114 = icmp eq i32 %95, 0
  br i1 %cmp114, label %if.then116, label %if.end118

if.then116:                                       ; preds = %if.end113
  %96 = load ptr, ptr %context.addr, align 8
  %97 = load ptr, ptr %zInput, align 8
  %98 = load ptr, ptr %zNew, align 8
  %99 = load i32, ptr %bQuote, align 4
  %call117 = call i32 @renameEditSql(ptr noundef %96, ptr noundef %sCtx, ptr noundef %97, ptr noundef %98, i32 noundef %99)
  store i32 %call117, ptr %rc, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end113
  %100 = load i32, ptr %rc, align 4
  %cmp119 = icmp ne i32 %100, 0
  br i1 %cmp119, label %if.then121, label %if.end128

if.then121:                                       ; preds = %if.end118
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  %101 = load ptr, ptr %zErrMsg, align 8
  %tobool122 = icmp ne ptr %101, null
  br i1 %tobool122, label %if.then123, label %if.else126

if.then123:                                       ; preds = %if.then121
  %102 = load ptr, ptr %context.addr, align 8
  %103 = load ptr, ptr %argv.addr, align 8
  %arrayidx124 = getelementptr inbounds ptr, ptr %103, i64 1
  %104 = load ptr, ptr %arrayidx124, align 8
  %105 = load ptr, ptr %argv.addr, align 8
  %arrayidx125 = getelementptr inbounds ptr, ptr %105, i64 2
  %106 = load ptr, ptr %arrayidx125, align 8
  call void @renameColumnParseError(ptr noundef %102, i32 noundef 0, ptr noundef %104, ptr noundef %106, ptr noundef %sParse)
  br label %if.end127

if.else126:                                       ; preds = %if.then121
  %107 = load ptr, ptr %context.addr, align 8
  %108 = load i32, ptr %rc, align 4
  call void @sqlite3_result_error_code(ptr noundef %107, i32 noundef %108)
  br label %if.end127

if.end127:                                        ; preds = %if.else126, %if.then123
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end118
  call void @renameParseCleanup(ptr noundef %sParse)
  %109 = load ptr, ptr %db, align 8
  %pList = getelementptr inbounds nuw %struct.RenameCtx, ptr %sCtx, i32 0, i32 0
  %110 = load ptr, ptr %pList, align 8
  call void @renameTokenFree(ptr noundef %109, ptr noundef %110)
  %111 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %111)
  %112 = load ptr, ptr %xAuth, align 8
  %113 = load ptr, ptr %db, align 8
  %xAuth129 = getelementptr inbounds nuw %struct.sqlite3, ptr %113, i32 0, i32 62
  store ptr %112, ptr %xAuth129, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.end128, %land.lhs.true11, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @renameParseSql(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @renameTokenFind(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameResolveTrigger(ptr noundef, ptr noundef) #0

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

; Function Attrs: nounwind uwtable
declare hidden i32 @renameTableExprCb(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @renameTableSelectCb(ptr noundef, ptr noundef) #0

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
