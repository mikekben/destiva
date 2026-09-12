; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SelectDest = type { i8, i32, i32, i32, ptr, ptr }
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
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.IdList = type { ptr, i32 }
%struct.IdList_item = type { ptr, i32 }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Upsert = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.SrcList = type { i32, i32, [1 x %struct.SrcList_item] }
%struct.SrcList_item = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.anon, i32, ptr, ptr, i64, %union.anon.0, ptr }
%struct.anon = type { i8, i8, [2 x i8] }
%union.anon.0 = type { ptr }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }

@.str.807 = external hidden unnamed_addr constant [32 x i8], align 1
@.str.808 = external hidden unnamed_addr constant [52 x i8], align 1
@.str.809 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.810 = external hidden unnamed_addr constant [46 x i8], align 1
@.str.811 = external hidden unnamed_addr constant [14 x i8], align 1

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
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsRowid(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SrcListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3IdListDelete(ptr noundef, ptr noundef) #0

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
declare hidden void @sqlite3UpsertDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Select(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3Insert(ptr noundef %pParse, ptr noundef %pTabList, ptr noundef %pSelect, ptr noundef %pColumn, i32 noundef %onError, ptr noundef %pUpsert) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTabList.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %pColumn.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %pUpsert.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %v = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %nColumn = alloca i32, align 4
  %nHidden = alloca i32, align 4
  %iDataCur = alloca i32, align 4
  %iIdxCur = alloca i32, align 4
  %ipkColumn = alloca i32, align 4
  %endOfLoop = alloca i32, align 4
  %srcTab = alloca i32, align 4
  %addrInsTop = alloca i32, align 4
  %addrCont = alloca i32, align 4
  %dest = alloca %struct.SelectDest, align 8
  %iDb = alloca i32, align 4
  %useTempTable = alloca i8, align 1
  %appendFlag = alloca i8, align 1
  %withoutRowid = alloca i8, align 1
  %bIdListInOrder = alloca i8, align 1
  %pList = alloca ptr, align 8
  %regFromSelect = alloca i32, align 4
  %regAutoinc = alloca i32, align 4
  %regRowCount = alloca i32, align 4
  %regIns = alloca i32, align 4
  %regRowid = alloca i32, align 4
  %regData = alloca i32, align 4
  %aRegIdx = alloca ptr, align 8
  %isView = alloca i32, align 4
  %pTrigger = alloca ptr, align 8
  %tmask = alloca i32, align 4
  %regYield = alloca i32, align 4
  %addrTop = alloca i32, align 4
  %rc = alloca i32, align 4
  %regRec = alloca i32, align 4
  %regTempRowid = alloca i32, align 4
  %addrL = alloca i32, align 4
  %sNC = alloca %struct.NameContext, align 8
  %nIdx = alloca i32, align 4
  %regCols = alloca i32, align 4
  %addr1 = alloca i32, align 4
  %pIpk = alloca ptr, align 8
  %addr1468 = alloca i32, align 4
  %iRegStore = alloca i32, align 4
  %pVTab = alloca ptr, align 8
  %isReplace = alloca i32, align 4
  %bUseSeek = alloca i32, align 4
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTabList, ptr %pTabList.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store ptr %pColumn, ptr %pColumn.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store ptr %pUpsert, ptr %pUpsert.addr, align 8
  store i32 0, ptr %nHidden, align 4
  store i32 0, ptr %iDataCur, align 4
  store i32 0, ptr %iIdxCur, align 4
  store i32 -1, ptr %ipkColumn, align 4
  store i32 0, ptr %srcTab, align 4
  store i32 0, ptr %addrInsTop, align 4
  store i32 0, ptr %addrCont, align 4
  store i8 0, ptr %useTempTable, align 1
  store i8 0, ptr %appendFlag, align 1
  store ptr null, ptr %pList, align 8
  store i32 0, ptr %regFromSelect, align 4
  store i32 0, ptr %regAutoinc, align 4
  store i32 0, ptr %regRowCount, align 4
  store ptr null, ptr %aRegIdx, align 8
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
  br label %insert_cleanup

if.end:                                           ; preds = %lor.lhs.false
  %iSDParm = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  store i32 0, ptr %iSDParm, align 4
  %6 = load ptr, ptr %pSelect.addr, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %pSelect.addr, align 8
  %selFlags = getelementptr inbounds nuw %struct.Select, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %selFlags, align 4
  %and = and i32 %8, 512
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.lhs.true5, label %if.end10

land.lhs.true5:                                   ; preds = %land.lhs.true
  %9 = load ptr, ptr %pSelect.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pPrior, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then8, label %if.end10

if.then8:                                         ; preds = %land.lhs.true5
  %11 = load ptr, ptr %pSelect.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pEList, align 8
  store ptr %12, ptr %pList, align 8
  %13 = load ptr, ptr %pSelect.addr, align 8
  %pEList9 = getelementptr inbounds nuw %struct.Select, ptr %13, i32 0, i32 0
  store ptr null, ptr %pEList9, align 8
  %14 = load ptr, ptr %db, align 8
  %15 = load ptr, ptr %pSelect.addr, align 8
  call void @sqlite3SelectDelete(ptr noundef %14, ptr noundef %15)
  store ptr null, ptr %pSelect.addr, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %land.lhs.true5, %land.lhs.true, %if.end
  %16 = load ptr, ptr %pParse.addr, align 8
  %17 = load ptr, ptr %pTabList.addr, align 8
  %call = call ptr @sqlite3SrcListLookup(ptr noundef %16, ptr noundef %17)
  store ptr %call, ptr %pTab, align 8
  %18 = load ptr, ptr %pTab, align 8
  %cmp11 = icmp eq ptr %18, null
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  br label %insert_cleanup

if.end14:                                         ; preds = %if.end10
  %19 = load ptr, ptr %db, align 8
  %20 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 20
  %21 = load ptr, ptr %pSchema, align 8
  %call15 = call i32 @sqlite3SchemaToIndex(ptr noundef %19, ptr noundef %21)
  store i32 %call15, ptr %iDb, align 4
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %zName, align 8
  %25 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %aDb, align 8
  %27 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %26, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %28 = load ptr, ptr %zDbSName, align 8
  %call16 = call i32 @sqlite3AuthCheck(ptr noundef %22, i32 noundef 18, ptr noundef %24, ptr noundef null, ptr noundef %28)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  br label %insert_cleanup

if.end19:                                         ; preds = %if.end14
  %29 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 9
  %30 = load i32, ptr %tabFlags, align 8
  %and20 = and i32 %30, 32
  %cmp21 = icmp eq i32 %and20, 0
  %lnot = xor i1 %cmp21, true
  %lnot.ext = zext i1 %lnot to i32
  %conv23 = trunc i32 %lnot.ext to i8
  store i8 %conv23, ptr %withoutRowid, align 1
  %31 = load ptr, ptr %pParse.addr, align 8
  %32 = load ptr, ptr %pTab, align 8
  %call24 = call ptr @sqlite3TriggersExist(ptr noundef %31, ptr noundef %32, i32 noundef 123, ptr noundef null, ptr noundef %tmask)
  store ptr %call24, ptr %pTrigger, align 8
  %33 = load ptr, ptr %pTab, align 8
  %pSelect25 = getelementptr inbounds nuw %struct.Table, ptr %33, i32 0, i32 3
  %34 = load ptr, ptr %pSelect25, align 8
  %cmp26 = icmp ne ptr %34, null
  %conv27 = zext i1 %cmp26 to i32
  store i32 %conv27, ptr %isView, align 4
  %35 = load ptr, ptr %pParse.addr, align 8
  %36 = load ptr, ptr %pTab, align 8
  %call28 = call i32 @sqlite3ViewGetColumnNames(ptr noundef %35, ptr noundef %36)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end19
  br label %insert_cleanup

if.end31:                                         ; preds = %if.end19
  %37 = load ptr, ptr %pParse.addr, align 8
  %38 = load ptr, ptr %pTab, align 8
  %39 = load i32, ptr %tmask, align 4
  %call32 = call i32 @sqlite3IsReadOnly(ptr noundef %37, ptr noundef %38, i32 noundef %39)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end31
  br label %insert_cleanup

if.end35:                                         ; preds = %if.end31
  %40 = load ptr, ptr %pParse.addr, align 8
  %call36 = call ptr @sqlite3GetVdbe(ptr noundef %40)
  store ptr %call36, ptr %v, align 8
  %41 = load ptr, ptr %v, align 8
  %cmp37 = icmp eq ptr %41, null
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %insert_cleanup

if.end40:                                         ; preds = %if.end35
  %42 = load ptr, ptr %pParse.addr, align 8
  %nested = getelementptr inbounds nuw %struct.Parse, ptr %42, i32 0, i32 6
  %43 = load i8, ptr %nested, align 2
  %conv41 = zext i8 %43 to i32
  %cmp42 = icmp eq i32 %conv41, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  %44 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeCountChanges(ptr noundef %44)
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end40
  %45 = load ptr, ptr %pParse.addr, align 8
  %46 = load ptr, ptr %pSelect.addr, align 8
  %tobool46 = icmp ne ptr %46, null
  br i1 %tobool46, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end45
  %47 = load ptr, ptr %pTrigger, align 8
  %tobool47 = icmp ne ptr %47, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end45
  %48 = phi i1 [ true, %if.end45 ], [ %tobool47, %lor.rhs ]
  %lor.ext = zext i1 %48 to i32
  %49 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %45, i32 noundef %lor.ext, i32 noundef %49)
  %50 = load ptr, ptr %pColumn.addr, align 8
  %cmp48 = icmp eq ptr %50, null
  br i1 %cmp48, label %land.lhs.true50, label %if.end54

land.lhs.true50:                                  ; preds = %lor.end
  %51 = load ptr, ptr %pParse.addr, align 8
  %52 = load ptr, ptr %pTab, align 8
  %53 = load ptr, ptr %pSelect.addr, align 8
  %54 = load i32, ptr %onError.addr, align 4
  %55 = load i32, ptr %iDb, align 4
  %call51 = call i32 @xferOptimization(ptr noundef %51, ptr noundef %52, ptr noundef %53, i32 noundef %54, i32 noundef %55)
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %land.lhs.true50
  br label %insert_end

if.end54:                                         ; preds = %land.lhs.true50, %lor.end
  %56 = load ptr, ptr %pParse.addr, align 8
  %57 = load i32, ptr %iDb, align 4
  %58 = load ptr, ptr %pTab, align 8
  %call55 = call i32 @autoIncBegin(ptr noundef %56, i32 noundef %57, ptr noundef %58)
  store i32 %call55, ptr %regAutoinc, align 4
  %59 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %59, i32 0, i32 18
  %60 = load i32, ptr %nMem, align 8
  %add = add nsw i32 %60, 1
  store i32 %add, ptr %regIns, align 4
  store i32 %add, ptr %regRowid, align 4
  %61 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %61, i32 0, i32 11
  %62 = load i16, ptr %nCol, align 2
  %conv56 = sext i16 %62 to i32
  %add57 = add nsw i32 %conv56, 1
  %63 = load ptr, ptr %pParse.addr, align 8
  %nMem58 = getelementptr inbounds nuw %struct.Parse, ptr %63, i32 0, i32 18
  %64 = load i32, ptr %nMem58, align 8
  %add59 = add nsw i32 %64, %add57
  store i32 %add59, ptr %nMem58, align 8
  %65 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %65, i32 0, i32 16
  %66 = load i32, ptr %nModuleArg, align 4
  %tobool60 = icmp ne i32 %66, 0
  br i1 %tobool60, label %if.then61, label %if.end64

if.then61:                                        ; preds = %if.end54
  %67 = load i32, ptr %regRowid, align 4
  %inc = add nsw i32 %67, 1
  store i32 %inc, ptr %regRowid, align 4
  %68 = load ptr, ptr %pParse.addr, align 8
  %nMem62 = getelementptr inbounds nuw %struct.Parse, ptr %68, i32 0, i32 18
  %69 = load i32, ptr %nMem62, align 8
  %inc63 = add nsw i32 %69, 1
  store i32 %inc63, ptr %nMem62, align 8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end54
  %70 = load i32, ptr %regRowid, align 4
  %add65 = add nsw i32 %70, 1
  store i32 %add65, ptr %regData, align 4
  %71 = load ptr, ptr %pTab, align 8
  %tabFlags66 = getelementptr inbounds nuw %struct.Table, ptr %71, i32 0, i32 9
  %72 = load i32, ptr %tabFlags66, align 8
  %and67 = and i32 %72, 128
  %cmp68 = icmp eq i32 %and67, 0
  %conv69 = zext i1 %cmp68 to i32
  %conv70 = trunc i32 %conv69 to i8
  store i8 %conv70, ptr %bIdListInOrder, align 1
  %73 = load ptr, ptr %pColumn.addr, align 8
  %tobool71 = icmp ne ptr %73, null
  br i1 %tobool71, label %if.then72, label %if.end140

if.then72:                                        ; preds = %if.end64
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then72
  %74 = load i32, ptr %i, align 4
  %75 = load ptr, ptr %pColumn.addr, align 8
  %nId = getelementptr inbounds nuw %struct.IdList, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %nId, align 8
  %cmp73 = icmp slt i32 %74, %76
  br i1 %cmp73, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %77 = load ptr, ptr %pColumn.addr, align 8
  %a = getelementptr inbounds nuw %struct.IdList, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %a, align 8
  %79 = load i32, ptr %i, align 4
  %idxprom75 = sext i32 %79 to i64
  %arrayidx76 = getelementptr inbounds %struct.IdList_item, ptr %78, i64 %idxprom75
  %idx = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx76, i32 0, i32 1
  store i32 -1, ptr %idx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %80 = load i32, ptr %i, align 4
  %inc77 = add nsw i32 %80, 1
  store i32 %inc77, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond78

for.cond78:                                       ; preds = %for.inc137, %for.end
  %81 = load i32, ptr %i, align 4
  %82 = load ptr, ptr %pColumn.addr, align 8
  %nId79 = getelementptr inbounds nuw %struct.IdList, ptr %82, i32 0, i32 1
  %83 = load i32, ptr %nId79, align 8
  %cmp80 = icmp slt i32 %81, %83
  br i1 %cmp80, label %for.body82, label %for.end139

for.body82:                                       ; preds = %for.cond78
  store i32 0, ptr %j, align 4
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc114, %for.body82
  %84 = load i32, ptr %j, align 4
  %85 = load ptr, ptr %pTab, align 8
  %nCol84 = getelementptr inbounds nuw %struct.Table, ptr %85, i32 0, i32 11
  %86 = load i16, ptr %nCol84, align 2
  %conv85 = sext i16 %86 to i32
  %cmp86 = icmp slt i32 %84, %conv85
  br i1 %cmp86, label %for.body88, label %for.end116

for.body88:                                       ; preds = %for.cond83
  %87 = load ptr, ptr %pColumn.addr, align 8
  %a89 = getelementptr inbounds nuw %struct.IdList, ptr %87, i32 0, i32 0
  %88 = load ptr, ptr %a89, align 8
  %89 = load i32, ptr %i, align 4
  %idxprom90 = sext i32 %89 to i64
  %arrayidx91 = getelementptr inbounds %struct.IdList_item, ptr %88, i64 %idxprom90
  %zName92 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx91, i32 0, i32 0
  %90 = load ptr, ptr %zName92, align 8
  %91 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %91, i32 0, i32 1
  %92 = load ptr, ptr %aCol, align 8
  %93 = load i32, ptr %j, align 4
  %idxprom93 = sext i32 %93 to i64
  %arrayidx94 = getelementptr inbounds %struct.Column, ptr %92, i64 %idxprom93
  %zName95 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx94, i32 0, i32 0
  %94 = load ptr, ptr %zName95, align 8
  %call96 = call i32 @sqlite3StrICmp(ptr noundef %90, ptr noundef %94)
  %cmp97 = icmp eq i32 %call96, 0
  br i1 %cmp97, label %if.then99, label %if.end113

if.then99:                                        ; preds = %for.body88
  %95 = load i32, ptr %j, align 4
  %96 = load ptr, ptr %pColumn.addr, align 8
  %a100 = getelementptr inbounds nuw %struct.IdList, ptr %96, i32 0, i32 0
  %97 = load ptr, ptr %a100, align 8
  %98 = load i32, ptr %i, align 4
  %idxprom101 = sext i32 %98 to i64
  %arrayidx102 = getelementptr inbounds %struct.IdList_item, ptr %97, i64 %idxprom101
  %idx103 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx102, i32 0, i32 1
  store i32 %95, ptr %idx103, align 8
  %99 = load i32, ptr %i, align 4
  %100 = load i32, ptr %j, align 4
  %cmp104 = icmp ne i32 %99, %100
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then99
  store i8 0, ptr %bIdListInOrder, align 1
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.then99
  %101 = load i32, ptr %j, align 4
  %102 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %102, i32 0, i32 10
  %103 = load i16, ptr %iPKey, align 4
  %conv108 = sext i16 %103 to i32
  %cmp109 = icmp eq i32 %101, %conv108
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %if.end107
  %104 = load i32, ptr %i, align 4
  store i32 %104, ptr %ipkColumn, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %if.end107
  br label %for.end116

if.end113:                                        ; preds = %for.body88
  br label %for.inc114

for.inc114:                                       ; preds = %if.end113
  %105 = load i32, ptr %j, align 4
  %inc115 = add nsw i32 %105, 1
  store i32 %inc115, ptr %j, align 4
  br label %for.cond83, !llvm.loop !8

for.end116:                                       ; preds = %if.end112, %for.cond83
  %106 = load i32, ptr %j, align 4
  %107 = load ptr, ptr %pTab, align 8
  %nCol117 = getelementptr inbounds nuw %struct.Table, ptr %107, i32 0, i32 11
  %108 = load i16, ptr %nCol117, align 2
  %conv118 = sext i16 %108 to i32
  %cmp119 = icmp sge i32 %106, %conv118
  br i1 %cmp119, label %if.then121, label %if.end136

if.then121:                                       ; preds = %for.end116
  %109 = load ptr, ptr %pColumn.addr, align 8
  %a122 = getelementptr inbounds nuw %struct.IdList, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %a122, align 8
  %111 = load i32, ptr %i, align 4
  %idxprom123 = sext i32 %111 to i64
  %arrayidx124 = getelementptr inbounds %struct.IdList_item, ptr %110, i64 %idxprom123
  %zName125 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx124, i32 0, i32 0
  %112 = load ptr, ptr %zName125, align 8
  %call126 = call i32 @sqlite3IsRowid(ptr noundef %112)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %land.lhs.true128, label %if.else

land.lhs.true128:                                 ; preds = %if.then121
  %113 = load i8, ptr %withoutRowid, align 1
  %tobool129 = icmp ne i8 %113, 0
  br i1 %tobool129, label %if.else, label %if.then130

if.then130:                                       ; preds = %land.lhs.true128
  %114 = load i32, ptr %i, align 4
  store i32 %114, ptr %ipkColumn, align 4
  store i8 0, ptr %bIdListInOrder, align 1
  br label %if.end135

if.else:                                          ; preds = %land.lhs.true128, %if.then121
  %115 = load ptr, ptr %pParse.addr, align 8
  %116 = load ptr, ptr %pTabList.addr, align 8
  %117 = load ptr, ptr %pColumn.addr, align 8
  %a131 = getelementptr inbounds nuw %struct.IdList, ptr %117, i32 0, i32 0
  %118 = load ptr, ptr %a131, align 8
  %119 = load i32, ptr %i, align 4
  %idxprom132 = sext i32 %119 to i64
  %arrayidx133 = getelementptr inbounds %struct.IdList_item, ptr %118, i64 %idxprom132
  %zName134 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx133, i32 0, i32 0
  %120 = load ptr, ptr %zName134, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %115, ptr noundef @.str.807, ptr noundef %116, i32 noundef 0, ptr noundef %120)
  %121 = load ptr, ptr %pParse.addr, align 8
  %checkSchema = getelementptr inbounds nuw %struct.Parse, ptr %121, i32 0, i32 5
  store i8 1, ptr %checkSchema, align 1
  br label %insert_cleanup

if.end135:                                        ; preds = %if.then130
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %for.end116
  br label %for.inc137

for.inc137:                                       ; preds = %if.end136
  %122 = load i32, ptr %i, align 4
  %inc138 = add nsw i32 %122, 1
  store i32 %inc138, ptr %i, align 4
  br label %for.cond78, !llvm.loop !9

for.end139:                                       ; preds = %for.cond78
  br label %if.end140

if.end140:                                        ; preds = %for.end139, %if.end64
  %123 = load ptr, ptr %pSelect.addr, align 8
  %tobool141 = icmp ne ptr %123, null
  br i1 %tobool141, label %if.then142, label %if.else184

if.then142:                                       ; preds = %if.end140
  %124 = load ptr, ptr %pParse.addr, align 8
  %nMem143 = getelementptr inbounds nuw %struct.Parse, ptr %124, i32 0, i32 18
  %125 = load i32, ptr %nMem143, align 8
  %inc144 = add nsw i32 %125, 1
  store i32 %inc144, ptr %nMem143, align 8
  store i32 %inc144, ptr %regYield, align 4
  %126 = load ptr, ptr %v, align 8
  %call145 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %126)
  %add146 = add nsw i32 %call145, 1
  store i32 %add146, ptr %addrTop, align 4
  %127 = load ptr, ptr %v, align 8
  %128 = load i32, ptr %regYield, align 4
  %129 = load i32, ptr %addrTop, align 4
  %call147 = call i32 @sqlite3VdbeAddOp3(ptr noundef %127, i32 noundef 13, i32 noundef %128, i32 noundef 0, i32 noundef %129)
  %130 = load i32, ptr %regYield, align 4
  call void @sqlite3SelectDestInit(ptr noundef %dest, i32 noundef 13, i32 noundef %130)
  %131 = load i8, ptr %bIdListInOrder, align 1
  %conv148 = zext i8 %131 to i32
  %tobool149 = icmp ne i32 %conv148, 0
  br i1 %tobool149, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then142
  %132 = load i32, ptr %regData, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then142
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %132, %cond.true ], [ 0, %cond.false ]
  %iSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 2
  store i32 %cond, ptr %iSdst, align 8
  %133 = load ptr, ptr %pTab, align 8
  %nCol150 = getelementptr inbounds nuw %struct.Table, ptr %133, i32 0, i32 11
  %134 = load i16, ptr %nCol150, align 2
  %conv151 = sext i16 %134 to i32
  %nSdst = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 3
  store i32 %conv151, ptr %nSdst, align 4
  %135 = load ptr, ptr %pParse.addr, align 8
  %136 = load ptr, ptr %pSelect.addr, align 8
  %call152 = call i32 @sqlite3Select(ptr noundef %135, ptr noundef %136, ptr noundef %dest)
  store i32 %call152, ptr %rc, align 4
  %iSdst153 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 2
  %137 = load i32, ptr %iSdst153, align 8
  store i32 %137, ptr %regFromSelect, align 4
  %138 = load i32, ptr %rc, align 4
  %tobool154 = icmp ne i32 %138, 0
  br i1 %tobool154, label %if.then162, label %lor.lhs.false155

lor.lhs.false155:                                 ; preds = %cond.end
  %139 = load ptr, ptr %db, align 8
  %mallocFailed156 = getelementptr inbounds nuw %struct.sqlite3, ptr %139, i32 0, i32 19
  %140 = load i8, ptr %mallocFailed156, align 1
  %conv157 = zext i8 %140 to i32
  %tobool158 = icmp ne i32 %conv157, 0
  br i1 %tobool158, label %if.then162, label %lor.lhs.false159

lor.lhs.false159:                                 ; preds = %lor.lhs.false155
  %141 = load ptr, ptr %pParse.addr, align 8
  %nErr160 = getelementptr inbounds nuw %struct.Parse, ptr %141, i32 0, i32 16
  %142 = load i32, ptr %nErr160, align 8
  %tobool161 = icmp ne i32 %142, 0
  br i1 %tobool161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %lor.lhs.false159, %lor.lhs.false155, %cond.end
  br label %insert_cleanup

if.end163:                                        ; preds = %lor.lhs.false159
  %143 = load ptr, ptr %v, align 8
  %144 = load i32, ptr %regYield, align 4
  call void @sqlite3VdbeEndCoroutine(ptr noundef %143, i32 noundef %144)
  %145 = load ptr, ptr %v, align 8
  %146 = load i32, ptr %addrTop, align 4
  %sub = sub nsw i32 %146, 1
  call void @sqlite3VdbeJumpHere(ptr noundef %145, i32 noundef %sub)
  %147 = load ptr, ptr %pSelect.addr, align 8
  %pEList164 = getelementptr inbounds nuw %struct.Select, ptr %147, i32 0, i32 0
  %148 = load ptr, ptr %pEList164, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %148, i32 0, i32 0
  %149 = load i32, ptr %nExpr, align 8
  store i32 %149, ptr %nColumn, align 4
  %150 = load ptr, ptr %pTrigger, align 8
  %tobool165 = icmp ne ptr %150, null
  br i1 %tobool165, label %if.then169, label %lor.lhs.false166

lor.lhs.false166:                                 ; preds = %if.end163
  %151 = load ptr, ptr %pParse.addr, align 8
  %152 = load i32, ptr %iDb, align 4
  %153 = load ptr, ptr %pTab, align 8
  %call167 = call i32 @readsTable(ptr noundef %151, i32 noundef %152, ptr noundef %153)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.then169, label %if.end170

if.then169:                                       ; preds = %lor.lhs.false166, %if.end163
  store i8 1, ptr %useTempTable, align 1
  br label %if.end170

if.end170:                                        ; preds = %if.then169, %lor.lhs.false166
  %154 = load i8, ptr %useTempTable, align 1
  %tobool171 = icmp ne i8 %154, 0
  br i1 %tobool171, label %if.then172, label %if.end183

if.then172:                                       ; preds = %if.end170
  %155 = load ptr, ptr %pParse.addr, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %155, i32 0, i32 17
  %156 = load i32, ptr %nTab, align 4
  %inc173 = add nsw i32 %156, 1
  store i32 %inc173, ptr %nTab, align 4
  store i32 %156, ptr %srcTab, align 4
  %157 = load ptr, ptr %pParse.addr, align 8
  %call174 = call i32 @sqlite3GetTempReg(ptr noundef %157)
  store i32 %call174, ptr %regRec, align 4
  %158 = load ptr, ptr %pParse.addr, align 8
  %call175 = call i32 @sqlite3GetTempReg(ptr noundef %158)
  store i32 %call175, ptr %regTempRowid, align 4
  %159 = load ptr, ptr %v, align 8
  %160 = load i32, ptr %srcTab, align 4
  %161 = load i32, ptr %nColumn, align 4
  %call176 = call i32 @sqlite3VdbeAddOp2(ptr noundef %159, i32 noundef 112, i32 noundef %160, i32 noundef %161)
  %162 = load ptr, ptr %v, align 8
  %iSDParm177 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %163 = load i32, ptr %iSDParm177, align 4
  %call178 = call i32 @sqlite3VdbeAddOp1(ptr noundef %162, i32 noundef 14, i32 noundef %163)
  store i32 %call178, ptr %addrL, align 4
  %164 = load ptr, ptr %v, align 8
  %165 = load i32, ptr %regFromSelect, align 4
  %166 = load i32, ptr %nColumn, align 4
  %167 = load i32, ptr %regRec, align 4
  %call179 = call i32 @sqlite3VdbeAddOp3(ptr noundef %164, i32 noundef 92, i32 noundef %165, i32 noundef %166, i32 noundef %167)
  %168 = load ptr, ptr %v, align 8
  %169 = load i32, ptr %srcTab, align 4
  %170 = load i32, ptr %regTempRowid, align 4
  %call180 = call i32 @sqlite3VdbeAddOp2(ptr noundef %168, i32 noundef 121, i32 noundef %169, i32 noundef %170)
  %171 = load ptr, ptr %v, align 8
  %172 = load i32, ptr %srcTab, align 4
  %173 = load i32, ptr %regRec, align 4
  %174 = load i32, ptr %regTempRowid, align 4
  %call181 = call i32 @sqlite3VdbeAddOp3(ptr noundef %171, i32 noundef 122, i32 noundef %172, i32 noundef %173, i32 noundef %174)
  %175 = load ptr, ptr %v, align 8
  %176 = load i32, ptr %addrL, align 4
  %call182 = call i32 @sqlite3VdbeGoto(ptr noundef %175, i32 noundef %176)
  %177 = load ptr, ptr %v, align 8
  %178 = load i32, ptr %addrL, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %177, i32 noundef %178)
  %179 = load ptr, ptr %pParse.addr, align 8
  %180 = load i32, ptr %regRec, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %179, i32 noundef %180)
  %181 = load ptr, ptr %pParse.addr, align 8
  %182 = load i32, ptr %regTempRowid, align 4
  call void @sqlite3ReleaseTempReg(ptr noundef %181, i32 noundef %182)
  br label %if.end183

if.end183:                                        ; preds = %if.then172, %if.end170
  br label %if.end195

if.else184:                                       ; preds = %if.end140
  call void @llvm.memset.p0.i64(ptr align 8 %sNC, i8 0, i64 56, i1 false)
  %183 = load ptr, ptr %pParse.addr, align 8
  %pParse185 = getelementptr inbounds nuw %struct.NameContext, ptr %sNC, i32 0, i32 0
  store ptr %183, ptr %pParse185, align 8
  store i32 -1, ptr %srcTab, align 4
  %184 = load ptr, ptr %pList, align 8
  %tobool186 = icmp ne ptr %184, null
  br i1 %tobool186, label %if.then187, label %if.else193

if.then187:                                       ; preds = %if.else184
  %185 = load ptr, ptr %pList, align 8
  %nExpr188 = getelementptr inbounds nuw %struct.ExprList, ptr %185, i32 0, i32 0
  %186 = load i32, ptr %nExpr188, align 8
  store i32 %186, ptr %nColumn, align 4
  %187 = load ptr, ptr %pList, align 8
  %call189 = call i32 @sqlite3ResolveExprListNames(ptr noundef %sNC, ptr noundef %187)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.then187
  br label %insert_cleanup

if.end192:                                        ; preds = %if.then187
  br label %if.end194

if.else193:                                       ; preds = %if.else184
  store i32 0, ptr %nColumn, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.else193, %if.end192
  br label %if.end195

if.end195:                                        ; preds = %if.end194, %if.end183
  %188 = load ptr, ptr %pColumn.addr, align 8
  %cmp196 = icmp eq ptr %188, null
  br i1 %cmp196, label %land.lhs.true198, label %if.end204

land.lhs.true198:                                 ; preds = %if.end195
  %189 = load i32, ptr %nColumn, align 4
  %cmp199 = icmp sgt i32 %189, 0
  br i1 %cmp199, label %if.then201, label %if.end204

if.then201:                                       ; preds = %land.lhs.true198
  %190 = load ptr, ptr %pTab, align 8
  %iPKey202 = getelementptr inbounds nuw %struct.Table, ptr %190, i32 0, i32 10
  %191 = load i16, ptr %iPKey202, align 4
  %conv203 = sext i16 %191 to i32
  store i32 %conv203, ptr %ipkColumn, align 4
  br label %if.end204

if.end204:                                        ; preds = %if.then201, %land.lhs.true198, %if.end195
  store i32 0, ptr %i, align 4
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc220, %if.end204
  %192 = load i32, ptr %i, align 4
  %193 = load ptr, ptr %pTab, align 8
  %nCol206 = getelementptr inbounds nuw %struct.Table, ptr %193, i32 0, i32 11
  %194 = load i16, ptr %nCol206, align 2
  %conv207 = sext i16 %194 to i32
  %cmp208 = icmp slt i32 %192, %conv207
  br i1 %cmp208, label %for.body210, label %for.end222

for.body210:                                      ; preds = %for.cond205
  %195 = load ptr, ptr %pTab, align 8
  %aCol211 = getelementptr inbounds nuw %struct.Table, ptr %195, i32 0, i32 1
  %196 = load ptr, ptr %aCol211, align 8
  %197 = load i32, ptr %i, align 4
  %idxprom212 = sext i32 %197 to i64
  %arrayidx213 = getelementptr inbounds %struct.Column, ptr %196, i64 %idxprom212
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %arrayidx213, i32 0, i32 6
  %198 = load i8, ptr %colFlags, align 1
  %conv214 = zext i8 %198 to i32
  %and215 = and i32 %conv214, 2
  %cmp216 = icmp ne i32 %and215, 0
  %199 = zext i1 %cmp216 to i64
  %cond218 = select i1 %cmp216, i32 1, i32 0
  %200 = load i32, ptr %nHidden, align 4
  %add219 = add nsw i32 %200, %cond218
  store i32 %add219, ptr %nHidden, align 4
  br label %for.inc220

for.inc220:                                       ; preds = %for.body210
  %201 = load i32, ptr %i, align 4
  %inc221 = add nsw i32 %201, 1
  store i32 %inc221, ptr %i, align 4
  br label %for.cond205, !llvm.loop !10

for.end222:                                       ; preds = %for.cond205
  %202 = load ptr, ptr %pColumn.addr, align 8
  %cmp223 = icmp eq ptr %202, null
  br i1 %cmp223, label %land.lhs.true225, label %if.end237

land.lhs.true225:                                 ; preds = %for.end222
  %203 = load i32, ptr %nColumn, align 4
  %tobool226 = icmp ne i32 %203, 0
  br i1 %tobool226, label %land.lhs.true227, label %if.end237

land.lhs.true227:                                 ; preds = %land.lhs.true225
  %204 = load i32, ptr %nColumn, align 4
  %205 = load ptr, ptr %pTab, align 8
  %nCol228 = getelementptr inbounds nuw %struct.Table, ptr %205, i32 0, i32 11
  %206 = load i16, ptr %nCol228, align 2
  %conv229 = sext i16 %206 to i32
  %207 = load i32, ptr %nHidden, align 4
  %sub230 = sub nsw i32 %conv229, %207
  %cmp231 = icmp ne i32 %204, %sub230
  br i1 %cmp231, label %if.then233, label %if.end237

if.then233:                                       ; preds = %land.lhs.true227
  %208 = load ptr, ptr %pParse.addr, align 8
  %209 = load ptr, ptr %pTabList.addr, align 8
  %210 = load ptr, ptr %pTab, align 8
  %nCol234 = getelementptr inbounds nuw %struct.Table, ptr %210, i32 0, i32 11
  %211 = load i16, ptr %nCol234, align 2
  %conv235 = sext i16 %211 to i32
  %212 = load i32, ptr %nHidden, align 4
  %sub236 = sub nsw i32 %conv235, %212
  %213 = load i32, ptr %nColumn, align 4
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %208, ptr noundef @.str.808, ptr noundef %209, i32 noundef 0, i32 noundef %sub236, i32 noundef %213)
  br label %insert_cleanup

if.end237:                                        ; preds = %land.lhs.true227, %land.lhs.true225, %for.end222
  %214 = load ptr, ptr %pColumn.addr, align 8
  %cmp238 = icmp ne ptr %214, null
  br i1 %cmp238, label %land.lhs.true240, label %if.end246

land.lhs.true240:                                 ; preds = %if.end237
  %215 = load i32, ptr %nColumn, align 4
  %216 = load ptr, ptr %pColumn.addr, align 8
  %nId241 = getelementptr inbounds nuw %struct.IdList, ptr %216, i32 0, i32 1
  %217 = load i32, ptr %nId241, align 8
  %cmp242 = icmp ne i32 %215, %217
  br i1 %cmp242, label %if.then244, label %if.end246

if.then244:                                       ; preds = %land.lhs.true240
  %218 = load ptr, ptr %pParse.addr, align 8
  %219 = load i32, ptr %nColumn, align 4
  %220 = load ptr, ptr %pColumn.addr, align 8
  %nId245 = getelementptr inbounds nuw %struct.IdList, ptr %220, i32 0, i32 1
  %221 = load i32, ptr %nId245, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %218, ptr noundef @.str.809, i32 noundef %219, i32 noundef %221)
  br label %insert_cleanup

if.end246:                                        ; preds = %land.lhs.true240, %if.end237
  %222 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %222, i32 0, i32 7
  %223 = load i64, ptr %flags, align 8
  %and247 = and i64 %223, 128
  %cmp248 = icmp ne i64 %and247, 0
  br i1 %cmp248, label %land.lhs.true250, label %if.end259

land.lhs.true250:                                 ; preds = %if.end246
  %224 = load ptr, ptr %pParse.addr, align 8
  %nested251 = getelementptr inbounds nuw %struct.Parse, ptr %224, i32 0, i32 6
  %225 = load i8, ptr %nested251, align 2
  %tobool252 = icmp ne i8 %225, 0
  br i1 %tobool252, label %if.end259, label %land.lhs.true253

land.lhs.true253:                                 ; preds = %land.lhs.true250
  %226 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab = getelementptr inbounds nuw %struct.Parse, ptr %226, i32 0, i32 36
  %227 = load ptr, ptr %pTriggerTab, align 8
  %tobool254 = icmp ne ptr %227, null
  br i1 %tobool254, label %if.end259, label %if.then255

if.then255:                                       ; preds = %land.lhs.true253
  %228 = load ptr, ptr %pParse.addr, align 8
  %nMem256 = getelementptr inbounds nuw %struct.Parse, ptr %228, i32 0, i32 18
  %229 = load i32, ptr %nMem256, align 8
  %inc257 = add nsw i32 %229, 1
  store i32 %inc257, ptr %nMem256, align 8
  store i32 %inc257, ptr %regRowCount, align 4
  %230 = load ptr, ptr %v, align 8
  %231 = load i32, ptr %regRowCount, align 4
  %call258 = call i32 @sqlite3VdbeAddOp2(ptr noundef %230, i32 noundef 70, i32 noundef 0, i32 noundef %231)
  br label %if.end259

if.end259:                                        ; preds = %if.then255, %land.lhs.true253, %land.lhs.true250, %if.end246
  %232 = load i32, ptr %isView, align 4
  %tobool260 = icmp ne i32 %232, 0
  br i1 %tobool260, label %if.end289, label %if.then261

if.then261:                                       ; preds = %if.end259
  %233 = load ptr, ptr %pParse.addr, align 8
  %234 = load ptr, ptr %pTab, align 8
  %call262 = call i32 @sqlite3OpenTableAndIndices(ptr noundef %233, ptr noundef %234, i32 noundef 98, i8 noundef zeroext 0, i32 noundef -1, ptr noundef null, ptr noundef %iDataCur, ptr noundef %iIdxCur)
  store i32 %call262, ptr %nIdx, align 4
  %235 = load ptr, ptr %db, align 8
  %236 = load i32, ptr %nIdx, align 4
  %add263 = add nsw i32 %236, 2
  %conv264 = sext i32 %add263 to i64
  %mul = mul i64 4, %conv264
  %call265 = call ptr @sqlite3DbMallocRawNN(ptr noundef %235, i64 noundef %mul)
  store ptr %call265, ptr %aRegIdx, align 8
  %237 = load ptr, ptr %aRegIdx, align 8
  %cmp266 = icmp eq ptr %237, null
  br i1 %cmp266, label %if.then268, label %if.end269

if.then268:                                       ; preds = %if.then261
  br label %insert_cleanup

if.end269:                                        ; preds = %if.then261
  store i32 0, ptr %i, align 4
  %238 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %238, i32 0, i32 2
  %239 = load ptr, ptr %pIndex, align 8
  store ptr %239, ptr %pIdx, align 8
  br label %for.cond270

for.cond270:                                      ; preds = %for.inc282, %if.end269
  %240 = load i32, ptr %i, align 4
  %241 = load i32, ptr %nIdx, align 4
  %cmp271 = icmp slt i32 %240, %241
  br i1 %cmp271, label %for.body273, label %for.end284

for.body273:                                      ; preds = %for.cond270
  %242 = load ptr, ptr %pParse.addr, align 8
  %nMem274 = getelementptr inbounds nuw %struct.Parse, ptr %242, i32 0, i32 18
  %243 = load i32, ptr %nMem274, align 8
  %inc275 = add nsw i32 %243, 1
  store i32 %inc275, ptr %nMem274, align 8
  %244 = load ptr, ptr %aRegIdx, align 8
  %245 = load i32, ptr %i, align 4
  %idxprom276 = sext i32 %245 to i64
  %arrayidx277 = getelementptr inbounds i32, ptr %244, i64 %idxprom276
  store i32 %inc275, ptr %arrayidx277, align 4
  %246 = load ptr, ptr %pIdx, align 8
  %nColumn278 = getelementptr inbounds nuw %struct.Index, ptr %246, i32 0, i32 14
  %247 = load i16, ptr %nColumn278, align 8
  %conv279 = zext i16 %247 to i32
  %248 = load ptr, ptr %pParse.addr, align 8
  %nMem280 = getelementptr inbounds nuw %struct.Parse, ptr %248, i32 0, i32 18
  %249 = load i32, ptr %nMem280, align 8
  %add281 = add nsw i32 %249, %conv279
  store i32 %add281, ptr %nMem280, align 8
  br label %for.inc282

for.inc282:                                       ; preds = %for.body273
  %250 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %250, i32 0, i32 5
  %251 = load ptr, ptr %pNext, align 8
  store ptr %251, ptr %pIdx, align 8
  %252 = load i32, ptr %i, align 4
  %inc283 = add nsw i32 %252, 1
  store i32 %inc283, ptr %i, align 4
  br label %for.cond270, !llvm.loop !11

for.end284:                                       ; preds = %for.cond270
  %253 = load ptr, ptr %pParse.addr, align 8
  %nMem285 = getelementptr inbounds nuw %struct.Parse, ptr %253, i32 0, i32 18
  %254 = load i32, ptr %nMem285, align 8
  %inc286 = add nsw i32 %254, 1
  store i32 %inc286, ptr %nMem285, align 8
  %255 = load ptr, ptr %aRegIdx, align 8
  %256 = load i32, ptr %i, align 4
  %idxprom287 = sext i32 %256 to i64
  %arrayidx288 = getelementptr inbounds i32, ptr %255, i64 %idxprom287
  store i32 %inc286, ptr %arrayidx288, align 4
  br label %if.end289

if.end289:                                        ; preds = %for.end284, %if.end259
  %257 = load ptr, ptr %pUpsert.addr, align 8
  %tobool290 = icmp ne ptr %257, null
  br i1 %tobool290, label %if.then291, label %if.end311

if.then291:                                       ; preds = %if.end289
  %258 = load ptr, ptr %pTab, align 8
  %nModuleArg292 = getelementptr inbounds nuw %struct.Table, ptr %258, i32 0, i32 16
  %259 = load i32, ptr %nModuleArg292, align 4
  %tobool293 = icmp ne i32 %259, 0
  br i1 %tobool293, label %if.then294, label %if.end296

if.then294:                                       ; preds = %if.then291
  %260 = load ptr, ptr %pParse.addr, align 8
  %261 = load ptr, ptr %pTab, align 8
  %zName295 = getelementptr inbounds nuw %struct.Table, ptr %261, i32 0, i32 0
  %262 = load ptr, ptr %zName295, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %260, ptr noundef @.str.810, ptr noundef %262)
  br label %insert_cleanup

if.end296:                                        ; preds = %if.then291
  %263 = load ptr, ptr %pParse.addr, align 8
  %264 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTarget = getelementptr inbounds nuw %struct.Upsert, ptr %264, i32 0, i32 0
  %265 = load ptr, ptr %pUpsertTarget, align 8
  %call297 = call i32 @sqlite3HasExplicitNulls(ptr noundef %263, ptr noundef %265)
  %tobool298 = icmp ne i32 %call297, 0
  br i1 %tobool298, label %if.then299, label %if.end300

if.then299:                                       ; preds = %if.end296
  br label %insert_cleanup

if.end300:                                        ; preds = %if.end296
  %266 = load i32, ptr %iDataCur, align 4
  %267 = load ptr, ptr %pTabList.addr, align 8
  %a301 = getelementptr inbounds nuw %struct.SrcList, ptr %267, i32 0, i32 2
  %arrayidx302 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a301, i64 0, i64 0
  %iCursor = getelementptr inbounds nuw %struct.SrcList_item, ptr %arrayidx302, i32 0, i32 10
  store i32 %266, ptr %iCursor, align 8
  %268 = load ptr, ptr %pTabList.addr, align 8
  %269 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertSrc = getelementptr inbounds nuw %struct.Upsert, ptr %269, i32 0, i32 5
  store ptr %268, ptr %pUpsertSrc, align 8
  %270 = load i32, ptr %regData, align 4
  %271 = load ptr, ptr %pUpsert.addr, align 8
  %regData303 = getelementptr inbounds nuw %struct.Upsert, ptr %271, i32 0, i32 6
  store i32 %270, ptr %regData303, align 8
  %272 = load i32, ptr %iDataCur, align 4
  %273 = load ptr, ptr %pUpsert.addr, align 8
  %iDataCur304 = getelementptr inbounds nuw %struct.Upsert, ptr %273, i32 0, i32 7
  store i32 %272, ptr %iDataCur304, align 4
  %274 = load i32, ptr %iIdxCur, align 4
  %275 = load ptr, ptr %pUpsert.addr, align 8
  %iIdxCur305 = getelementptr inbounds nuw %struct.Upsert, ptr %275, i32 0, i32 8
  store i32 %274, ptr %iIdxCur305, align 8
  %276 = load ptr, ptr %pUpsert.addr, align 8
  %pUpsertTarget306 = getelementptr inbounds nuw %struct.Upsert, ptr %276, i32 0, i32 0
  %277 = load ptr, ptr %pUpsertTarget306, align 8
  %tobool307 = icmp ne ptr %277, null
  br i1 %tobool307, label %if.then308, label %if.end310

if.then308:                                       ; preds = %if.end300
  %278 = load ptr, ptr %pParse.addr, align 8
  %279 = load ptr, ptr %pTabList.addr, align 8
  %280 = load ptr, ptr %pUpsert.addr, align 8
  %call309 = call i32 @sqlite3UpsertAnalyzeTarget(ptr noundef %278, ptr noundef %279, ptr noundef %280)
  br label %if.end310

if.end310:                                        ; preds = %if.then308, %if.end300
  br label %if.end311

if.end311:                                        ; preds = %if.end310, %if.end289
  %281 = load i8, ptr %useTempTable, align 1
  %tobool312 = icmp ne i8 %281, 0
  br i1 %tobool312, label %if.then313, label %if.else316

if.then313:                                       ; preds = %if.end311
  %282 = load ptr, ptr %v, align 8
  %283 = load i32, ptr %srcTab, align 4
  %call314 = call i32 @sqlite3VdbeAddOp1(ptr noundef %282, i32 noundef 36, i32 noundef %283)
  store i32 %call314, ptr %addrInsTop, align 4
  %284 = load ptr, ptr %v, align 8
  %call315 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %284)
  store i32 %call315, ptr %addrCont, align 4
  br label %if.end322

if.else316:                                       ; preds = %if.end311
  %285 = load ptr, ptr %pSelect.addr, align 8
  %tobool317 = icmp ne ptr %285, null
  br i1 %tobool317, label %if.then318, label %if.end321

if.then318:                                       ; preds = %if.else316
  %286 = load ptr, ptr %v, align 8
  %iSDParm319 = getelementptr inbounds nuw %struct.SelectDest, ptr %dest, i32 0, i32 1
  %287 = load i32, ptr %iSDParm319, align 4
  %call320 = call i32 @sqlite3VdbeAddOp1(ptr noundef %286, i32 noundef 14, i32 noundef %287)
  store i32 %call320, ptr %addrCont, align 4
  store i32 %call320, ptr %addrInsTop, align 4
  br label %if.end321

if.end321:                                        ; preds = %if.then318, %if.else316
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %if.then313
  %288 = load ptr, ptr %pParse.addr, align 8
  %call323 = call i32 @sqlite3VdbeMakeLabel(ptr noundef %288)
  store i32 %call323, ptr %endOfLoop, align 4
  %289 = load i32, ptr %tmask, align 4
  %and324 = and i32 %289, 1
  %tobool325 = icmp ne i32 %and324, 0
  br i1 %tobool325, label %if.then326, label %if.end426

if.then326:                                       ; preds = %if.end322
  %290 = load ptr, ptr %pParse.addr, align 8
  %291 = load ptr, ptr %pTab, align 8
  %nCol327 = getelementptr inbounds nuw %struct.Table, ptr %291, i32 0, i32 11
  %292 = load i16, ptr %nCol327, align 2
  %conv328 = sext i16 %292 to i32
  %add329 = add nsw i32 %conv328, 1
  %call330 = call i32 @sqlite3GetTempRange(ptr noundef %290, i32 noundef %add329)
  store i32 %call330, ptr %regCols, align 4
  %293 = load i32, ptr %ipkColumn, align 4
  %cmp331 = icmp slt i32 %293, 0
  br i1 %cmp331, label %if.then333, label %if.else335

if.then333:                                       ; preds = %if.then326
  %294 = load ptr, ptr %v, align 8
  %295 = load i32, ptr %regCols, align 4
  %call334 = call i32 @sqlite3VdbeAddOp2(ptr noundef %294, i32 noundef 70, i32 noundef -1, i32 noundef %295)
  br label %if.end347

if.else335:                                       ; preds = %if.then326
  %296 = load i8, ptr %useTempTable, align 1
  %tobool336 = icmp ne i8 %296, 0
  br i1 %tobool336, label %if.then337, label %if.else339

if.then337:                                       ; preds = %if.else335
  %297 = load ptr, ptr %v, align 8
  %298 = load i32, ptr %srcTab, align 4
  %299 = load i32, ptr %ipkColumn, align 4
  %300 = load i32, ptr %regCols, align 4
  %call338 = call i32 @sqlite3VdbeAddOp3(ptr noundef %297, i32 noundef 90, i32 noundef %298, i32 noundef %299, i32 noundef %300)
  br label %if.end343

if.else339:                                       ; preds = %if.else335
  %301 = load ptr, ptr %pParse.addr, align 8
  %302 = load ptr, ptr %pList, align 8
  %a340 = getelementptr inbounds nuw %struct.ExprList, ptr %302, i32 0, i32 1
  %303 = load i32, ptr %ipkColumn, align 4
  %idxprom341 = sext i32 %303 to i64
  %arrayidx342 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a340, i64 0, i64 %idxprom341
  %pExpr = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx342, i32 0, i32 0
  %304 = load ptr, ptr %pExpr, align 8
  %305 = load i32, ptr %regCols, align 4
  call void @sqlite3ExprCode(ptr noundef %301, ptr noundef %304, i32 noundef %305)
  br label %if.end343

if.end343:                                        ; preds = %if.else339, %if.then337
  %306 = load ptr, ptr %v, align 8
  %307 = load i32, ptr %regCols, align 4
  %call344 = call i32 @sqlite3VdbeAddOp1(ptr noundef %306, i32 noundef 51, i32 noundef %307)
  store i32 %call344, ptr %addr1, align 4
  %308 = load ptr, ptr %v, align 8
  %309 = load i32, ptr %regCols, align 4
  %call345 = call i32 @sqlite3VdbeAddOp2(ptr noundef %308, i32 noundef 70, i32 noundef -1, i32 noundef %309)
  %310 = load ptr, ptr %v, align 8
  %311 = load i32, ptr %addr1, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %310, i32 noundef %311)
  %312 = load ptr, ptr %v, align 8
  %313 = load i32, ptr %regCols, align 4
  %call346 = call i32 @sqlite3VdbeAddOp1(ptr noundef %312, i32 noundef 15, i32 noundef %313)
  br label %if.end347

if.end347:                                        ; preds = %if.end343, %if.then333
  store i32 0, ptr %j, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond348

for.cond348:                                      ; preds = %for.inc412, %if.end347
  %314 = load i32, ptr %i, align 4
  %315 = load ptr, ptr %pTab, align 8
  %nCol349 = getelementptr inbounds nuw %struct.Table, ptr %315, i32 0, i32 11
  %316 = load i16, ptr %nCol349, align 2
  %conv350 = sext i16 %316 to i32
  %cmp351 = icmp slt i32 %314, %conv350
  br i1 %cmp351, label %for.body353, label %for.end414

for.body353:                                      ; preds = %for.cond348
  %317 = load ptr, ptr %pColumn.addr, align 8
  %tobool354 = icmp ne ptr %317, null
  br i1 %tobool354, label %if.then355, label %if.end372

if.then355:                                       ; preds = %for.body353
  store i32 0, ptr %j, align 4
  br label %for.cond356

for.cond356:                                      ; preds = %for.inc369, %if.then355
  %318 = load i32, ptr %j, align 4
  %319 = load ptr, ptr %pColumn.addr, align 8
  %nId357 = getelementptr inbounds nuw %struct.IdList, ptr %319, i32 0, i32 1
  %320 = load i32, ptr %nId357, align 8
  %cmp358 = icmp slt i32 %318, %320
  br i1 %cmp358, label %for.body360, label %for.end371

for.body360:                                      ; preds = %for.cond356
  %321 = load ptr, ptr %pColumn.addr, align 8
  %a361 = getelementptr inbounds nuw %struct.IdList, ptr %321, i32 0, i32 0
  %322 = load ptr, ptr %a361, align 8
  %323 = load i32, ptr %j, align 4
  %idxprom362 = sext i32 %323 to i64
  %arrayidx363 = getelementptr inbounds %struct.IdList_item, ptr %322, i64 %idxprom362
  %idx364 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx363, i32 0, i32 1
  %324 = load i32, ptr %idx364, align 8
  %325 = load i32, ptr %i, align 4
  %cmp365 = icmp eq i32 %324, %325
  br i1 %cmp365, label %if.then367, label %if.end368

if.then367:                                       ; preds = %for.body360
  br label %for.end371

if.end368:                                        ; preds = %for.body360
  br label %for.inc369

for.inc369:                                       ; preds = %if.end368
  %326 = load i32, ptr %j, align 4
  %inc370 = add nsw i32 %326, 1
  store i32 %inc370, ptr %j, align 4
  br label %for.cond356, !llvm.loop !12

for.end371:                                       ; preds = %if.then367, %for.cond356
  br label %if.end372

if.end372:                                        ; preds = %for.end371, %for.body353
  %327 = load i8, ptr %useTempTable, align 1
  %tobool373 = icmp ne i8 %327, 0
  br i1 %tobool373, label %lor.lhs.false376, label %land.lhs.true374

land.lhs.true374:                                 ; preds = %if.end372
  %328 = load ptr, ptr %pList, align 8
  %tobool375 = icmp ne ptr %328, null
  br i1 %tobool375, label %lor.lhs.false376, label %if.then386

lor.lhs.false376:                                 ; preds = %land.lhs.true374, %if.end372
  %329 = load ptr, ptr %pColumn.addr, align 8
  %tobool377 = icmp ne ptr %329, null
  br i1 %tobool377, label %land.lhs.true378, label %lor.lhs.false382

land.lhs.true378:                                 ; preds = %lor.lhs.false376
  %330 = load i32, ptr %j, align 4
  %331 = load ptr, ptr %pColumn.addr, align 8
  %nId379 = getelementptr inbounds nuw %struct.IdList, ptr %331, i32 0, i32 1
  %332 = load i32, ptr %nId379, align 8
  %cmp380 = icmp sge i32 %330, %332
  br i1 %cmp380, label %if.then386, label %lor.lhs.false382

lor.lhs.false382:                                 ; preds = %land.lhs.true378, %lor.lhs.false376
  %333 = load ptr, ptr %pColumn.addr, align 8
  %cmp383 = icmp eq ptr %333, null
  br i1 %cmp383, label %land.lhs.true385, label %if.else392

land.lhs.true385:                                 ; preds = %lor.lhs.false382
  br i1 false, label %if.then386, label %if.else392

if.then386:                                       ; preds = %land.lhs.true385, %land.lhs.true378, %land.lhs.true374
  %334 = load ptr, ptr %pParse.addr, align 8
  %335 = load ptr, ptr %pTab, align 8
  %aCol387 = getelementptr inbounds nuw %struct.Table, ptr %335, i32 0, i32 1
  %336 = load ptr, ptr %aCol387, align 8
  %337 = load i32, ptr %i, align 4
  %idxprom388 = sext i32 %337 to i64
  %arrayidx389 = getelementptr inbounds %struct.Column, ptr %336, i64 %idxprom388
  %pDflt = getelementptr inbounds nuw %struct.Column, ptr %arrayidx389, i32 0, i32 1
  %338 = load ptr, ptr %pDflt, align 8
  %339 = load i32, ptr %regCols, align 4
  %340 = load i32, ptr %i, align 4
  %add390 = add nsw i32 %339, %340
  %add391 = add nsw i32 %add390, 1
  call void @sqlite3ExprCode(ptr noundef %334, ptr noundef %338, i32 noundef %add391)
  br label %if.end406

if.else392:                                       ; preds = %land.lhs.true385, %lor.lhs.false382
  %341 = load i8, ptr %useTempTable, align 1
  %tobool393 = icmp ne i8 %341, 0
  br i1 %tobool393, label %if.then394, label %if.else398

if.then394:                                       ; preds = %if.else392
  %342 = load ptr, ptr %v, align 8
  %343 = load i32, ptr %srcTab, align 4
  %344 = load i32, ptr %j, align 4
  %345 = load i32, ptr %regCols, align 4
  %346 = load i32, ptr %i, align 4
  %add395 = add nsw i32 %345, %346
  %add396 = add nsw i32 %add395, 1
  %call397 = call i32 @sqlite3VdbeAddOp3(ptr noundef %342, i32 noundef 90, i32 noundef %343, i32 noundef %344, i32 noundef %add396)
  br label %if.end405

if.else398:                                       ; preds = %if.else392
  %347 = load ptr, ptr %pParse.addr, align 8
  %348 = load ptr, ptr %pList, align 8
  %a399 = getelementptr inbounds nuw %struct.ExprList, ptr %348, i32 0, i32 1
  %349 = load i32, ptr %j, align 4
  %idxprom400 = sext i32 %349 to i64
  %arrayidx401 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a399, i64 0, i64 %idxprom400
  %pExpr402 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx401, i32 0, i32 0
  %350 = load ptr, ptr %pExpr402, align 8
  %351 = load i32, ptr %regCols, align 4
  %352 = load i32, ptr %i, align 4
  %add403 = add nsw i32 %351, %352
  %add404 = add nsw i32 %add403, 1
  call void @sqlite3ExprCodeAndCache(ptr noundef %347, ptr noundef %350, i32 noundef %add404)
  br label %if.end405

if.end405:                                        ; preds = %if.else398, %if.then394
  br label %if.end406

if.end406:                                        ; preds = %if.end405, %if.then386
  %353 = load ptr, ptr %pColumn.addr, align 8
  %cmp407 = icmp eq ptr %353, null
  br i1 %cmp407, label %if.then409, label %if.end411

if.then409:                                       ; preds = %if.end406
  %354 = load i32, ptr %j, align 4
  %inc410 = add nsw i32 %354, 1
  store i32 %inc410, ptr %j, align 4
  br label %if.end411

if.end411:                                        ; preds = %if.then409, %if.end406
  br label %for.inc412

for.inc412:                                       ; preds = %if.end411
  %355 = load i32, ptr %i, align 4
  %inc413 = add nsw i32 %355, 1
  store i32 %inc413, ptr %i, align 4
  br label %for.cond348, !llvm.loop !13

for.end414:                                       ; preds = %for.cond348
  %356 = load i32, ptr %isView, align 4
  %tobool415 = icmp ne i32 %356, 0
  br i1 %tobool415, label %if.end418, label %if.then416

if.then416:                                       ; preds = %for.end414
  %357 = load ptr, ptr %v, align 8
  %358 = load ptr, ptr %pTab, align 8
  %359 = load i32, ptr %regCols, align 4
  %add417 = add nsw i32 %359, 1
  call void @sqlite3TableAffinity(ptr noundef %357, ptr noundef %358, i32 noundef %add417)
  br label %if.end418

if.end418:                                        ; preds = %if.then416, %for.end414
  %360 = load ptr, ptr %pParse.addr, align 8
  %361 = load ptr, ptr %pTrigger, align 8
  %362 = load ptr, ptr %pTab, align 8
  %363 = load i32, ptr %regCols, align 4
  %364 = load ptr, ptr %pTab, align 8
  %nCol419 = getelementptr inbounds nuw %struct.Table, ptr %364, i32 0, i32 11
  %365 = load i16, ptr %nCol419, align 2
  %conv420 = sext i16 %365 to i32
  %sub421 = sub nsw i32 %363, %conv420
  %sub422 = sub nsw i32 %sub421, 1
  %366 = load i32, ptr %onError.addr, align 4
  %367 = load i32, ptr %endOfLoop, align 4
  call void @sqlite3CodeRowTrigger(ptr noundef %360, ptr noundef %361, i32 noundef 123, ptr noundef null, i32 noundef 1, ptr noundef %362, i32 noundef %sub422, i32 noundef %366, i32 noundef %367)
  %368 = load ptr, ptr %pParse.addr, align 8
  %369 = load i32, ptr %regCols, align 4
  %370 = load ptr, ptr %pTab, align 8
  %nCol423 = getelementptr inbounds nuw %struct.Table, ptr %370, i32 0, i32 11
  %371 = load i16, ptr %nCol423, align 2
  %conv424 = sext i16 %371 to i32
  %add425 = add nsw i32 %conv424, 1
  call void @sqlite3ReleaseTempRange(ptr noundef %368, i32 noundef %369, i32 noundef %add425)
  br label %if.end426

if.end426:                                        ; preds = %if.end418, %if.end322
  %372 = load i32, ptr %isView, align 4
  %tobool427 = icmp ne i32 %372, 0
  br i1 %tobool427, label %if.end621, label %if.then428

if.then428:                                       ; preds = %if.end426
  %373 = load ptr, ptr %pTab, align 8
  %nModuleArg429 = getelementptr inbounds nuw %struct.Table, ptr %373, i32 0, i32 16
  %374 = load i32, ptr %nModuleArg429, align 4
  %tobool430 = icmp ne i32 %374, 0
  br i1 %tobool430, label %if.then431, label %if.end433

if.then431:                                       ; preds = %if.then428
  %375 = load ptr, ptr %v, align 8
  %376 = load i32, ptr %regIns, align 4
  %call432 = call i32 @sqlite3VdbeAddOp2(ptr noundef %375, i32 noundef 73, i32 noundef 0, i32 noundef %376)
  br label %if.end433

if.end433:                                        ; preds = %if.then431, %if.then428
  %377 = load i32, ptr %ipkColumn, align 4
  %cmp434 = icmp sge i32 %377, 0
  br i1 %cmp434, label %if.then436, label %if.else481

if.then436:                                       ; preds = %if.end433
  %378 = load i8, ptr %useTempTable, align 1
  %tobool437 = icmp ne i8 %378, 0
  br i1 %tobool437, label %if.then438, label %if.else440

if.then438:                                       ; preds = %if.then436
  %379 = load ptr, ptr %v, align 8
  %380 = load i32, ptr %srcTab, align 4
  %381 = load i32, ptr %ipkColumn, align 4
  %382 = load i32, ptr %regRowid, align 4
  %call439 = call i32 @sqlite3VdbeAddOp3(ptr noundef %379, i32 noundef 90, i32 noundef %380, i32 noundef %381, i32 noundef %382)
  br label %if.end465

if.else440:                                       ; preds = %if.then436
  %383 = load ptr, ptr %pSelect.addr, align 8
  %tobool441 = icmp ne ptr %383, null
  br i1 %tobool441, label %if.then442, label %if.else445

if.then442:                                       ; preds = %if.else440
  %384 = load ptr, ptr %v, align 8
  %385 = load i32, ptr %regFromSelect, align 4
  %386 = load i32, ptr %ipkColumn, align 4
  %add443 = add nsw i32 %385, %386
  %387 = load i32, ptr %regRowid, align 4
  %call444 = call i32 @sqlite3VdbeAddOp2(ptr noundef %384, i32 noundef 78, i32 noundef %add443, i32 noundef %387)
  br label %if.end464

if.else445:                                       ; preds = %if.else440
  %388 = load ptr, ptr %pList, align 8
  %a446 = getelementptr inbounds nuw %struct.ExprList, ptr %388, i32 0, i32 1
  %389 = load i32, ptr %ipkColumn, align 4
  %idxprom447 = sext i32 %389 to i64
  %arrayidx448 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a446, i64 0, i64 %idxprom447
  %pExpr449 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx448, i32 0, i32 0
  %390 = load ptr, ptr %pExpr449, align 8
  store ptr %390, ptr %pIpk, align 8
  %391 = load ptr, ptr %pIpk, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %391, i32 0, i32 0
  %392 = load i8, ptr %op, align 8
  %conv450 = zext i8 %392 to i32
  %cmp451 = icmp eq i32 %conv450, 117
  br i1 %cmp451, label %land.lhs.true453, label %if.else458

land.lhs.true453:                                 ; preds = %if.else445
  %393 = load ptr, ptr %pTab, align 8
  %nModuleArg454 = getelementptr inbounds nuw %struct.Table, ptr %393, i32 0, i32 16
  %394 = load i32, ptr %nModuleArg454, align 4
  %tobool455 = icmp ne i32 %394, 0
  br i1 %tobool455, label %if.else458, label %if.then456

if.then456:                                       ; preds = %land.lhs.true453
  %395 = load ptr, ptr %v, align 8
  %396 = load i32, ptr %iDataCur, align 4
  %397 = load i32, ptr %regRowid, align 4
  %398 = load i32, ptr %regAutoinc, align 4
  %call457 = call i32 @sqlite3VdbeAddOp3(ptr noundef %395, i32 noundef 121, i32 noundef %396, i32 noundef %397, i32 noundef %398)
  store i8 1, ptr %appendFlag, align 1
  br label %if.end463

if.else458:                                       ; preds = %land.lhs.true453, %if.else445
  %399 = load ptr, ptr %pParse.addr, align 8
  %400 = load ptr, ptr %pList, align 8
  %a459 = getelementptr inbounds nuw %struct.ExprList, ptr %400, i32 0, i32 1
  %401 = load i32, ptr %ipkColumn, align 4
  %idxprom460 = sext i32 %401 to i64
  %arrayidx461 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a459, i64 0, i64 %idxprom460
  %pExpr462 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx461, i32 0, i32 0
  %402 = load ptr, ptr %pExpr462, align 8
  %403 = load i32, ptr %regRowid, align 4
  call void @sqlite3ExprCode(ptr noundef %399, ptr noundef %402, i32 noundef %403)
  br label %if.end463

if.end463:                                        ; preds = %if.else458, %if.then456
  br label %if.end464

if.end464:                                        ; preds = %if.end463, %if.then442
  br label %if.end465

if.end465:                                        ; preds = %if.end464, %if.then438
  %404 = load i8, ptr %appendFlag, align 1
  %tobool466 = icmp ne i8 %404, 0
  br i1 %tobool466, label %if.end480, label %if.then467

if.then467:                                       ; preds = %if.end465
  %405 = load ptr, ptr %pTab, align 8
  %nModuleArg469 = getelementptr inbounds nuw %struct.Table, ptr %405, i32 0, i32 16
  %406 = load i32, ptr %nModuleArg469, align 4
  %tobool470 = icmp ne i32 %406, 0
  br i1 %tobool470, label %if.else474, label %if.then471

if.then471:                                       ; preds = %if.then467
  %407 = load ptr, ptr %v, align 8
  %408 = load i32, ptr %regRowid, align 4
  %call472 = call i32 @sqlite3VdbeAddOp1(ptr noundef %407, i32 noundef 51, i32 noundef %408)
  store i32 %call472, ptr %addr1468, align 4
  %409 = load ptr, ptr %v, align 8
  %410 = load i32, ptr %iDataCur, align 4
  %411 = load i32, ptr %regRowid, align 4
  %412 = load i32, ptr %regAutoinc, align 4
  %call473 = call i32 @sqlite3VdbeAddOp3(ptr noundef %409, i32 noundef 121, i32 noundef %410, i32 noundef %411, i32 noundef %412)
  %413 = load ptr, ptr %v, align 8
  %414 = load i32, ptr %addr1468, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %413, i32 noundef %414)
  br label %if.end478

if.else474:                                       ; preds = %if.then467
  %415 = load ptr, ptr %v, align 8
  %call475 = call i32 @sqlite3VdbeCurrentAddr(ptr noundef %415)
  store i32 %call475, ptr %addr1468, align 4
  %416 = load ptr, ptr %v, align 8
  %417 = load i32, ptr %regRowid, align 4
  %418 = load i32, ptr %addr1468, align 4
  %add476 = add nsw i32 %418, 2
  %call477 = call i32 @sqlite3VdbeAddOp2(ptr noundef %416, i32 noundef 50, i32 noundef %417, i32 noundef %add476)
  br label %if.end478

if.end478:                                        ; preds = %if.else474, %if.then471
  %419 = load ptr, ptr %v, align 8
  %420 = load i32, ptr %regRowid, align 4
  %call479 = call i32 @sqlite3VdbeAddOp1(ptr noundef %419, i32 noundef 15, i32 noundef %420)
  br label %if.end480

if.end480:                                        ; preds = %if.end478, %if.end465
  br label %if.end492

if.else481:                                       ; preds = %if.end433
  %421 = load ptr, ptr %pTab, align 8
  %nModuleArg482 = getelementptr inbounds nuw %struct.Table, ptr %421, i32 0, i32 16
  %422 = load i32, ptr %nModuleArg482, align 4
  %tobool483 = icmp ne i32 %422, 0
  br i1 %tobool483, label %if.then487, label %lor.lhs.false484

lor.lhs.false484:                                 ; preds = %if.else481
  %423 = load i8, ptr %withoutRowid, align 1
  %conv485 = zext i8 %423 to i32
  %tobool486 = icmp ne i32 %conv485, 0
  br i1 %tobool486, label %if.then487, label %if.else489

if.then487:                                       ; preds = %lor.lhs.false484, %if.else481
  %424 = load ptr, ptr %v, align 8
  %425 = load i32, ptr %regRowid, align 4
  %call488 = call i32 @sqlite3VdbeAddOp2(ptr noundef %424, i32 noundef 73, i32 noundef 0, i32 noundef %425)
  br label %if.end491

if.else489:                                       ; preds = %lor.lhs.false484
  %426 = load ptr, ptr %v, align 8
  %427 = load i32, ptr %iDataCur, align 4
  %428 = load i32, ptr %regRowid, align 4
  %429 = load i32, ptr %regAutoinc, align 4
  %call490 = call i32 @sqlite3VdbeAddOp3(ptr noundef %426, i32 noundef 121, i32 noundef %427, i32 noundef %428, i32 noundef %429)
  store i8 1, ptr %appendFlag, align 1
  br label %if.end491

if.end491:                                        ; preds = %if.else489, %if.then487
  br label %if.end492

if.end492:                                        ; preds = %if.end491, %if.end480
  %430 = load ptr, ptr %pParse.addr, align 8
  %431 = load i32, ptr %regAutoinc, align 4
  %432 = load i32, ptr %regRowid, align 4
  call void @autoIncStep(ptr noundef %430, i32 noundef %431, i32 noundef %432)
  store i32 0, ptr %nHidden, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond493

for.cond493:                                      ; preds = %for.inc579, %if.end492
  %433 = load i32, ptr %i, align 4
  %434 = load ptr, ptr %pTab, align 8
  %nCol494 = getelementptr inbounds nuw %struct.Table, ptr %434, i32 0, i32 11
  %435 = load i16, ptr %nCol494, align 2
  %conv495 = sext i16 %435 to i32
  %cmp496 = icmp slt i32 %433, %conv495
  br i1 %cmp496, label %for.body498, label %for.end581

for.body498:                                      ; preds = %for.cond493
  %436 = load i32, ptr %regRowid, align 4
  %add499 = add nsw i32 %436, 1
  %437 = load i32, ptr %i, align 4
  %add500 = add nsw i32 %add499, %437
  store i32 %add500, ptr %iRegStore, align 4
  %438 = load i32, ptr %i, align 4
  %439 = load ptr, ptr %pTab, align 8
  %iPKey501 = getelementptr inbounds nuw %struct.Table, ptr %439, i32 0, i32 10
  %440 = load i16, ptr %iPKey501, align 4
  %conv502 = sext i16 %440 to i32
  %cmp503 = icmp eq i32 %438, %conv502
  br i1 %cmp503, label %if.then505, label %if.end507

if.then505:                                       ; preds = %for.body498
  %441 = load ptr, ptr %v, align 8
  %442 = load i32, ptr %iRegStore, align 4
  %call506 = call i32 @sqlite3VdbeAddOp1(ptr noundef %441, i32 noundef 74, i32 noundef %442)
  br label %for.inc579

if.end507:                                        ; preds = %for.body498
  %443 = load ptr, ptr %pColumn.addr, align 8
  %cmp508 = icmp eq ptr %443, null
  br i1 %cmp508, label %if.then510, label %if.else524

if.then510:                                       ; preds = %if.end507
  %444 = load ptr, ptr %pTab, align 8
  %aCol511 = getelementptr inbounds nuw %struct.Table, ptr %444, i32 0, i32 1
  %445 = load ptr, ptr %aCol511, align 8
  %446 = load i32, ptr %i, align 4
  %idxprom512 = sext i32 %446 to i64
  %arrayidx513 = getelementptr inbounds %struct.Column, ptr %445, i64 %idxprom512
  %colFlags514 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx513, i32 0, i32 6
  %447 = load i8, ptr %colFlags514, align 1
  %conv515 = zext i8 %447 to i32
  %and516 = and i32 %conv515, 2
  %cmp517 = icmp ne i32 %and516, 0
  br i1 %cmp517, label %if.then519, label %if.else521

if.then519:                                       ; preds = %if.then510
  store i32 -1, ptr %j, align 4
  %448 = load i32, ptr %nHidden, align 4
  %inc520 = add nsw i32 %448, 1
  store i32 %inc520, ptr %nHidden, align 4
  br label %if.end523

if.else521:                                       ; preds = %if.then510
  %449 = load i32, ptr %i, align 4
  %450 = load i32, ptr %nHidden, align 4
  %sub522 = sub nsw i32 %449, %450
  store i32 %sub522, ptr %j, align 4
  br label %if.end523

if.end523:                                        ; preds = %if.else521, %if.then519
  br label %if.end541

if.else524:                                       ; preds = %if.end507
  store i32 0, ptr %j, align 4
  br label %for.cond525

for.cond525:                                      ; preds = %for.inc538, %if.else524
  %451 = load i32, ptr %j, align 4
  %452 = load ptr, ptr %pColumn.addr, align 8
  %nId526 = getelementptr inbounds nuw %struct.IdList, ptr %452, i32 0, i32 1
  %453 = load i32, ptr %nId526, align 8
  %cmp527 = icmp slt i32 %451, %453
  br i1 %cmp527, label %for.body529, label %for.end540

for.body529:                                      ; preds = %for.cond525
  %454 = load ptr, ptr %pColumn.addr, align 8
  %a530 = getelementptr inbounds nuw %struct.IdList, ptr %454, i32 0, i32 0
  %455 = load ptr, ptr %a530, align 8
  %456 = load i32, ptr %j, align 4
  %idxprom531 = sext i32 %456 to i64
  %arrayidx532 = getelementptr inbounds %struct.IdList_item, ptr %455, i64 %idxprom531
  %idx533 = getelementptr inbounds nuw %struct.IdList_item, ptr %arrayidx532, i32 0, i32 1
  %457 = load i32, ptr %idx533, align 8
  %458 = load i32, ptr %i, align 4
  %cmp534 = icmp eq i32 %457, %458
  br i1 %cmp534, label %if.then536, label %if.end537

if.then536:                                       ; preds = %for.body529
  br label %for.end540

if.end537:                                        ; preds = %for.body529
  br label %for.inc538

for.inc538:                                       ; preds = %if.end537
  %459 = load i32, ptr %j, align 4
  %inc539 = add nsw i32 %459, 1
  store i32 %inc539, ptr %j, align 4
  br label %for.cond525, !llvm.loop !14

for.end540:                                       ; preds = %if.then536, %for.cond525
  br label %if.end541

if.end541:                                        ; preds = %for.end540, %if.end523
  %460 = load i32, ptr %j, align 4
  %cmp542 = icmp slt i32 %460, 0
  br i1 %cmp542, label %if.then553, label %lor.lhs.false544

lor.lhs.false544:                                 ; preds = %if.end541
  %461 = load i32, ptr %nColumn, align 4
  %cmp545 = icmp eq i32 %461, 0
  br i1 %cmp545, label %if.then553, label %lor.lhs.false547

lor.lhs.false547:                                 ; preds = %lor.lhs.false544
  %462 = load ptr, ptr %pColumn.addr, align 8
  %tobool548 = icmp ne ptr %462, null
  br i1 %tobool548, label %land.lhs.true549, label %if.else558

land.lhs.true549:                                 ; preds = %lor.lhs.false547
  %463 = load i32, ptr %j, align 4
  %464 = load ptr, ptr %pColumn.addr, align 8
  %nId550 = getelementptr inbounds nuw %struct.IdList, ptr %464, i32 0, i32 1
  %465 = load i32, ptr %nId550, align 8
  %cmp551 = icmp sge i32 %463, %465
  br i1 %cmp551, label %if.then553, label %if.else558

if.then553:                                       ; preds = %land.lhs.true549, %lor.lhs.false544, %if.end541
  %466 = load ptr, ptr %pParse.addr, align 8
  %467 = load ptr, ptr %pTab, align 8
  %aCol554 = getelementptr inbounds nuw %struct.Table, ptr %467, i32 0, i32 1
  %468 = load ptr, ptr %aCol554, align 8
  %469 = load i32, ptr %i, align 4
  %idxprom555 = sext i32 %469 to i64
  %arrayidx556 = getelementptr inbounds %struct.Column, ptr %468, i64 %idxprom555
  %pDflt557 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx556, i32 0, i32 1
  %470 = load ptr, ptr %pDflt557, align 8
  %471 = load i32, ptr %iRegStore, align 4
  call void @sqlite3ExprCodeFactorable(ptr noundef %466, ptr noundef %470, i32 noundef %471)
  br label %if.end578

if.else558:                                       ; preds = %land.lhs.true549, %lor.lhs.false547
  %472 = load i8, ptr %useTempTable, align 1
  %tobool559 = icmp ne i8 %472, 0
  br i1 %tobool559, label %if.then560, label %if.else562

if.then560:                                       ; preds = %if.else558
  %473 = load ptr, ptr %v, align 8
  %474 = load i32, ptr %srcTab, align 4
  %475 = load i32, ptr %j, align 4
  %476 = load i32, ptr %iRegStore, align 4
  %call561 = call i32 @sqlite3VdbeAddOp3(ptr noundef %473, i32 noundef 90, i32 noundef %474, i32 noundef %475, i32 noundef %476)
  br label %if.end577

if.else562:                                       ; preds = %if.else558
  %477 = load ptr, ptr %pSelect.addr, align 8
  %tobool563 = icmp ne ptr %477, null
  br i1 %tobool563, label %if.then564, label %if.else571

if.then564:                                       ; preds = %if.else562
  %478 = load i32, ptr %regFromSelect, align 4
  %479 = load i32, ptr %regData, align 4
  %cmp565 = icmp ne i32 %478, %479
  br i1 %cmp565, label %if.then567, label %if.end570

if.then567:                                       ; preds = %if.then564
  %480 = load ptr, ptr %v, align 8
  %481 = load i32, ptr %regFromSelect, align 4
  %482 = load i32, ptr %j, align 4
  %add568 = add nsw i32 %481, %482
  %483 = load i32, ptr %iRegStore, align 4
  %call569 = call i32 @sqlite3VdbeAddOp2(ptr noundef %480, i32 noundef 79, i32 noundef %add568, i32 noundef %483)
  br label %if.end570

if.end570:                                        ; preds = %if.then567, %if.then564
  br label %if.end576

if.else571:                                       ; preds = %if.else562
  %484 = load ptr, ptr %pParse.addr, align 8
  %485 = load ptr, ptr %pList, align 8
  %a572 = getelementptr inbounds nuw %struct.ExprList, ptr %485, i32 0, i32 1
  %486 = load i32, ptr %j, align 4
  %idxprom573 = sext i32 %486 to i64
  %arrayidx574 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a572, i64 0, i64 %idxprom573
  %pExpr575 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx574, i32 0, i32 0
  %487 = load ptr, ptr %pExpr575, align 8
  %488 = load i32, ptr %iRegStore, align 4
  call void @sqlite3ExprCode(ptr noundef %484, ptr noundef %487, i32 noundef %488)
  br label %if.end576

if.end576:                                        ; preds = %if.else571, %if.end570
  br label %if.end577

if.end577:                                        ; preds = %if.end576, %if.then560
  br label %if.end578

if.end578:                                        ; preds = %if.end577, %if.then553
  br label %for.inc579

for.inc579:                                       ; preds = %if.end578, %if.then505
  %489 = load i32, ptr %i, align 4
  %inc580 = add nsw i32 %489, 1
  store i32 %inc580, ptr %i, align 4
  br label %for.cond493, !llvm.loop !15

for.end581:                                       ; preds = %for.cond493
  %490 = load ptr, ptr %pTab, align 8
  %nModuleArg582 = getelementptr inbounds nuw %struct.Table, ptr %490, i32 0, i32 16
  %491 = load i32, ptr %nModuleArg582, align 4
  %tobool583 = icmp ne i32 %491, 0
  br i1 %tobool583, label %if.then584, label %if.else597

if.then584:                                       ; preds = %for.end581
  %492 = load ptr, ptr %db, align 8
  %493 = load ptr, ptr %pTab, align 8
  %call585 = call ptr @sqlite3GetVTable(ptr noundef %492, ptr noundef %493)
  store ptr %call585, ptr %pVTab, align 8
  %494 = load ptr, ptr %pParse.addr, align 8
  %495 = load ptr, ptr %pTab, align 8
  call void @sqlite3VtabMakeWritable(ptr noundef %494, ptr noundef %495)
  %496 = load ptr, ptr %v, align 8
  %497 = load ptr, ptr %pTab, align 8
  %nCol586 = getelementptr inbounds nuw %struct.Table, ptr %497, i32 0, i32 11
  %498 = load i16, ptr %nCol586, align 2
  %conv587 = sext i16 %498 to i32
  %add588 = add nsw i32 %conv587, 2
  %499 = load i32, ptr %regIns, align 4
  %500 = load ptr, ptr %pVTab, align 8
  %call589 = call i32 @sqlite3VdbeAddOp4(ptr noundef %496, i32 noundef 10, i32 noundef 1, i32 noundef %add588, i32 noundef %499, ptr noundef %500, i32 noundef -12)
  %501 = load ptr, ptr %v, align 8
  %502 = load i32, ptr %onError.addr, align 4
  %cmp590 = icmp eq i32 %502, 11
  br i1 %cmp590, label %cond.true592, label %cond.false593

cond.true592:                                     ; preds = %if.then584
  br label %cond.end594

cond.false593:                                    ; preds = %if.then584
  %503 = load i32, ptr %onError.addr, align 4
  br label %cond.end594

cond.end594:                                      ; preds = %cond.false593, %cond.true592
  %cond595 = phi i32 [ 2, %cond.true592 ], [ %503, %cond.false593 ]
  %conv596 = trunc i32 %cond595 to i16
  call void @sqlite3VdbeChangeP5(ptr noundef %501, i16 noundef zeroext %conv596)
  %504 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3MayAbort(ptr noundef %504)
  br label %if.end620

if.else597:                                       ; preds = %for.end581
  %505 = load ptr, ptr %pParse.addr, align 8
  %506 = load ptr, ptr %pTab, align 8
  %507 = load ptr, ptr %aRegIdx, align 8
  %508 = load i32, ptr %iDataCur, align 4
  %509 = load i32, ptr %iIdxCur, align 4
  %510 = load i32, ptr %regIns, align 4
  %511 = load i32, ptr %ipkColumn, align 4
  %cmp598 = icmp sge i32 %511, 0
  %conv599 = zext i1 %cmp598 to i32
  %conv600 = trunc i32 %conv599 to i8
  %512 = load i32, ptr %onError.addr, align 4
  %conv601 = trunc i32 %512 to i8
  %513 = load i32, ptr %endOfLoop, align 4
  %514 = load ptr, ptr %pUpsert.addr, align 8
  call void @sqlite3GenerateConstraintChecks(ptr noundef %505, ptr noundef %506, ptr noundef %507, i32 noundef %508, i32 noundef %509, i32 noundef %510, i32 noundef 0, i8 noundef zeroext %conv600, i8 noundef zeroext %conv601, i32 noundef %513, ptr noundef %isReplace, ptr noundef null, ptr noundef %514)
  %515 = load ptr, ptr %pParse.addr, align 8
  %516 = load ptr, ptr %pTab, align 8
  %517 = load i32, ptr %regIns, align 4
  call void @sqlite3FkCheck(ptr noundef %515, ptr noundef %516, i32 noundef 0, i32 noundef %517, ptr noundef null, i32 noundef 0)
  %518 = load i32, ptr %isReplace, align 4
  %cmp602 = icmp eq i32 %518, 0
  br i1 %cmp602, label %lor.end617, label %lor.rhs604

lor.rhs604:                                       ; preds = %if.else597
  %519 = load ptr, ptr %pTrigger, align 8
  %cmp605 = icmp eq ptr %519, null
  br i1 %cmp605, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs604
  %520 = load ptr, ptr %db, align 8
  %flags607 = getelementptr inbounds nuw %struct.sqlite3, ptr %520, i32 0, i32 7
  %521 = load i64, ptr %flags607, align 8
  %and608 = and i64 %521, 16384
  %cmp609 = icmp eq i64 %and608, 0
  br i1 %cmp609, label %lor.end615, label %lor.rhs611

lor.rhs611:                                       ; preds = %land.rhs
  %522 = load ptr, ptr %pTab, align 8
  %call612 = call ptr @sqlite3FkReferences(ptr noundef %522)
  %cmp613 = icmp eq ptr %call612, null
  br label %lor.end615

lor.end615:                                       ; preds = %lor.rhs611, %land.rhs
  %523 = phi i1 [ true, %land.rhs ], [ %cmp613, %lor.rhs611 ]
  br label %land.end

land.end:                                         ; preds = %lor.end615, %lor.rhs604
  %524 = phi i1 [ false, %lor.rhs604 ], [ %523, %lor.end615 ]
  br label %lor.end617

lor.end617:                                       ; preds = %land.end, %if.else597
  %525 = phi i1 [ true, %if.else597 ], [ %524, %land.end ]
  %lor.ext618 = zext i1 %525 to i32
  store i32 %lor.ext618, ptr %bUseSeek, align 4
  %526 = load ptr, ptr %pParse.addr, align 8
  %527 = load ptr, ptr %pTab, align 8
  %528 = load i32, ptr %iDataCur, align 4
  %529 = load i32, ptr %iIdxCur, align 4
  %530 = load i32, ptr %regIns, align 4
  %531 = load ptr, ptr %aRegIdx, align 8
  %532 = load i8, ptr %appendFlag, align 1
  %conv619 = zext i8 %532 to i32
  %533 = load i32, ptr %bUseSeek, align 4
  call void @sqlite3CompleteInsertion(ptr noundef %526, ptr noundef %527, i32 noundef %528, i32 noundef %529, i32 noundef %530, ptr noundef %531, i32 noundef 0, i32 noundef %conv619, i32 noundef %533)
  br label %if.end620

if.end620:                                        ; preds = %lor.end617, %cond.end594
  br label %if.end621

if.end621:                                        ; preds = %if.end620, %if.end426
  %534 = load i32, ptr %regRowCount, align 4
  %tobool622 = icmp ne i32 %534, 0
  br i1 %tobool622, label %if.then623, label %if.end625

if.then623:                                       ; preds = %if.end621
  %535 = load ptr, ptr %v, align 8
  %536 = load i32, ptr %regRowCount, align 4
  %call624 = call i32 @sqlite3VdbeAddOp2(ptr noundef %535, i32 noundef 83, i32 noundef %536, i32 noundef 1)
  br label %if.end625

if.end625:                                        ; preds = %if.then623, %if.end621
  %537 = load ptr, ptr %pTrigger, align 8
  %tobool626 = icmp ne ptr %537, null
  br i1 %tobool626, label %if.then627, label %if.end632

if.then627:                                       ; preds = %if.end625
  %538 = load ptr, ptr %pParse.addr, align 8
  %539 = load ptr, ptr %pTrigger, align 8
  %540 = load ptr, ptr %pTab, align 8
  %541 = load i32, ptr %regData, align 4
  %sub628 = sub nsw i32 %541, 2
  %542 = load ptr, ptr %pTab, align 8
  %nCol629 = getelementptr inbounds nuw %struct.Table, ptr %542, i32 0, i32 11
  %543 = load i16, ptr %nCol629, align 2
  %conv630 = sext i16 %543 to i32
  %sub631 = sub nsw i32 %sub628, %conv630
  %544 = load i32, ptr %onError.addr, align 4
  %545 = load i32, ptr %endOfLoop, align 4
  call void @sqlite3CodeRowTrigger(ptr noundef %538, ptr noundef %539, i32 noundef 123, ptr noundef null, i32 noundef 2, ptr noundef %540, i32 noundef %sub631, i32 noundef %544, i32 noundef %545)
  br label %if.end632

if.end632:                                        ; preds = %if.then627, %if.end625
  %546 = load ptr, ptr %v, align 8
  %547 = load i32, ptr %endOfLoop, align 4
  call void @sqlite3VdbeResolveLabel(ptr noundef %546, i32 noundef %547)
  %548 = load i8, ptr %useTempTable, align 1
  %tobool633 = icmp ne i8 %548, 0
  br i1 %tobool633, label %if.then634, label %if.else637

if.then634:                                       ; preds = %if.end632
  %549 = load ptr, ptr %v, align 8
  %550 = load i32, ptr %srcTab, align 4
  %551 = load i32, ptr %addrCont, align 4
  %call635 = call i32 @sqlite3VdbeAddOp2(ptr noundef %549, i32 noundef 5, i32 noundef %550, i32 noundef %551)
  %552 = load ptr, ptr %v, align 8
  %553 = load i32, ptr %addrInsTop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %552, i32 noundef %553)
  %554 = load ptr, ptr %v, align 8
  %555 = load i32, ptr %srcTab, align 4
  %call636 = call i32 @sqlite3VdbeAddOp1(ptr noundef %554, i32 noundef 117, i32 noundef %555)
  br label %if.end642

if.else637:                                       ; preds = %if.end632
  %556 = load ptr, ptr %pSelect.addr, align 8
  %tobool638 = icmp ne ptr %556, null
  br i1 %tobool638, label %if.then639, label %if.end641

if.then639:                                       ; preds = %if.else637
  %557 = load ptr, ptr %v, align 8
  %558 = load i32, ptr %addrCont, align 4
  %call640 = call i32 @sqlite3VdbeGoto(ptr noundef %557, i32 noundef %558)
  %559 = load ptr, ptr %v, align 8
  %560 = load i32, ptr %addrInsTop, align 4
  call void @sqlite3VdbeJumpHere(ptr noundef %559, i32 noundef %560)
  br label %if.end641

if.end641:                                        ; preds = %if.then639, %if.else637
  br label %if.end642

if.end642:                                        ; preds = %if.end641, %if.then634
  br label %insert_end

insert_end:                                       ; preds = %if.end642, %if.then53
  %561 = load ptr, ptr %pParse.addr, align 8
  %nested643 = getelementptr inbounds nuw %struct.Parse, ptr %561, i32 0, i32 6
  %562 = load i8, ptr %nested643, align 2
  %conv644 = zext i8 %562 to i32
  %cmp645 = icmp eq i32 %conv644, 0
  br i1 %cmp645, label %land.lhs.true647, label %if.end652

land.lhs.true647:                                 ; preds = %insert_end
  %563 = load ptr, ptr %pParse.addr, align 8
  %pTriggerTab648 = getelementptr inbounds nuw %struct.Parse, ptr %563, i32 0, i32 36
  %564 = load ptr, ptr %pTriggerTab648, align 8
  %cmp649 = icmp eq ptr %564, null
  br i1 %cmp649, label %if.then651, label %if.end652

if.then651:                                       ; preds = %land.lhs.true647
  %565 = load ptr, ptr %pParse.addr, align 8
  call void @sqlite3AutoincrementEnd(ptr noundef %565)
  br label %if.end652

if.end652:                                        ; preds = %if.then651, %land.lhs.true647, %insert_end
  %566 = load i32, ptr %regRowCount, align 4
  %tobool653 = icmp ne i32 %566, 0
  br i1 %tobool653, label %if.then654, label %if.end657

if.then654:                                       ; preds = %if.end652
  %567 = load ptr, ptr %v, align 8
  %568 = load i32, ptr %regRowCount, align 4
  %call655 = call i32 @sqlite3VdbeAddOp2(ptr noundef %567, i32 noundef 81, i32 noundef %568, i32 noundef 1)
  %569 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeSetNumCols(ptr noundef %569, i32 noundef 1)
  %570 = load ptr, ptr %v, align 8
  %call656 = call i32 @sqlite3VdbeSetColName(ptr noundef %570, i32 noundef 0, i32 noundef 0, ptr noundef @.str.811, ptr noundef null)
  br label %if.end657

if.end657:                                        ; preds = %if.then654, %if.end652
  br label %insert_cleanup

insert_cleanup:                                   ; preds = %if.end657, %if.then299, %if.then294, %if.then268, %if.then244, %if.then233, %if.then191, %if.then162, %if.else, %if.then39, %if.then34, %if.then30, %if.then18, %if.then13, %if.then
  %571 = load ptr, ptr %db, align 8
  %572 = load ptr, ptr %pTabList.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %571, ptr noundef %572)
  %573 = load ptr, ptr %db, align 8
  %574 = load ptr, ptr %pList, align 8
  call void @sqlite3ExprListDelete(ptr noundef %573, ptr noundef %574)
  %575 = load ptr, ptr %db, align 8
  %576 = load ptr, ptr %pUpsert.addr, align 8
  call void @sqlite3UpsertDelete(ptr noundef %575, ptr noundef %576)
  %577 = load ptr, ptr %db, align 8
  %578 = load ptr, ptr %pSelect.addr, align 8
  call void @sqlite3SelectDelete(ptr noundef %577, ptr noundef %578)
  %579 = load ptr, ptr %db, align 8
  %580 = load ptr, ptr %pColumn.addr, align 8
  call void @sqlite3IdListDelete(ptr noundef %579, ptr noundef %580)
  %581 = load ptr, ptr %db, align 8
  %582 = load ptr, ptr %aRegIdx, align 8
  call void @sqlite3DbFree(ptr noundef %581, ptr noundef %582)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCode(ptr noundef, ptr noundef, i32 noundef) #0

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
declare hidden void @sqlite3MayAbort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ReleaseTempReg(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3GetTempReg(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDestInit(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeCurrentAddr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeFactorable(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeEndCoroutine(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TableAffinity(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveExprListNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ViewGetColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HasExplicitNulls(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListLookup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FkReferences(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3TriggersExist(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IsReadOnly(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeCountChanges(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OpenTableAndIndices(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabMakeWritable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AutoincrementEnd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeRowTrigger(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkCheck(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3GenerateConstraintChecks(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CompleteInsertion(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @xferOptimization(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @autoIncBegin(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @readsTable(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3UpsertAnalyzeTarget(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprCodeAndCache(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @autoIncStep(ptr noundef, i32 noundef, i32 noundef) #0

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
