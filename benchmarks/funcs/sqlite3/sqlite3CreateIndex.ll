; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.ExprList = type { i32, [1 x %struct.ExprList_item] }
%struct.ExprList_item = type { ptr, ptr, ptr, i8, i8, %union.anon.11 }
%union.anon.11 = type { i32 }
%struct.Expr = type { i8, i8, i32, %union.anon.3, ptr, ptr, %union.anon.4, i32, i32, i16, i16, i16, i8, ptr, %union.anon.5 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@sqlite3StrBINARY = external hidden constant [7 x i8], align 1
@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.338 = external hidden unnamed_addr constant [17 x i8], align 1
@.str.591 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.685 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.686 = external hidden unnamed_addr constant [50 x i8], align 1
@.str.687 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.688 = external hidden unnamed_addr constant [25 x i8], align 1
@.str.689 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.690 = external hidden unnamed_addr constant [34 x i8], align 1
@.str.691 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.692 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.693 = external hidden unnamed_addr constant [61 x i8], align 1
@.str.694 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.695 = external hidden unnamed_addr constant [20 x i8], align 1
@.str.696 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.697 = external hidden unnamed_addr constant [48 x i8], align 1
@.str.698 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PrimaryKeyIndex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CorruptError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindIndex(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3IndexHasDuplicateRootPage(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DefaultRowEst(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FreeIndex(ptr noundef, ptr noundef) #0

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
declare hidden i32 @sqlite3ReadSchema(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CreateIndex(ptr noundef %pParse, ptr noundef %pName1, ptr noundef %pName2, ptr noundef %pTblName, ptr noundef %pList, i32 noundef %onError, ptr noundef %pStart, ptr noundef %pPIWhere, i32 noundef %sortOrder, i32 noundef %ifNotExist, i8 noundef zeroext %idxType) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pName1.addr = alloca ptr, align 8
  %pName2.addr = alloca ptr, align 8
  %pTblName.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %onError.addr = alloca i32, align 4
  %pStart.addr = alloca ptr, align 8
  %pPIWhere.addr = alloca ptr, align 8
  %sortOrder.addr = alloca i32, align 4
  %ifNotExist.addr = alloca i32, align 4
  %idxType.addr = alloca i8, align 1
  %pTab = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %nName = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sFix = alloca %struct.DbFixer, align 8
  %sortOrderMask = alloca i32, align 4
  %db = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pName = alloca ptr, align 8
  %pListItem = alloca ptr, align 8
  %nExtra = alloca i32, align 4
  %nExtraCol = alloca i32, align 4
  %zExtra = alloca ptr, align 8
  %pPk = alloca ptr, align 8
  %n138 = alloca i32, align 4
  %pLoop = alloca ptr, align 8
  %zDb = alloca ptr, align 8
  %prevCol = alloca %struct.Token, align 8
  %pCol = alloca ptr, align 8
  %pExpr = alloca ptr, align 8
  %pCExpr = alloca ptr, align 8
  %requestedSortOrder = alloca i32, align 4
  %zColl = alloca ptr, align 8
  %nColl = alloca i32, align 4
  %x = alloca i32, align 4
  %pIdx = alloca ptr, align 8
  %k = alloca i32, align 4
  %z1 = alloca ptr, align 8
  %z2 = alloca ptr, align 8
  %p = alloca ptr, align 8
  %v = alloca ptr, align 8
  %zStmt = alloca ptr, align 8
  %iMem = alloca i32, align 4
  %n622 = alloca i32, align 4
  %pOther = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pName1, ptr %pName1.addr, align 8
  store ptr %pName2, ptr %pName2.addr, align 8
  store ptr %pTblName, ptr %pTblName.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store i32 %onError, ptr %onError.addr, align 4
  store ptr %pStart, ptr %pStart.addr, align 8
  store ptr %pPIWhere, ptr %pPIWhere.addr, align 8
  store i32 %sortOrder, ptr %sortOrder.addr, align 4
  store i32 %ifNotExist, ptr %ifNotExist.addr, align 4
  store i8 %idxType, ptr %idxType.addr, align 1
  store ptr null, ptr %pTab, align 8
  store ptr null, ptr %pIndex, align 8
  store ptr null, ptr %zName, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store ptr null, ptr %pName, align 8
  store i32 0, ptr %nExtra, align 4
  store ptr null, ptr %zExtra, align 8
  store ptr null, ptr %pPk, align 8
  %2 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 19
  %3 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %4, i32 0, i32 16
  %5 = load i32, ptr %nErr, align 8
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %exit_create_index

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %pParse.addr, align 8
  %eParseMode = getelementptr inbounds nuw %struct.Parse, ptr %6, i32 0, i32 51
  %7 = load i8, ptr %eParseMode, align 4
  %conv3 = zext i8 %7 to i32
  %cmp4 = icmp eq i32 %conv3, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8, ptr %idxType.addr, align 1
  %conv6 = zext i8 %8 to i32
  %cmp7 = icmp ne i32 %conv6, 2
  br i1 %cmp7, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  br label %exit_create_index

if.end10:                                         ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %pParse.addr, align 8
  %call = call i32 @sqlite3ReadSchema(ptr noundef %9)
  %cmp11 = icmp ne i32 0, %call
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  br label %exit_create_index

if.end14:                                         ; preds = %if.end10
  %10 = load ptr, ptr %pParse.addr, align 8
  %11 = load ptr, ptr %pList.addr, align 8
  %call15 = call i32 @sqlite3HasExplicitNulls(ptr noundef %10, ptr noundef %11)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end14
  br label %exit_create_index

if.end18:                                         ; preds = %if.end14
  %12 = load ptr, ptr %pTblName.addr, align 8
  %cmp19 = icmp ne ptr %12, null
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end18
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pName1.addr, align 8
  %15 = load ptr, ptr %pName2.addr, align 8
  %call22 = call i32 @sqlite3TwoPartName(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %pName)
  store i32 %call22, ptr %iDb, align 4
  %16 = load i32, ptr %iDb, align 4
  %cmp23 = icmp slt i32 %16, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then21
  br label %exit_create_index

if.end26:                                         ; preds = %if.then21
  %17 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %18 = load i8, ptr %busy, align 1
  %tobool27 = icmp ne i8 %18, 0
  br i1 %tobool27, label %if.end40, label %if.then28

if.then28:                                        ; preds = %if.end26
  %19 = load ptr, ptr %pParse.addr, align 8
  %20 = load ptr, ptr %pTblName.addr, align 8
  %call29 = call ptr @sqlite3SrcListLookup(ptr noundef %19, ptr noundef %20)
  store ptr %call29, ptr %pTab, align 8
  %21 = load ptr, ptr %pName2.addr, align 8
  %n = getelementptr inbounds nuw %struct.Token, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %n, align 8
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %land.lhs.true32, label %if.end39

land.lhs.true32:                                  ; preds = %if.then28
  %23 = load ptr, ptr %pTab, align 8
  %tobool33 = icmp ne ptr %23, null
  br i1 %tobool33, label %land.lhs.true34, label %if.end39

land.lhs.true34:                                  ; preds = %land.lhs.true32
  %24 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %24, i32 0, i32 20
  %25 = load ptr, ptr %pSchema, align 8
  %26 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %27, i64 1
  %pSchema35 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %28 = load ptr, ptr %pSchema35, align 8
  %cmp36 = icmp eq ptr %25, %28
  br i1 %cmp36, label %if.then38, label %if.end39

if.then38:                                        ; preds = %land.lhs.true34
  store i32 1, ptr %iDb, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %land.lhs.true34, %land.lhs.true32, %if.then28
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end26
  %29 = load ptr, ptr %pParse.addr, align 8
  %30 = load i32, ptr %iDb, align 4
  %31 = load ptr, ptr %pName, align 8
  call void @sqlite3FixInit(ptr noundef %sFix, ptr noundef %29, i32 noundef %30, ptr noundef @.str.685, ptr noundef %31)
  %32 = load ptr, ptr %pTblName.addr, align 8
  %call41 = call i32 @sqlite3FixSrcList(ptr noundef %sFix, ptr noundef %32)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end40
  br label %if.end44

if.end44:                                         ; preds = %if.then43, %if.end40
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load ptr, ptr %pTblName.addr, align 8
  %a = getelementptr inbounds nuw %struct.SrcList, ptr %34, i32 0, i32 2
  %arrayidx45 = getelementptr inbounds [1 x %struct.SrcList_item], ptr %a, i64 0, i64 0
  %call46 = call ptr @sqlite3LocateTableItem(ptr noundef %33, i32 noundef 0, ptr noundef %arrayidx45)
  store ptr %call46, ptr %pTab, align 8
  %35 = load ptr, ptr %pTab, align 8
  %cmp47 = icmp eq ptr %35, null
  br i1 %cmp47, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.end44
  br label %exit_create_index

if.end50:                                         ; preds = %if.end44
  %36 = load i32, ptr %iDb, align 4
  %cmp51 = icmp eq i32 %36, 1
  br i1 %cmp51, label %land.lhs.true53, label %if.end62

land.lhs.true53:                                  ; preds = %if.end50
  %37 = load ptr, ptr %db, align 8
  %aDb54 = getelementptr inbounds nuw %struct.sqlite3, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %aDb54, align 8
  %39 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx55 = getelementptr inbounds %struct.Db, ptr %38, i64 %idxprom
  %pSchema56 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx55, i32 0, i32 4
  %40 = load ptr, ptr %pSchema56, align 8
  %41 = load ptr, ptr %pTab, align 8
  %pSchema57 = getelementptr inbounds nuw %struct.Table, ptr %41, i32 0, i32 20
  %42 = load ptr, ptr %pSchema57, align 8
  %cmp58 = icmp ne ptr %40, %42
  br i1 %cmp58, label %if.then60, label %if.end62

if.then60:                                        ; preds = %land.lhs.true53
  %43 = load ptr, ptr %pParse.addr, align 8
  %44 = load ptr, ptr %pTab, align 8
  %zName61 = getelementptr inbounds nuw %struct.Table, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %zName61, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %43, ptr noundef @.str.686, ptr noundef %45)
  br label %exit_create_index

if.end62:                                         ; preds = %land.lhs.true53, %if.end50
  %46 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %46, i32 0, i32 9
  %47 = load i32, ptr %tabFlags, align 8
  %and = and i32 %47, 32
  %cmp63 = icmp eq i32 %and, 0
  br i1 %cmp63, label %if.end67, label %if.then65

if.then65:                                        ; preds = %if.end62
  %48 = load ptr, ptr %pTab, align 8
  %call66 = call ptr @sqlite3PrimaryKeyIndex(ptr noundef %48)
  store ptr %call66, ptr %pPk, align 8
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %if.end62
  br label %if.end73

if.else:                                          ; preds = %if.end18
  %49 = load ptr, ptr %pParse.addr, align 8
  %pNewTable = getelementptr inbounds nuw %struct.Parse, ptr %49, i32 0, i32 58
  %50 = load ptr, ptr %pNewTable, align 8
  store ptr %50, ptr %pTab, align 8
  %51 = load ptr, ptr %pTab, align 8
  %tobool68 = icmp ne ptr %51, null
  br i1 %tobool68, label %if.end70, label %if.then69

if.then69:                                        ; preds = %if.else
  br label %exit_create_index

if.end70:                                         ; preds = %if.else
  %52 = load ptr, ptr %db, align 8
  %53 = load ptr, ptr %pTab, align 8
  %pSchema71 = getelementptr inbounds nuw %struct.Table, ptr %53, i32 0, i32 20
  %54 = load ptr, ptr %pSchema71, align 8
  %call72 = call i32 @sqlite3SchemaToIndex(ptr noundef %52, ptr noundef %54)
  store i32 %call72, ptr %iDb, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.end70, %if.end67
  %55 = load ptr, ptr %db, align 8
  %aDb74 = getelementptr inbounds nuw %struct.sqlite3, ptr %55, i32 0, i32 4
  %56 = load ptr, ptr %aDb74, align 8
  %57 = load i32, ptr %iDb, align 4
  %idxprom75 = sext i32 %57 to i64
  %arrayidx76 = getelementptr inbounds %struct.Db, ptr %56, i64 %idxprom75
  store ptr %arrayidx76, ptr %pDb, align 8
  %58 = load ptr, ptr %pTab, align 8
  %zName77 = getelementptr inbounds nuw %struct.Table, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %zName77, align 8
  %call78 = call i32 @sqlite3_strnicmp(ptr noundef %59, ptr noundef @.str.591, i32 noundef 7)
  %cmp79 = icmp eq i32 %call78, 0
  br i1 %cmp79, label %land.lhs.true81, label %if.end92

land.lhs.true81:                                  ; preds = %if.end73
  %60 = load ptr, ptr %db, align 8
  %init82 = getelementptr inbounds nuw %struct.sqlite3, ptr %60, i32 0, i32 35
  %busy83 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init82, i32 0, i32 2
  %61 = load i8, ptr %busy83, align 1
  %conv84 = zext i8 %61 to i32
  %cmp85 = icmp eq i32 %conv84, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end92

land.lhs.true87:                                  ; preds = %land.lhs.true81
  %62 = load ptr, ptr %pTblName.addr, align 8
  %cmp88 = icmp ne ptr %62, null
  br i1 %cmp88, label %if.then90, label %if.end92

if.then90:                                        ; preds = %land.lhs.true87
  %63 = load ptr, ptr %pParse.addr, align 8
  %64 = load ptr, ptr %pTab, align 8
  %zName91 = getelementptr inbounds nuw %struct.Table, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %zName91, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %63, ptr noundef @.str.687, ptr noundef %65)
  br label %exit_create_index

if.end92:                                         ; preds = %land.lhs.true87, %land.lhs.true81, %if.end73
  %66 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %66, i32 0, i32 3
  %67 = load ptr, ptr %pSelect, align 8
  %tobool93 = icmp ne ptr %67, null
  br i1 %tobool93, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.end92
  %68 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %68, ptr noundef @.str.688)
  br label %exit_create_index

if.end95:                                         ; preds = %if.end92
  %69 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %69, i32 0, i32 16
  %70 = load i32, ptr %nModuleArg, align 4
  %tobool96 = icmp ne i32 %70, 0
  br i1 %tobool96, label %if.then97, label %if.end98

if.then97:                                        ; preds = %if.end95
  %71 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %71, ptr noundef @.str.689)
  br label %exit_create_index

if.end98:                                         ; preds = %if.end95
  %72 = load ptr, ptr %pName, align 8
  %tobool99 = icmp ne ptr %72, null
  br i1 %tobool99, label %if.then100, label %if.else137

if.then100:                                       ; preds = %if.end98
  %73 = load ptr, ptr %db, align 8
  %74 = load ptr, ptr %pName, align 8
  %call101 = call ptr @sqlite3NameFromToken(ptr noundef %73, ptr noundef %74)
  store ptr %call101, ptr %zName, align 8
  %75 = load ptr, ptr %zName, align 8
  %cmp102 = icmp eq ptr %75, null
  br i1 %cmp102, label %if.then104, label %if.end105

if.then104:                                       ; preds = %if.then100
  br label %exit_create_index

if.end105:                                        ; preds = %if.then100
  %76 = load ptr, ptr %pParse.addr, align 8
  %77 = load ptr, ptr %zName, align 8
  %78 = load ptr, ptr %pTab, align 8
  %zName106 = getelementptr inbounds nuw %struct.Table, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %zName106, align 8
  %call107 = call i32 @sqlite3CheckObjectName(ptr noundef %76, ptr noundef %77, ptr noundef @.str.685, ptr noundef %79)
  %cmp108 = icmp ne i32 0, %call107
  br i1 %cmp108, label %if.then110, label %if.end111

if.then110:                                       ; preds = %if.end105
  br label %exit_create_index

if.end111:                                        ; preds = %if.end105
  %80 = load ptr, ptr %pParse.addr, align 8
  %eParseMode112 = getelementptr inbounds nuw %struct.Parse, ptr %80, i32 0, i32 51
  %81 = load i8, ptr %eParseMode112, align 4
  %conv113 = zext i8 %81 to i32
  %cmp114 = icmp sge i32 %conv113, 2
  br i1 %cmp114, label %if.end136, label %if.then116

if.then116:                                       ; preds = %if.end111
  %82 = load ptr, ptr %db, align 8
  %init117 = getelementptr inbounds nuw %struct.sqlite3, ptr %82, i32 0, i32 35
  %busy118 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init117, i32 0, i32 2
  %83 = load i8, ptr %busy118, align 1
  %tobool119 = icmp ne i8 %83, 0
  br i1 %tobool119, label %if.end126, label %if.then120

if.then120:                                       ; preds = %if.then116
  %84 = load ptr, ptr %db, align 8
  %85 = load ptr, ptr %zName, align 8
  %call121 = call ptr @sqlite3FindTable(ptr noundef %84, ptr noundef %85, ptr noundef null)
  %cmp122 = icmp ne ptr %call121, null
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.then120
  %86 = load ptr, ptr %pParse.addr, align 8
  %87 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %86, ptr noundef @.str.690, ptr noundef %87)
  br label %exit_create_index

if.end125:                                        ; preds = %if.then120
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then116
  %88 = load ptr, ptr %db, align 8
  %89 = load ptr, ptr %zName, align 8
  %90 = load ptr, ptr %pDb, align 8
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %zDbSName, align 8
  %call127 = call ptr @sqlite3FindIndex(ptr noundef %88, ptr noundef %89, ptr noundef %91)
  %cmp128 = icmp ne ptr %call127, null
  br i1 %cmp128, label %if.then130, label %if.end135

if.then130:                                       ; preds = %if.end126
  %92 = load i32, ptr %ifNotExist.addr, align 4
  %tobool131 = icmp ne i32 %92, 0
  br i1 %tobool131, label %if.else133, label %if.then132

if.then132:                                       ; preds = %if.then130
  %93 = load ptr, ptr %pParse.addr, align 8
  %94 = load ptr, ptr %zName, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %93, ptr noundef @.str.691, ptr noundef %94)
  br label %if.end134

if.else133:                                       ; preds = %if.then130
  %95 = load ptr, ptr %pParse.addr, align 8
  %96 = load i32, ptr %iDb, align 4
  call void @sqlite3CodeVerifySchema(ptr noundef %95, i32 noundef %96)
  br label %if.end134

if.end134:                                        ; preds = %if.else133, %if.then132
  br label %exit_create_index

if.end135:                                        ; preds = %if.end126
  br label %if.end136

if.end136:                                        ; preds = %if.end135, %if.end111
  br label %if.end155

if.else137:                                       ; preds = %if.end98
  %97 = load ptr, ptr %pTab, align 8
  %pIndex139 = getelementptr inbounds nuw %struct.Table, ptr %97, i32 0, i32 2
  %98 = load ptr, ptr %pIndex139, align 8
  store ptr %98, ptr %pLoop, align 8
  store i32 1, ptr %n138, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else137
  %99 = load ptr, ptr %pLoop, align 8
  %tobool140 = icmp ne ptr %99, null
  br i1 %tobool140, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %100 = load ptr, ptr %pLoop, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %100, i32 0, i32 5
  %101 = load ptr, ptr %pNext, align 8
  store ptr %101, ptr %pLoop, align 8
  %102 = load i32, ptr %n138, align 4
  %inc = add nsw i32 %102, 1
  store i32 %inc, ptr %n138, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %103 = load ptr, ptr %db, align 8
  %104 = load ptr, ptr %pTab, align 8
  %zName141 = getelementptr inbounds nuw %struct.Table, ptr %104, i32 0, i32 0
  %105 = load ptr, ptr %zName141, align 8
  %106 = load i32, ptr %n138, align 4
  %call142 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %103, ptr noundef @.str.692, ptr noundef %105, i32 noundef %106)
  store ptr %call142, ptr %zName, align 8
  %107 = load ptr, ptr %zName, align 8
  %cmp143 = icmp eq ptr %107, null
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %for.end
  br label %exit_create_index

if.end146:                                        ; preds = %for.end
  %108 = load ptr, ptr %pParse.addr, align 8
  %eParseMode147 = getelementptr inbounds nuw %struct.Parse, ptr %108, i32 0, i32 51
  %109 = load i8, ptr %eParseMode147, align 4
  %conv148 = zext i8 %109 to i32
  %cmp149 = icmp ne i32 %conv148, 0
  br i1 %cmp149, label %if.then151, label %if.end154

if.then151:                                       ; preds = %if.end146
  %110 = load ptr, ptr %zName, align 8
  %arrayidx152 = getelementptr inbounds i8, ptr %110, i64 7
  %111 = load i8, ptr %arrayidx152, align 1
  %inc153 = add i8 %111, 1
  store i8 %inc153, ptr %arrayidx152, align 1
  br label %if.end154

if.end154:                                        ; preds = %if.then151, %if.end146
  br label %if.end155

if.end155:                                        ; preds = %if.end154, %if.end136
  %112 = load ptr, ptr %pParse.addr, align 8
  %eParseMode156 = getelementptr inbounds nuw %struct.Parse, ptr %112, i32 0, i32 51
  %113 = load i8, ptr %eParseMode156, align 4
  %conv157 = zext i8 %113 to i32
  %cmp158 = icmp sge i32 %conv157, 2
  br i1 %cmp158, label %if.end177, label %if.then160

if.then160:                                       ; preds = %if.end155
  %114 = load ptr, ptr %pDb, align 8
  %zDbSName161 = getelementptr inbounds nuw %struct.Db, ptr %114, i32 0, i32 0
  %115 = load ptr, ptr %zDbSName161, align 8
  store ptr %115, ptr %zDb, align 8
  %116 = load ptr, ptr %pParse.addr, align 8
  %117 = load i32, ptr %iDb, align 4
  %cmp162 = icmp eq i32 %117, 1
  %118 = zext i1 %cmp162 to i64
  %cond = select i1 %cmp162, ptr @.str.331, ptr @.str.320
  %119 = load ptr, ptr %zDb, align 8
  %call164 = call i32 @sqlite3AuthCheck(ptr noundef %116, i32 noundef 18, ptr noundef %cond, ptr noundef null, ptr noundef %119)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.then160
  br label %exit_create_index

if.end167:                                        ; preds = %if.then160
  store i32 1, ptr %i, align 4
  %120 = load i32, ptr %iDb, align 4
  %cmp168 = icmp eq i32 %120, 1
  br i1 %cmp168, label %if.then170, label %if.end171

if.then170:                                       ; preds = %if.end167
  store i32 3, ptr %i, align 4
  br label %if.end171

if.end171:                                        ; preds = %if.then170, %if.end167
  %121 = load ptr, ptr %pParse.addr, align 8
  %122 = load i32, ptr %i, align 4
  %123 = load ptr, ptr %zName, align 8
  %124 = load ptr, ptr %pTab, align 8
  %zName172 = getelementptr inbounds nuw %struct.Table, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %zName172, align 8
  %126 = load ptr, ptr %zDb, align 8
  %call173 = call i32 @sqlite3AuthCheck(ptr noundef %121, i32 noundef %122, ptr noundef %123, ptr noundef %125, ptr noundef %126)
  %tobool174 = icmp ne i32 %call173, 0
  br i1 %tobool174, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end171
  br label %exit_create_index

if.end176:                                        ; preds = %if.end171
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.end155
  %127 = load ptr, ptr %pList.addr, align 8
  %cmp178 = icmp eq ptr %127, null
  br i1 %cmp178, label %if.then180, label %if.else193

if.then180:                                       ; preds = %if.end177
  %128 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %128, i32 0, i32 1
  %129 = load ptr, ptr %aCol, align 8
  %130 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %130, i32 0, i32 11
  %131 = load i16, ptr %nCol, align 2
  %conv181 = sext i16 %131 to i32
  %sub = sub nsw i32 %conv181, 1
  %idxprom182 = sext i32 %sub to i64
  %arrayidx183 = getelementptr inbounds %struct.Column, ptr %129, i64 %idxprom182
  store ptr %arrayidx183, ptr %pCol, align 8
  %132 = load ptr, ptr %pCol, align 8
  %colFlags = getelementptr inbounds nuw %struct.Column, ptr %132, i32 0, i32 6
  %133 = load i8, ptr %colFlags, align 1
  %conv184 = zext i8 %133 to i32
  %or = or i32 %conv184, 8
  %conv185 = trunc i32 %or to i8
  store i8 %conv185, ptr %colFlags, align 1
  %134 = load ptr, ptr %pCol, align 8
  %zName186 = getelementptr inbounds nuw %struct.Column, ptr %134, i32 0, i32 0
  %135 = load ptr, ptr %zName186, align 8
  call void @sqlite3TokenInit(ptr noundef %prevCol, ptr noundef %135)
  %136 = load ptr, ptr %pParse.addr, align 8
  %137 = load ptr, ptr %db, align 8
  %call187 = call ptr @sqlite3ExprAlloc(ptr noundef %137, i32 noundef 59, ptr noundef %prevCol, i32 noundef 0)
  %call188 = call ptr @sqlite3ExprListAppend(ptr noundef %136, ptr noundef null, ptr noundef %call187)
  store ptr %call188, ptr %pList.addr, align 8
  %138 = load ptr, ptr %pList.addr, align 8
  %cmp189 = icmp eq ptr %138, null
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.then180
  br label %exit_create_index

if.end192:                                        ; preds = %if.then180
  %139 = load ptr, ptr %pList.addr, align 8
  %140 = load i32, ptr %sortOrder.addr, align 4
  call void @sqlite3ExprListSetSortOrder(ptr noundef %139, i32 noundef %140, i32 noundef -1)
  br label %if.end198

if.else193:                                       ; preds = %if.end177
  %141 = load ptr, ptr %pParse.addr, align 8
  %142 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3ExprListCheckLength(ptr noundef %141, ptr noundef %142, ptr noundef @.str.685)
  %143 = load ptr, ptr %pParse.addr, align 8
  %nErr194 = getelementptr inbounds nuw %struct.Parse, ptr %143, i32 0, i32 16
  %144 = load i32, ptr %nErr194, align 8
  %tobool195 = icmp ne i32 %144, 0
  br i1 %tobool195, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.else193
  br label %exit_create_index

if.end197:                                        ; preds = %if.else193
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.end192
  store i32 0, ptr %i, align 4
  br label %for.cond199

for.cond199:                                      ; preds = %for.inc214, %if.end198
  %145 = load i32, ptr %i, align 4
  %146 = load ptr, ptr %pList.addr, align 8
  %nExpr = getelementptr inbounds nuw %struct.ExprList, ptr %146, i32 0, i32 0
  %147 = load i32, ptr %nExpr, align 8
  %cmp200 = icmp slt i32 %145, %147
  br i1 %cmp200, label %for.body202, label %for.end216

for.body202:                                      ; preds = %for.cond199
  %148 = load ptr, ptr %pList.addr, align 8
  %a203 = getelementptr inbounds nuw %struct.ExprList, ptr %148, i32 0, i32 1
  %149 = load i32, ptr %i, align 4
  %idxprom204 = sext i32 %149 to i64
  %arrayidx205 = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a203, i64 0, i64 %idxprom204
  %pExpr206 = getelementptr inbounds nuw %struct.ExprList_item, ptr %arrayidx205, i32 0, i32 0
  %150 = load ptr, ptr %pExpr206, align 8
  store ptr %150, ptr %pExpr, align 8
  %151 = load ptr, ptr %pExpr, align 8
  %op = getelementptr inbounds nuw %struct.Expr, ptr %151, i32 0, i32 0
  %152 = load i8, ptr %op, align 8
  %conv207 = zext i8 %152 to i32
  %cmp208 = icmp eq i32 %conv207, 109
  br i1 %cmp208, label %if.then210, label %if.end213

if.then210:                                       ; preds = %for.body202
  %153 = load ptr, ptr %pExpr, align 8
  %u = getelementptr inbounds nuw %struct.Expr, ptr %153, i32 0, i32 3
  %154 = load ptr, ptr %u, align 8
  %call211 = call i32 @sqlite3Strlen30(ptr noundef %154)
  %add = add nsw i32 1, %call211
  %155 = load i32, ptr %nExtra, align 4
  %add212 = add nsw i32 %155, %add
  store i32 %add212, ptr %nExtra, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then210, %for.body202
  br label %for.inc214

for.inc214:                                       ; preds = %if.end213
  %156 = load i32, ptr %i, align 4
  %inc215 = add nsw i32 %156, 1
  store i32 %inc215, ptr %i, align 4
  br label %for.cond199, !llvm.loop !8

for.end216:                                       ; preds = %for.cond199
  %157 = load ptr, ptr %zName, align 8
  %call217 = call i32 @sqlite3Strlen30(ptr noundef %157)
  store i32 %call217, ptr %nName, align 4
  %158 = load ptr, ptr %pPk, align 8
  %tobool218 = icmp ne ptr %158, null
  br i1 %tobool218, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end216
  %159 = load ptr, ptr %pPk, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %159, i32 0, i32 13
  %160 = load i16, ptr %nKeyCol, align 2
  %conv219 = zext i16 %160 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.end216
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond220 = phi i32 [ %conv219, %cond.true ], [ 1, %cond.false ]
  store i32 %cond220, ptr %nExtraCol, align 4
  %161 = load ptr, ptr %db, align 8
  %162 = load ptr, ptr %pList.addr, align 8
  %nExpr221 = getelementptr inbounds nuw %struct.ExprList, ptr %162, i32 0, i32 0
  %163 = load i32, ptr %nExpr221, align 8
  %164 = load i32, ptr %nExtraCol, align 4
  %add222 = add nsw i32 %163, %164
  %conv223 = trunc i32 %add222 to i16
  %165 = load i32, ptr %nName, align 4
  %166 = load i32, ptr %nExtra, align 4
  %add224 = add nsw i32 %165, %166
  %add225 = add nsw i32 %add224, 1
  %call226 = call ptr @sqlite3AllocateIndexObject(ptr noundef %161, i16 noundef signext %conv223, i32 noundef %add225, ptr noundef %zExtra)
  store ptr %call226, ptr %pIndex, align 8
  %167 = load ptr, ptr %db, align 8
  %mallocFailed227 = getelementptr inbounds nuw %struct.sqlite3, ptr %167, i32 0, i32 19
  %168 = load i8, ptr %mallocFailed227, align 1
  %tobool228 = icmp ne i8 %168, 0
  br i1 %tobool228, label %if.then229, label %if.end230

if.then229:                                       ; preds = %cond.end
  br label %exit_create_index

if.end230:                                        ; preds = %cond.end
  %169 = load ptr, ptr %zExtra, align 8
  %170 = load ptr, ptr %pIndex, align 8
  %zName231 = getelementptr inbounds nuw %struct.Index, ptr %170, i32 0, i32 0
  store ptr %169, ptr %zName231, align 8
  %171 = load i32, ptr %nName, align 4
  %add232 = add nsw i32 %171, 1
  %172 = load ptr, ptr %zExtra, align 8
  %idx.ext = sext i32 %add232 to i64
  %add.ptr = getelementptr inbounds i8, ptr %172, i64 %idx.ext
  store ptr %add.ptr, ptr %zExtra, align 8
  %173 = load ptr, ptr %pIndex, align 8
  %zName233 = getelementptr inbounds nuw %struct.Index, ptr %173, i32 0, i32 0
  %174 = load ptr, ptr %zName233, align 8
  %175 = load ptr, ptr %zName, align 8
  %176 = load i32, ptr %nName, align 4
  %add234 = add nsw i32 %176, 1
  %conv235 = sext i32 %add234 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %174, ptr align 1 %175, i64 %conv235, i1 false)
  %177 = load ptr, ptr %pTab, align 8
  %178 = load ptr, ptr %pIndex, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %178, i32 0, i32 3
  store ptr %177, ptr %pTable, align 8
  %179 = load i32, ptr %onError.addr, align 4
  %conv236 = trunc i32 %179 to i8
  %180 = load ptr, ptr %pIndex, align 8
  %onError237 = getelementptr inbounds nuw %struct.Index, ptr %180, i32 0, i32 15
  store i8 %conv236, ptr %onError237, align 2
  %181 = load i32, ptr %onError.addr, align 4
  %cmp238 = icmp ne i32 %181, 0
  %conv239 = zext i1 %cmp238 to i32
  %182 = load ptr, ptr %pIndex, align 8
  %uniqNotNull = getelementptr inbounds nuw %struct.Index, ptr %182, i32 0, i32 16
  %183 = trunc i32 %conv239 to i16
  %bf.load = load i16, ptr %uniqNotNull, align 1
  %bf.value = and i16 %183, 1
  %bf.shl = shl i16 %bf.value, 3
  %bf.clear = and i16 %bf.load, -9
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %uniqNotNull, align 1
  %bf.result.cast = zext i16 %bf.value to i32
  %184 = load i8, ptr %idxType.addr, align 1
  %conv240 = zext i8 %184 to i32
  %185 = load ptr, ptr %pIndex, align 8
  %idxType241 = getelementptr inbounds nuw %struct.Index, ptr %185, i32 0, i32 16
  %186 = trunc i32 %conv240 to i16
  %bf.load242 = load i16, ptr %idxType241, align 1
  %bf.value243 = and i16 %186, 3
  %bf.clear244 = and i16 %bf.load242, -4
  %bf.set245 = or i16 %bf.clear244, %bf.value243
  store i16 %bf.set245, ptr %idxType241, align 1
  %bf.result.cast246 = zext i16 %bf.value243 to i32
  %187 = load ptr, ptr %db, align 8
  %aDb247 = getelementptr inbounds nuw %struct.sqlite3, ptr %187, i32 0, i32 4
  %188 = load ptr, ptr %aDb247, align 8
  %189 = load i32, ptr %iDb, align 4
  %idxprom248 = sext i32 %189 to i64
  %arrayidx249 = getelementptr inbounds %struct.Db, ptr %188, i64 %idxprom248
  %pSchema250 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx249, i32 0, i32 4
  %190 = load ptr, ptr %pSchema250, align 8
  %191 = load ptr, ptr %pIndex, align 8
  %pSchema251 = getelementptr inbounds nuw %struct.Index, ptr %191, i32 0, i32 6
  store ptr %190, ptr %pSchema251, align 8
  %192 = load ptr, ptr %pList.addr, align 8
  %nExpr252 = getelementptr inbounds nuw %struct.ExprList, ptr %192, i32 0, i32 0
  %193 = load i32, ptr %nExpr252, align 8
  %conv253 = trunc i32 %193 to i16
  %194 = load ptr, ptr %pIndex, align 8
  %nKeyCol254 = getelementptr inbounds nuw %struct.Index, ptr %194, i32 0, i32 13
  store i16 %conv253, ptr %nKeyCol254, align 2
  %195 = load ptr, ptr %pPIWhere.addr, align 8
  %tobool255 = icmp ne ptr %195, null
  br i1 %tobool255, label %if.then256, label %if.end258

if.then256:                                       ; preds = %if.end230
  %196 = load ptr, ptr %pParse.addr, align 8
  %197 = load ptr, ptr %pTab, align 8
  %198 = load ptr, ptr %pPIWhere.addr, align 8
  %call257 = call i32 @sqlite3ResolveSelfReference(ptr noundef %196, ptr noundef %197, i32 noundef 2, ptr noundef %198, ptr noundef null)
  %199 = load ptr, ptr %pPIWhere.addr, align 8
  %200 = load ptr, ptr %pIndex, align 8
  %pPartIdxWhere = getelementptr inbounds nuw %struct.Index, ptr %200, i32 0, i32 9
  store ptr %199, ptr %pPartIdxWhere, align 8
  store ptr null, ptr %pPIWhere.addr, align 8
  br label %if.end258

if.end258:                                        ; preds = %if.then256, %if.end230
  %201 = load ptr, ptr %pDb, align 8
  %pSchema259 = getelementptr inbounds nuw %struct.Db, ptr %201, i32 0, i32 4
  %202 = load ptr, ptr %pSchema259, align 8
  %file_format = getelementptr inbounds nuw %struct.Schema, ptr %202, i32 0, i32 7
  %203 = load i8, ptr %file_format, align 8
  %conv260 = zext i8 %203 to i32
  %cmp261 = icmp sge i32 %conv260, 4
  br i1 %cmp261, label %if.then263, label %if.else264

if.then263:                                       ; preds = %if.end258
  store i32 -1, ptr %sortOrderMask, align 4
  br label %if.end265

if.else264:                                       ; preds = %if.end258
  store i32 0, ptr %sortOrderMask, align 4
  br label %if.end265

if.end265:                                        ; preds = %if.else264, %if.then263
  %204 = load ptr, ptr %pList.addr, align 8
  %a266 = getelementptr inbounds nuw %struct.ExprList, ptr %204, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.ExprList_item], ptr %a266, i64 0, i64 0
  store ptr %arraydecay, ptr %pListItem, align 8
  %205 = load ptr, ptr %pParse.addr, align 8
  %eParseMode267 = getelementptr inbounds nuw %struct.Parse, ptr %205, i32 0, i32 51
  %206 = load i8, ptr %eParseMode267, align 4
  %conv268 = zext i8 %206 to i32
  %cmp269 = icmp sge i32 %conv268, 2
  br i1 %cmp269, label %if.then271, label %if.end272

if.then271:                                       ; preds = %if.end265
  %207 = load ptr, ptr %pList.addr, align 8
  %208 = load ptr, ptr %pIndex, align 8
  %aColExpr = getelementptr inbounds nuw %struct.Index, ptr %208, i32 0, i32 10
  store ptr %207, ptr %aColExpr, align 8
  store ptr null, ptr %pList.addr, align 8
  br label %if.end272

if.end272:                                        ; preds = %if.then271, %if.end265
  store i32 0, ptr %i, align 4
  br label %for.cond273

for.cond273:                                      ; preds = %for.inc377, %if.end272
  %209 = load i32, ptr %i, align 4
  %210 = load ptr, ptr %pIndex, align 8
  %nKeyCol274 = getelementptr inbounds nuw %struct.Index, ptr %210, i32 0, i32 13
  %211 = load i16, ptr %nKeyCol274, align 2
  %conv275 = zext i16 %211 to i32
  %cmp276 = icmp slt i32 %209, %conv275
  br i1 %cmp276, label %for.body278, label %for.end379

for.body278:                                      ; preds = %for.cond273
  %212 = load ptr, ptr %pListItem, align 8
  %pExpr279 = getelementptr inbounds nuw %struct.ExprList_item, ptr %212, i32 0, i32 0
  %213 = load ptr, ptr %pExpr279, align 8
  call void @sqlite3StringToId(ptr noundef %213)
  %214 = load ptr, ptr %pParse.addr, align 8
  %215 = load ptr, ptr %pTab, align 8
  %216 = load ptr, ptr %pListItem, align 8
  %pExpr280 = getelementptr inbounds nuw %struct.ExprList_item, ptr %216, i32 0, i32 0
  %217 = load ptr, ptr %pExpr280, align 8
  %call281 = call i32 @sqlite3ResolveSelfReference(ptr noundef %214, ptr noundef %215, i32 noundef 32, ptr noundef %217, ptr noundef null)
  %218 = load ptr, ptr %pParse.addr, align 8
  %nErr282 = getelementptr inbounds nuw %struct.Parse, ptr %218, i32 0, i32 16
  %219 = load i32, ptr %nErr282, align 8
  %tobool283 = icmp ne i32 %219, 0
  br i1 %tobool283, label %if.then284, label %if.end285

if.then284:                                       ; preds = %for.body278
  br label %exit_create_index

if.end285:                                        ; preds = %for.body278
  %220 = load ptr, ptr %pListItem, align 8
  %pExpr286 = getelementptr inbounds nuw %struct.ExprList_item, ptr %220, i32 0, i32 0
  %221 = load ptr, ptr %pExpr286, align 8
  %call287 = call ptr @sqlite3ExprSkipCollate(ptr noundef %221)
  store ptr %call287, ptr %pCExpr, align 8
  %222 = load ptr, ptr %pCExpr, align 8
  %op288 = getelementptr inbounds nuw %struct.Expr, ptr %222, i32 0, i32 0
  %223 = load i8, ptr %op288, align 8
  %conv289 = zext i8 %223 to i32
  %cmp290 = icmp ne i32 %conv289, 162
  br i1 %cmp290, label %if.then292, label %if.else310

if.then292:                                       ; preds = %if.end285
  %224 = load ptr, ptr %pTab, align 8
  %225 = load ptr, ptr %pParse.addr, align 8
  %pNewTable293 = getelementptr inbounds nuw %struct.Parse, ptr %225, i32 0, i32 58
  %226 = load ptr, ptr %pNewTable293, align 8
  %cmp294 = icmp eq ptr %224, %226
  br i1 %cmp294, label %if.then296, label %if.end297

if.then296:                                       ; preds = %if.then292
  %227 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %227, ptr noundef @.str.693)
  br label %exit_create_index

if.end297:                                        ; preds = %if.then292
  %228 = load ptr, ptr %pIndex, align 8
  %aColExpr298 = getelementptr inbounds nuw %struct.Index, ptr %228, i32 0, i32 10
  %229 = load ptr, ptr %aColExpr298, align 8
  %cmp299 = icmp eq ptr %229, null
  br i1 %cmp299, label %if.then301, label %if.end303

if.then301:                                       ; preds = %if.end297
  %230 = load ptr, ptr %pList.addr, align 8
  %231 = load ptr, ptr %pIndex, align 8
  %aColExpr302 = getelementptr inbounds nuw %struct.Index, ptr %231, i32 0, i32 10
  store ptr %230, ptr %aColExpr302, align 8
  store ptr null, ptr %pList.addr, align 8
  br label %if.end303

if.end303:                                        ; preds = %if.then301, %if.end297
  store i32 -2, ptr %j, align 4
  %232 = load ptr, ptr %pIndex, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %232, i32 0, i32 1
  %233 = load ptr, ptr %aiColumn, align 8
  %234 = load i32, ptr %i, align 4
  %idxprom304 = sext i32 %234 to i64
  %arrayidx305 = getelementptr inbounds i16, ptr %233, i64 %idxprom304
  store i16 -2, ptr %arrayidx305, align 2
  %235 = load ptr, ptr %pIndex, align 8
  %uniqNotNull306 = getelementptr inbounds nuw %struct.Index, ptr %235, i32 0, i32 16
  %bf.load307 = load i16, ptr %uniqNotNull306, align 1
  %bf.clear308 = and i16 %bf.load307, -9
  %bf.set309 = or i16 %bf.clear308, 0
  store i16 %bf.set309, ptr %uniqNotNull306, align 1
  br label %if.end334

if.else310:                                       ; preds = %if.end285
  %236 = load ptr, ptr %pCExpr, align 8
  %iColumn = getelementptr inbounds nuw %struct.Expr, ptr %236, i32 0, i32 9
  %237 = load i16, ptr %iColumn, align 8
  %conv311 = sext i16 %237 to i32
  store i32 %conv311, ptr %j, align 4
  %238 = load i32, ptr %j, align 4
  %cmp312 = icmp slt i32 %238, 0
  br i1 %cmp312, label %if.then314, label %if.else316

if.then314:                                       ; preds = %if.else310
  %239 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %239, i32 0, i32 10
  %240 = load i16, ptr %iPKey, align 4
  %conv315 = sext i16 %240 to i32
  store i32 %conv315, ptr %j, align 4
  br label %if.end329

if.else316:                                       ; preds = %if.else310
  %241 = load ptr, ptr %pTab, align 8
  %aCol317 = getelementptr inbounds nuw %struct.Table, ptr %241, i32 0, i32 1
  %242 = load ptr, ptr %aCol317, align 8
  %243 = load i32, ptr %j, align 4
  %idxprom318 = sext i32 %243 to i64
  %arrayidx319 = getelementptr inbounds %struct.Column, ptr %242, i64 %idxprom318
  %notNull = getelementptr inbounds nuw %struct.Column, ptr %arrayidx319, i32 0, i32 3
  %244 = load i8, ptr %notNull, align 8
  %conv320 = zext i8 %244 to i32
  %cmp321 = icmp eq i32 %conv320, 0
  br i1 %cmp321, label %if.then323, label %if.end328

if.then323:                                       ; preds = %if.else316
  %245 = load ptr, ptr %pIndex, align 8
  %uniqNotNull324 = getelementptr inbounds nuw %struct.Index, ptr %245, i32 0, i32 16
  %bf.load325 = load i16, ptr %uniqNotNull324, align 1
  %bf.clear326 = and i16 %bf.load325, -9
  %bf.set327 = or i16 %bf.clear326, 0
  store i16 %bf.set327, ptr %uniqNotNull324, align 1
  br label %if.end328

if.end328:                                        ; preds = %if.then323, %if.else316
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.then314
  %246 = load i32, ptr %j, align 4
  %conv330 = trunc i32 %246 to i16
  %247 = load ptr, ptr %pIndex, align 8
  %aiColumn331 = getelementptr inbounds nuw %struct.Index, ptr %247, i32 0, i32 1
  %248 = load ptr, ptr %aiColumn331, align 8
  %249 = load i32, ptr %i, align 4
  %idxprom332 = sext i32 %249 to i64
  %arrayidx333 = getelementptr inbounds i16, ptr %248, i64 %idxprom332
  store i16 %conv330, ptr %arrayidx333, align 2
  br label %if.end334

if.end334:                                        ; preds = %if.end329, %if.end303
  store ptr null, ptr %zColl, align 8
  %250 = load ptr, ptr %pListItem, align 8
  %pExpr335 = getelementptr inbounds nuw %struct.ExprList_item, ptr %250, i32 0, i32 0
  %251 = load ptr, ptr %pExpr335, align 8
  %op336 = getelementptr inbounds nuw %struct.Expr, ptr %251, i32 0, i32 0
  %252 = load i8, ptr %op336, align 8
  %conv337 = zext i8 %252 to i32
  %cmp338 = icmp eq i32 %conv337, 109
  br i1 %cmp338, label %if.then340, label %if.else349

if.then340:                                       ; preds = %if.end334
  %253 = load ptr, ptr %pListItem, align 8
  %pExpr341 = getelementptr inbounds nuw %struct.ExprList_item, ptr %253, i32 0, i32 0
  %254 = load ptr, ptr %pExpr341, align 8
  %u342 = getelementptr inbounds nuw %struct.Expr, ptr %254, i32 0, i32 3
  %255 = load ptr, ptr %u342, align 8
  store ptr %255, ptr %zColl, align 8
  %256 = load ptr, ptr %zColl, align 8
  %call343 = call i32 @sqlite3Strlen30(ptr noundef %256)
  %add344 = add nsw i32 %call343, 1
  store i32 %add344, ptr %nColl, align 4
  %257 = load ptr, ptr %zExtra, align 8
  %258 = load ptr, ptr %zColl, align 8
  %259 = load i32, ptr %nColl, align 4
  %conv345 = sext i32 %259 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %257, ptr align 1 %258, i64 %conv345, i1 false)
  %260 = load ptr, ptr %zExtra, align 8
  store ptr %260, ptr %zColl, align 8
  %261 = load i32, ptr %nColl, align 4
  %262 = load ptr, ptr %zExtra, align 8
  %idx.ext346 = sext i32 %261 to i64
  %add.ptr347 = getelementptr inbounds i8, ptr %262, i64 %idx.ext346
  store ptr %add.ptr347, ptr %zExtra, align 8
  %263 = load i32, ptr %nColl, align 4
  %264 = load i32, ptr %nExtra, align 4
  %sub348 = sub nsw i32 %264, %263
  store i32 %sub348, ptr %nExtra, align 4
  br label %if.end358

if.else349:                                       ; preds = %if.end334
  %265 = load i32, ptr %j, align 4
  %cmp350 = icmp sge i32 %265, 0
  br i1 %cmp350, label %if.then352, label %if.end357

if.then352:                                       ; preds = %if.else349
  %266 = load ptr, ptr %pTab, align 8
  %aCol353 = getelementptr inbounds nuw %struct.Table, ptr %266, i32 0, i32 1
  %267 = load ptr, ptr %aCol353, align 8
  %268 = load i32, ptr %j, align 4
  %idxprom354 = sext i32 %268 to i64
  %arrayidx355 = getelementptr inbounds %struct.Column, ptr %267, i64 %idxprom354
  %zColl356 = getelementptr inbounds nuw %struct.Column, ptr %arrayidx355, i32 0, i32 2
  %269 = load ptr, ptr %zColl356, align 8
  store ptr %269, ptr %zColl, align 8
  br label %if.end357

if.end357:                                        ; preds = %if.then352, %if.else349
  br label %if.end358

if.end358:                                        ; preds = %if.end357, %if.then340
  %270 = load ptr, ptr %zColl, align 8
  %tobool359 = icmp ne ptr %270, null
  br i1 %tobool359, label %if.end361, label %if.then360

if.then360:                                       ; preds = %if.end358
  store ptr @sqlite3StrBINARY, ptr %zColl, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then360, %if.end358
  %271 = load ptr, ptr %db, align 8
  %init362 = getelementptr inbounds nuw %struct.sqlite3, ptr %271, i32 0, i32 35
  %busy363 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init362, i32 0, i32 2
  %272 = load i8, ptr %busy363, align 1
  %tobool364 = icmp ne i8 %272, 0
  br i1 %tobool364, label %if.end369, label %land.lhs.true365

land.lhs.true365:                                 ; preds = %if.end361
  %273 = load ptr, ptr %pParse.addr, align 8
  %274 = load ptr, ptr %zColl, align 8
  %call366 = call ptr @sqlite3LocateCollSeq(ptr noundef %273, ptr noundef %274)
  %tobool367 = icmp ne ptr %call366, null
  br i1 %tobool367, label %if.end369, label %if.then368

if.then368:                                       ; preds = %land.lhs.true365
  br label %exit_create_index

if.end369:                                        ; preds = %land.lhs.true365, %if.end361
  %275 = load ptr, ptr %zColl, align 8
  %276 = load ptr, ptr %pIndex, align 8
  %azColl = getelementptr inbounds nuw %struct.Index, ptr %276, i32 0, i32 8
  %277 = load ptr, ptr %azColl, align 8
  %278 = load i32, ptr %i, align 4
  %idxprom370 = sext i32 %278 to i64
  %arrayidx371 = getelementptr inbounds ptr, ptr %277, i64 %idxprom370
  store ptr %275, ptr %arrayidx371, align 8
  %279 = load ptr, ptr %pListItem, align 8
  %sortFlags = getelementptr inbounds nuw %struct.ExprList_item, ptr %279, i32 0, i32 3
  %280 = load i8, ptr %sortFlags, align 8
  %conv372 = zext i8 %280 to i32
  %281 = load i32, ptr %sortOrderMask, align 4
  %and373 = and i32 %conv372, %281
  store i32 %and373, ptr %requestedSortOrder, align 4
  %282 = load i32, ptr %requestedSortOrder, align 4
  %conv374 = trunc i32 %282 to i8
  %283 = load ptr, ptr %pIndex, align 8
  %aSortOrder = getelementptr inbounds nuw %struct.Index, ptr %283, i32 0, i32 7
  %284 = load ptr, ptr %aSortOrder, align 8
  %285 = load i32, ptr %i, align 4
  %idxprom375 = sext i32 %285 to i64
  %arrayidx376 = getelementptr inbounds i8, ptr %284, i64 %idxprom375
  store i8 %conv374, ptr %arrayidx376, align 1
  br label %for.inc377

for.inc377:                                       ; preds = %if.end369
  %286 = load i32, ptr %i, align 4
  %inc378 = add nsw i32 %286, 1
  store i32 %inc378, ptr %i, align 4
  %287 = load ptr, ptr %pListItem, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.ExprList_item, ptr %287, i32 1
  store ptr %incdec.ptr, ptr %pListItem, align 8
  br label %for.cond273, !llvm.loop !9

for.end379:                                       ; preds = %for.cond273
  %288 = load ptr, ptr %pPk, align 8
  %tobool380 = icmp ne ptr %288, null
  br i1 %tobool380, label %if.then381, label %if.else419

if.then381:                                       ; preds = %for.end379
  store i32 0, ptr %j, align 4
  br label %for.cond382

for.cond382:                                      ; preds = %for.inc416, %if.then381
  %289 = load i32, ptr %j, align 4
  %290 = load ptr, ptr %pPk, align 8
  %nKeyCol383 = getelementptr inbounds nuw %struct.Index, ptr %290, i32 0, i32 13
  %291 = load i16, ptr %nKeyCol383, align 2
  %conv384 = zext i16 %291 to i32
  %cmp385 = icmp slt i32 %289, %conv384
  br i1 %cmp385, label %for.body387, label %for.end418

for.body387:                                      ; preds = %for.cond382
  %292 = load ptr, ptr %pPk, align 8
  %aiColumn388 = getelementptr inbounds nuw %struct.Index, ptr %292, i32 0, i32 1
  %293 = load ptr, ptr %aiColumn388, align 8
  %294 = load i32, ptr %j, align 4
  %idxprom389 = sext i32 %294 to i64
  %arrayidx390 = getelementptr inbounds i16, ptr %293, i64 %idxprom389
  %295 = load i16, ptr %arrayidx390, align 2
  %conv391 = sext i16 %295 to i32
  store i32 %conv391, ptr %x, align 4
  %296 = load ptr, ptr %pIndex, align 8
  %297 = load ptr, ptr %pIndex, align 8
  %nKeyCol392 = getelementptr inbounds nuw %struct.Index, ptr %297, i32 0, i32 13
  %298 = load i16, ptr %nKeyCol392, align 2
  %conv393 = zext i16 %298 to i32
  %299 = load ptr, ptr %pPk, align 8
  %300 = load i32, ptr %j, align 4
  %call394 = call i32 @isDupColumn(ptr noundef %296, i32 noundef %conv393, ptr noundef %299, i32 noundef %300)
  %tobool395 = icmp ne i32 %call394, 0
  br i1 %tobool395, label %if.then396, label %if.else397

if.then396:                                       ; preds = %for.body387
  %301 = load ptr, ptr %pIndex, align 8
  %nColumn = getelementptr inbounds nuw %struct.Index, ptr %301, i32 0, i32 14
  %302 = load i16, ptr %nColumn, align 8
  %dec = add i16 %302, -1
  store i16 %dec, ptr %nColumn, align 8
  br label %if.end415

if.else397:                                       ; preds = %for.body387
  %303 = load i32, ptr %x, align 4
  %conv398 = trunc i32 %303 to i16
  %304 = load ptr, ptr %pIndex, align 8
  %aiColumn399 = getelementptr inbounds nuw %struct.Index, ptr %304, i32 0, i32 1
  %305 = load ptr, ptr %aiColumn399, align 8
  %306 = load i32, ptr %i, align 4
  %idxprom400 = sext i32 %306 to i64
  %arrayidx401 = getelementptr inbounds i16, ptr %305, i64 %idxprom400
  store i16 %conv398, ptr %arrayidx401, align 2
  %307 = load ptr, ptr %pPk, align 8
  %azColl402 = getelementptr inbounds nuw %struct.Index, ptr %307, i32 0, i32 8
  %308 = load ptr, ptr %azColl402, align 8
  %309 = load i32, ptr %j, align 4
  %idxprom403 = sext i32 %309 to i64
  %arrayidx404 = getelementptr inbounds ptr, ptr %308, i64 %idxprom403
  %310 = load ptr, ptr %arrayidx404, align 8
  %311 = load ptr, ptr %pIndex, align 8
  %azColl405 = getelementptr inbounds nuw %struct.Index, ptr %311, i32 0, i32 8
  %312 = load ptr, ptr %azColl405, align 8
  %313 = load i32, ptr %i, align 4
  %idxprom406 = sext i32 %313 to i64
  %arrayidx407 = getelementptr inbounds ptr, ptr %312, i64 %idxprom406
  store ptr %310, ptr %arrayidx407, align 8
  %314 = load ptr, ptr %pPk, align 8
  %aSortOrder408 = getelementptr inbounds nuw %struct.Index, ptr %314, i32 0, i32 7
  %315 = load ptr, ptr %aSortOrder408, align 8
  %316 = load i32, ptr %j, align 4
  %idxprom409 = sext i32 %316 to i64
  %arrayidx410 = getelementptr inbounds i8, ptr %315, i64 %idxprom409
  %317 = load i8, ptr %arrayidx410, align 1
  %318 = load ptr, ptr %pIndex, align 8
  %aSortOrder411 = getelementptr inbounds nuw %struct.Index, ptr %318, i32 0, i32 7
  %319 = load ptr, ptr %aSortOrder411, align 8
  %320 = load i32, ptr %i, align 4
  %idxprom412 = sext i32 %320 to i64
  %arrayidx413 = getelementptr inbounds i8, ptr %319, i64 %idxprom412
  store i8 %317, ptr %arrayidx413, align 1
  %321 = load i32, ptr %i, align 4
  %inc414 = add nsw i32 %321, 1
  store i32 %inc414, ptr %i, align 4
  br label %if.end415

if.end415:                                        ; preds = %if.else397, %if.then396
  br label %for.inc416

for.inc416:                                       ; preds = %if.end415
  %322 = load i32, ptr %j, align 4
  %inc417 = add nsw i32 %322, 1
  store i32 %inc417, ptr %j, align 4
  br label %for.cond382, !llvm.loop !10

for.end418:                                       ; preds = %for.cond382
  br label %if.end426

if.else419:                                       ; preds = %for.end379
  %323 = load ptr, ptr %pIndex, align 8
  %aiColumn420 = getelementptr inbounds nuw %struct.Index, ptr %323, i32 0, i32 1
  %324 = load ptr, ptr %aiColumn420, align 8
  %325 = load i32, ptr %i, align 4
  %idxprom421 = sext i32 %325 to i64
  %arrayidx422 = getelementptr inbounds i16, ptr %324, i64 %idxprom421
  store i16 -1, ptr %arrayidx422, align 2
  %326 = load ptr, ptr %pIndex, align 8
  %azColl423 = getelementptr inbounds nuw %struct.Index, ptr %326, i32 0, i32 8
  %327 = load ptr, ptr %azColl423, align 8
  %328 = load i32, ptr %i, align 4
  %idxprom424 = sext i32 %328 to i64
  %arrayidx425 = getelementptr inbounds ptr, ptr %327, i64 %idxprom424
  store ptr @sqlite3StrBINARY, ptr %arrayidx425, align 8
  br label %if.end426

if.end426:                                        ; preds = %if.else419, %for.end418
  %329 = load ptr, ptr %pIndex, align 8
  call void @sqlite3DefaultRowEst(ptr noundef %329)
  %330 = load ptr, ptr %pParse.addr, align 8
  %pNewTable427 = getelementptr inbounds nuw %struct.Parse, ptr %330, i32 0, i32 58
  %331 = load ptr, ptr %pNewTable427, align 8
  %cmp428 = icmp eq ptr %331, null
  br i1 %cmp428, label %if.then430, label %if.end431

if.then430:                                       ; preds = %if.end426
  %332 = load ptr, ptr %pIndex, align 8
  call void @estimateIndexWidth(ptr noundef %332)
  br label %if.end431

if.end431:                                        ; preds = %if.then430, %if.end426
  %333 = load ptr, ptr %pIndex, align 8
  call void @recomputeColumnsNotIndexed(ptr noundef %333)
  %334 = load ptr, ptr %pTblName.addr, align 8
  %cmp432 = icmp ne ptr %334, null
  br i1 %cmp432, label %land.lhs.true434, label %if.end471

land.lhs.true434:                                 ; preds = %if.end431
  %335 = load ptr, ptr %pIndex, align 8
  %nColumn435 = getelementptr inbounds nuw %struct.Index, ptr %335, i32 0, i32 14
  %336 = load i16, ptr %nColumn435, align 8
  %conv436 = zext i16 %336 to i32
  %337 = load ptr, ptr %pTab, align 8
  %nCol437 = getelementptr inbounds nuw %struct.Table, ptr %337, i32 0, i32 11
  %338 = load i16, ptr %nCol437, align 2
  %conv438 = sext i16 %338 to i32
  %cmp439 = icmp sge i32 %conv436, %conv438
  br i1 %cmp439, label %if.then441, label %if.end471

if.then441:                                       ; preds = %land.lhs.true434
  %339 = load ptr, ptr %pIndex, align 8
  %isCovering = getelementptr inbounds nuw %struct.Index, ptr %339, i32 0, i32 16
  %bf.load442 = load i16, ptr %isCovering, align 1
  %bf.clear443 = and i16 %bf.load442, -33
  %bf.set444 = or i16 %bf.clear443, 32
  store i16 %bf.set444, ptr %isCovering, align 1
  store i32 0, ptr %j, align 4
  br label %for.cond445

for.cond445:                                      ; preds = %for.inc468, %if.then441
  %340 = load i32, ptr %j, align 4
  %341 = load ptr, ptr %pTab, align 8
  %nCol446 = getelementptr inbounds nuw %struct.Table, ptr %341, i32 0, i32 11
  %342 = load i16, ptr %nCol446, align 2
  %conv447 = sext i16 %342 to i32
  %cmp448 = icmp slt i32 %340, %conv447
  br i1 %cmp448, label %for.body450, label %for.end470

for.body450:                                      ; preds = %for.cond445
  %343 = load i32, ptr %j, align 4
  %344 = load ptr, ptr %pTab, align 8
  %iPKey451 = getelementptr inbounds nuw %struct.Table, ptr %344, i32 0, i32 10
  %345 = load i16, ptr %iPKey451, align 4
  %conv452 = sext i16 %345 to i32
  %cmp453 = icmp eq i32 %343, %conv452
  br i1 %cmp453, label %if.then455, label %if.end456

if.then455:                                       ; preds = %for.body450
  br label %for.inc468

if.end456:                                        ; preds = %for.body450
  %346 = load ptr, ptr %pIndex, align 8
  %347 = load i32, ptr %j, align 4
  %conv457 = trunc i32 %347 to i16
  %call458 = call signext i16 @sqlite3ColumnOfIndex(ptr noundef %346, i16 noundef signext %conv457)
  %conv459 = sext i16 %call458 to i32
  %cmp460 = icmp sge i32 %conv459, 0
  br i1 %cmp460, label %if.then462, label %if.end463

if.then462:                                       ; preds = %if.end456
  br label %for.inc468

if.end463:                                        ; preds = %if.end456
  %348 = load ptr, ptr %pIndex, align 8
  %isCovering464 = getelementptr inbounds nuw %struct.Index, ptr %348, i32 0, i32 16
  %bf.load465 = load i16, ptr %isCovering464, align 1
  %bf.clear466 = and i16 %bf.load465, -33
  %bf.set467 = or i16 %bf.clear466, 0
  store i16 %bf.set467, ptr %isCovering464, align 1
  br label %for.end470

for.inc468:                                       ; preds = %if.then462, %if.then455
  %349 = load i32, ptr %j, align 4
  %inc469 = add nsw i32 %349, 1
  store i32 %inc469, ptr %j, align 4
  br label %for.cond445, !llvm.loop !11

for.end470:                                       ; preds = %if.end463, %for.cond445
  br label %if.end471

if.end471:                                        ; preds = %for.end470, %land.lhs.true434, %if.end431
  %350 = load ptr, ptr %pTab, align 8
  %351 = load ptr, ptr %pParse.addr, align 8
  %pNewTable472 = getelementptr inbounds nuw %struct.Parse, ptr %351, i32 0, i32 58
  %352 = load ptr, ptr %pNewTable472, align 8
  %cmp473 = icmp eq ptr %350, %352
  br i1 %cmp473, label %if.then475, label %if.end575

if.then475:                                       ; preds = %if.end471
  %353 = load ptr, ptr %pTab, align 8
  %pIndex476 = getelementptr inbounds nuw %struct.Table, ptr %353, i32 0, i32 2
  %354 = load ptr, ptr %pIndex476, align 8
  store ptr %354, ptr %pIdx, align 8
  br label %for.cond477

for.cond477:                                      ; preds = %for.inc572, %if.then475
  %355 = load ptr, ptr %pIdx, align 8
  %tobool478 = icmp ne ptr %355, null
  br i1 %tobool478, label %for.body479, label %for.end574

for.body479:                                      ; preds = %for.cond477
  %356 = load ptr, ptr %pIdx, align 8
  %nKeyCol480 = getelementptr inbounds nuw %struct.Index, ptr %356, i32 0, i32 13
  %357 = load i16, ptr %nKeyCol480, align 2
  %conv481 = zext i16 %357 to i32
  %358 = load ptr, ptr %pIndex, align 8
  %nKeyCol482 = getelementptr inbounds nuw %struct.Index, ptr %358, i32 0, i32 13
  %359 = load i16, ptr %nKeyCol482, align 2
  %conv483 = zext i16 %359 to i32
  %cmp484 = icmp ne i32 %conv481, %conv483
  br i1 %cmp484, label %if.then486, label %if.end487

if.then486:                                       ; preds = %for.body479
  br label %for.inc572

if.end487:                                        ; preds = %for.body479
  store i32 0, ptr %k, align 4
  br label %for.cond488

for.cond488:                                      ; preds = %for.inc516, %if.end487
  %360 = load i32, ptr %k, align 4
  %361 = load ptr, ptr %pIdx, align 8
  %nKeyCol489 = getelementptr inbounds nuw %struct.Index, ptr %361, i32 0, i32 13
  %362 = load i16, ptr %nKeyCol489, align 2
  %conv490 = zext i16 %362 to i32
  %cmp491 = icmp slt i32 %360, %conv490
  br i1 %cmp491, label %for.body493, label %for.end518

for.body493:                                      ; preds = %for.cond488
  %363 = load ptr, ptr %pIdx, align 8
  %aiColumn494 = getelementptr inbounds nuw %struct.Index, ptr %363, i32 0, i32 1
  %364 = load ptr, ptr %aiColumn494, align 8
  %365 = load i32, ptr %k, align 4
  %idxprom495 = sext i32 %365 to i64
  %arrayidx496 = getelementptr inbounds i16, ptr %364, i64 %idxprom495
  %366 = load i16, ptr %arrayidx496, align 2
  %conv497 = sext i16 %366 to i32
  %367 = load ptr, ptr %pIndex, align 8
  %aiColumn498 = getelementptr inbounds nuw %struct.Index, ptr %367, i32 0, i32 1
  %368 = load ptr, ptr %aiColumn498, align 8
  %369 = load i32, ptr %k, align 4
  %idxprom499 = sext i32 %369 to i64
  %arrayidx500 = getelementptr inbounds i16, ptr %368, i64 %idxprom499
  %370 = load i16, ptr %arrayidx500, align 2
  %conv501 = sext i16 %370 to i32
  %cmp502 = icmp ne i32 %conv497, %conv501
  br i1 %cmp502, label %if.then504, label %if.end505

if.then504:                                       ; preds = %for.body493
  br label %for.end518

if.end505:                                        ; preds = %for.body493
  %371 = load ptr, ptr %pIdx, align 8
  %azColl506 = getelementptr inbounds nuw %struct.Index, ptr %371, i32 0, i32 8
  %372 = load ptr, ptr %azColl506, align 8
  %373 = load i32, ptr %k, align 4
  %idxprom507 = sext i32 %373 to i64
  %arrayidx508 = getelementptr inbounds ptr, ptr %372, i64 %idxprom507
  %374 = load ptr, ptr %arrayidx508, align 8
  store ptr %374, ptr %z1, align 8
  %375 = load ptr, ptr %pIndex, align 8
  %azColl509 = getelementptr inbounds nuw %struct.Index, ptr %375, i32 0, i32 8
  %376 = load ptr, ptr %azColl509, align 8
  %377 = load i32, ptr %k, align 4
  %idxprom510 = sext i32 %377 to i64
  %arrayidx511 = getelementptr inbounds ptr, ptr %376, i64 %idxprom510
  %378 = load ptr, ptr %arrayidx511, align 8
  store ptr %378, ptr %z2, align 8
  %379 = load ptr, ptr %z1, align 8
  %380 = load ptr, ptr %z2, align 8
  %call512 = call i32 @sqlite3StrICmp(ptr noundef %379, ptr noundef %380)
  %tobool513 = icmp ne i32 %call512, 0
  br i1 %tobool513, label %if.then514, label %if.end515

if.then514:                                       ; preds = %if.end505
  br label %for.end518

if.end515:                                        ; preds = %if.end505
  br label %for.inc516

for.inc516:                                       ; preds = %if.end515
  %381 = load i32, ptr %k, align 4
  %inc517 = add nsw i32 %381, 1
  store i32 %inc517, ptr %k, align 4
  br label %for.cond488, !llvm.loop !12

for.end518:                                       ; preds = %if.then514, %if.then504, %for.cond488
  %382 = load i32, ptr %k, align 4
  %383 = load ptr, ptr %pIdx, align 8
  %nKeyCol519 = getelementptr inbounds nuw %struct.Index, ptr %383, i32 0, i32 13
  %384 = load i16, ptr %nKeyCol519, align 2
  %conv520 = zext i16 %384 to i32
  %cmp521 = icmp eq i32 %382, %conv520
  br i1 %cmp521, label %if.then523, label %if.end571

if.then523:                                       ; preds = %for.end518
  %385 = load ptr, ptr %pIdx, align 8
  %onError524 = getelementptr inbounds nuw %struct.Index, ptr %385, i32 0, i32 15
  %386 = load i8, ptr %onError524, align 2
  %conv525 = zext i8 %386 to i32
  %387 = load ptr, ptr %pIndex, align 8
  %onError526 = getelementptr inbounds nuw %struct.Index, ptr %387, i32 0, i32 15
  %388 = load i8, ptr %onError526, align 2
  %conv527 = zext i8 %388 to i32
  %cmp528 = icmp ne i32 %conv525, %conv527
  br i1 %cmp528, label %if.then530, label %if.end550

if.then530:                                       ; preds = %if.then523
  %389 = load ptr, ptr %pIdx, align 8
  %onError531 = getelementptr inbounds nuw %struct.Index, ptr %389, i32 0, i32 15
  %390 = load i8, ptr %onError531, align 2
  %conv532 = zext i8 %390 to i32
  %cmp533 = icmp eq i32 %conv532, 11
  br i1 %cmp533, label %if.end541, label %lor.lhs.false535

lor.lhs.false535:                                 ; preds = %if.then530
  %391 = load ptr, ptr %pIndex, align 8
  %onError536 = getelementptr inbounds nuw %struct.Index, ptr %391, i32 0, i32 15
  %392 = load i8, ptr %onError536, align 2
  %conv537 = zext i8 %392 to i32
  %cmp538 = icmp eq i32 %conv537, 11
  br i1 %cmp538, label %if.end541, label %if.then540

if.then540:                                       ; preds = %lor.lhs.false535
  %393 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %393, ptr noundef @.str.694, i32 noundef 0)
  br label %if.end541

if.end541:                                        ; preds = %if.then540, %lor.lhs.false535, %if.then530
  %394 = load ptr, ptr %pIdx, align 8
  %onError542 = getelementptr inbounds nuw %struct.Index, ptr %394, i32 0, i32 15
  %395 = load i8, ptr %onError542, align 2
  %conv543 = zext i8 %395 to i32
  %cmp544 = icmp eq i32 %conv543, 11
  br i1 %cmp544, label %if.then546, label %if.end549

if.then546:                                       ; preds = %if.end541
  %396 = load ptr, ptr %pIndex, align 8
  %onError547 = getelementptr inbounds nuw %struct.Index, ptr %396, i32 0, i32 15
  %397 = load i8, ptr %onError547, align 2
  %398 = load ptr, ptr %pIdx, align 8
  %onError548 = getelementptr inbounds nuw %struct.Index, ptr %398, i32 0, i32 15
  store i8 %397, ptr %onError548, align 2
  br label %if.end549

if.end549:                                        ; preds = %if.then546, %if.end541
  br label %if.end550

if.end550:                                        ; preds = %if.end549, %if.then523
  %399 = load i8, ptr %idxType.addr, align 1
  %conv551 = zext i8 %399 to i32
  %cmp552 = icmp eq i32 %conv551, 2
  br i1 %cmp552, label %if.then554, label %if.end562

if.then554:                                       ; preds = %if.end550
  %400 = load i8, ptr %idxType.addr, align 1
  %conv555 = zext i8 %400 to i32
  %401 = load ptr, ptr %pIdx, align 8
  %idxType556 = getelementptr inbounds nuw %struct.Index, ptr %401, i32 0, i32 16
  %402 = trunc i32 %conv555 to i16
  %bf.load557 = load i16, ptr %idxType556, align 1
  %bf.value558 = and i16 %402, 3
  %bf.clear559 = and i16 %bf.load557, -4
  %bf.set560 = or i16 %bf.clear559, %bf.value558
  store i16 %bf.set560, ptr %idxType556, align 1
  %bf.result.cast561 = zext i16 %bf.value558 to i32
  br label %if.end562

if.end562:                                        ; preds = %if.then554, %if.end550
  %403 = load ptr, ptr %pParse.addr, align 8
  %eParseMode563 = getelementptr inbounds nuw %struct.Parse, ptr %403, i32 0, i32 51
  %404 = load i8, ptr %eParseMode563, align 4
  %conv564 = zext i8 %404 to i32
  %cmp565 = icmp sge i32 %conv564, 2
  br i1 %cmp565, label %if.then567, label %if.end570

if.then567:                                       ; preds = %if.end562
  %405 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex = getelementptr inbounds nuw %struct.Parse, ptr %405, i32 0, i32 59
  %406 = load ptr, ptr %pNewIndex, align 8
  %407 = load ptr, ptr %pIndex, align 8
  %pNext568 = getelementptr inbounds nuw %struct.Index, ptr %407, i32 0, i32 5
  store ptr %406, ptr %pNext568, align 8
  %408 = load ptr, ptr %pIndex, align 8
  %409 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex569 = getelementptr inbounds nuw %struct.Parse, ptr %409, i32 0, i32 59
  store ptr %408, ptr %pNewIndex569, align 8
  store ptr null, ptr %pIndex, align 8
  br label %if.end570

if.end570:                                        ; preds = %if.then567, %if.end562
  br label %exit_create_index

if.end571:                                        ; preds = %for.end518
  br label %for.inc572

for.inc572:                                       ; preds = %if.end571, %if.then486
  %410 = load ptr, ptr %pIdx, align 8
  %pNext573 = getelementptr inbounds nuw %struct.Index, ptr %410, i32 0, i32 5
  %411 = load ptr, ptr %pNext573, align 8
  store ptr %411, ptr %pIdx, align 8
  br label %for.cond477, !llvm.loop !13

for.end574:                                       ; preds = %for.cond477
  br label %if.end575

if.end575:                                        ; preds = %for.end574, %if.end471
  %412 = load ptr, ptr %pParse.addr, align 8
  %eParseMode576 = getelementptr inbounds nuw %struct.Parse, ptr %412, i32 0, i32 51
  %413 = load i8, ptr %eParseMode576, align 4
  %conv577 = zext i8 %413 to i32
  %cmp578 = icmp sge i32 %conv577, 2
  br i1 %cmp578, label %if.end660, label %if.then580

if.then580:                                       ; preds = %if.end575
  %414 = load ptr, ptr %db, align 8
  %init581 = getelementptr inbounds nuw %struct.sqlite3, ptr %414, i32 0, i32 35
  %busy582 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init581, i32 0, i32 2
  %415 = load i8, ptr %busy582, align 1
  %tobool583 = icmp ne i8 %415, 0
  br i1 %tobool583, label %if.then584, label %if.else602

if.then584:                                       ; preds = %if.then580
  %416 = load ptr, ptr %pTblName.addr, align 8
  %cmp585 = icmp ne ptr %416, null
  br i1 %cmp585, label %if.then587, label %if.end594

if.then587:                                       ; preds = %if.then584
  %417 = load ptr, ptr %db, align 8
  %init588 = getelementptr inbounds nuw %struct.sqlite3, ptr %417, i32 0, i32 35
  %newTnum = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init588, i32 0, i32 0
  %418 = load i32, ptr %newTnum, align 8
  %419 = load ptr, ptr %pIndex, align 8
  %tnum = getelementptr inbounds nuw %struct.Index, ptr %419, i32 0, i32 11
  store i32 %418, ptr %tnum, align 8
  %420 = load ptr, ptr %pIndex, align 8
  %call589 = call i32 @sqlite3IndexHasDuplicateRootPage(ptr noundef %420)
  %tobool590 = icmp ne i32 %call589, 0
  br i1 %tobool590, label %if.then591, label %if.end593

if.then591:                                       ; preds = %if.then587
  %421 = load ptr, ptr %pParse.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %421, ptr noundef @.str.338)
  %call592 = call i32 @sqlite3CorruptError(i32 noundef 111295)
  %422 = load ptr, ptr %pParse.addr, align 8
  %rc = getelementptr inbounds nuw %struct.Parse, ptr %422, i32 0, i32 3
  store i32 %call592, ptr %rc, align 8
  br label %exit_create_index

if.end593:                                        ; preds = %if.then587
  br label %if.end594

if.end594:                                        ; preds = %if.end593, %if.then584
  %423 = load ptr, ptr %pIndex, align 8
  %pSchema595 = getelementptr inbounds nuw %struct.Index, ptr %423, i32 0, i32 6
  %424 = load ptr, ptr %pSchema595, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %424, i32 0, i32 3
  %425 = load ptr, ptr %pIndex, align 8
  %zName596 = getelementptr inbounds nuw %struct.Index, ptr %425, i32 0, i32 0
  %426 = load ptr, ptr %zName596, align 8
  %427 = load ptr, ptr %pIndex, align 8
  %call597 = call ptr @sqlite3HashInsert(ptr noundef %idxHash, ptr noundef %426, ptr noundef %427)
  store ptr %call597, ptr %p, align 8
  %428 = load ptr, ptr %p, align 8
  %tobool598 = icmp ne ptr %428, null
  br i1 %tobool598, label %if.then599, label %if.end600

if.then599:                                       ; preds = %if.end594
  %429 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %429)
  br label %exit_create_index

if.end600:                                        ; preds = %if.end594
  %430 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %430, i32 0, i32 6
  %431 = load i32, ptr %mDbFlags, align 4
  %or601 = or i32 %431, 1
  store i32 %or601, ptr %mDbFlags, align 4
  br label %if.end659

if.else602:                                       ; preds = %if.then580
  %432 = load ptr, ptr %pTab, align 8
  %tabFlags603 = getelementptr inbounds nuw %struct.Table, ptr %432, i32 0, i32 9
  %433 = load i32, ptr %tabFlags603, align 8
  %and604 = and i32 %433, 32
  %cmp605 = icmp eq i32 %and604, 0
  br i1 %cmp605, label %if.then610, label %lor.lhs.false607

lor.lhs.false607:                                 ; preds = %if.else602
  %434 = load ptr, ptr %pTblName.addr, align 8
  %cmp608 = icmp ne ptr %434, null
  br i1 %cmp608, label %if.then610, label %if.end658

if.then610:                                       ; preds = %lor.lhs.false607, %if.else602
  %435 = load ptr, ptr %pParse.addr, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %435, i32 0, i32 18
  %436 = load i32, ptr %nMem, align 8
  %inc611 = add nsw i32 %436, 1
  store i32 %inc611, ptr %nMem, align 8
  store i32 %inc611, ptr %iMem, align 4
  %437 = load ptr, ptr %pParse.addr, align 8
  %call612 = call ptr @sqlite3GetVdbe(ptr noundef %437)
  store ptr %call612, ptr %v, align 8
  %438 = load ptr, ptr %v, align 8
  %cmp613 = icmp eq ptr %438, null
  br i1 %cmp613, label %if.then615, label %if.end616

if.then615:                                       ; preds = %if.then610
  br label %exit_create_index

if.end616:                                        ; preds = %if.then610
  %439 = load ptr, ptr %pParse.addr, align 8
  %440 = load i32, ptr %iDb, align 4
  call void @sqlite3BeginWriteOperation(ptr noundef %439, i32 noundef 1, i32 noundef %440)
  %441 = load ptr, ptr %v, align 8
  %call617 = call i32 @sqlite3VdbeAddOp0(ptr noundef %441, i32 noundef 170)
  %442 = load ptr, ptr %pIndex, align 8
  %tnum618 = getelementptr inbounds nuw %struct.Index, ptr %442, i32 0, i32 11
  store i32 %call617, ptr %tnum618, align 8
  %443 = load ptr, ptr %v, align 8
  %444 = load i32, ptr %iDb, align 4
  %445 = load i32, ptr %iMem, align 4
  %call619 = call i32 @sqlite3VdbeAddOp3(ptr noundef %443, i32 noundef 139, i32 noundef %444, i32 noundef %445, i32 noundef 2)
  %446 = load ptr, ptr %pStart.addr, align 8
  %tobool620 = icmp ne ptr %446, null
  br i1 %tobool620, label %if.then621, label %if.else643

if.then621:                                       ; preds = %if.end616
  %447 = load ptr, ptr %pParse.addr, align 8
  %sLastToken = getelementptr inbounds nuw %struct.Parse, ptr %447, i32 0, i32 47
  %z = getelementptr inbounds nuw %struct.Token, ptr %sLastToken, i32 0, i32 0
  %448 = load ptr, ptr %z, align 8
  %449 = load ptr, ptr %pName, align 8
  %z623 = getelementptr inbounds nuw %struct.Token, ptr %449, i32 0, i32 0
  %450 = load ptr, ptr %z623, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %448 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %450 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv624 = trunc i64 %sub.ptr.sub to i32
  %451 = load ptr, ptr %pParse.addr, align 8
  %sLastToken625 = getelementptr inbounds nuw %struct.Parse, ptr %451, i32 0, i32 47
  %n626 = getelementptr inbounds nuw %struct.Token, ptr %sLastToken625, i32 0, i32 1
  %452 = load i32, ptr %n626, align 8
  %add627 = add i32 %conv624, %452
  store i32 %add627, ptr %n622, align 4
  %453 = load ptr, ptr %pName, align 8
  %z628 = getelementptr inbounds nuw %struct.Token, ptr %453, i32 0, i32 0
  %454 = load ptr, ptr %z628, align 8
  %455 = load i32, ptr %n622, align 4
  %sub629 = sub nsw i32 %455, 1
  %idxprom630 = sext i32 %sub629 to i64
  %arrayidx631 = getelementptr inbounds i8, ptr %454, i64 %idxprom630
  %456 = load i8, ptr %arrayidx631, align 1
  %conv632 = sext i8 %456 to i32
  %cmp633 = icmp eq i32 %conv632, 59
  br i1 %cmp633, label %if.then635, label %if.end637

if.then635:                                       ; preds = %if.then621
  %457 = load i32, ptr %n622, align 4
  %dec636 = add nsw i32 %457, -1
  store i32 %dec636, ptr %n622, align 4
  br label %if.end637

if.end637:                                        ; preds = %if.then635, %if.then621
  %458 = load ptr, ptr %db, align 8
  %459 = load i32, ptr %onError.addr, align 4
  %cmp638 = icmp eq i32 %459, 0
  %460 = zext i1 %cmp638 to i64
  %cond640 = select i1 %cmp638, ptr @.str.3, ptr @.str.696
  %461 = load i32, ptr %n622, align 4
  %462 = load ptr, ptr %pName, align 8
  %z641 = getelementptr inbounds nuw %struct.Token, ptr %462, i32 0, i32 0
  %463 = load ptr, ptr %z641, align 8
  %call642 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %458, ptr noundef @.str.695, ptr noundef %cond640, i32 noundef %461, ptr noundef %463)
  store ptr %call642, ptr %zStmt, align 8
  br label %if.end644

if.else643:                                       ; preds = %if.end616
  store ptr null, ptr %zStmt, align 8
  br label %if.end644

if.end644:                                        ; preds = %if.else643, %if.end637
  %464 = load ptr, ptr %pParse.addr, align 8
  %465 = load ptr, ptr %db, align 8
  %aDb645 = getelementptr inbounds nuw %struct.sqlite3, ptr %465, i32 0, i32 4
  %466 = load ptr, ptr %aDb645, align 8
  %467 = load i32, ptr %iDb, align 4
  %idxprom646 = sext i32 %467 to i64
  %arrayidx647 = getelementptr inbounds %struct.Db, ptr %466, i64 %idxprom646
  %zDbSName648 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx647, i32 0, i32 0
  %468 = load ptr, ptr %zDbSName648, align 8
  %469 = load ptr, ptr %pIndex, align 8
  %zName649 = getelementptr inbounds nuw %struct.Index, ptr %469, i32 0, i32 0
  %470 = load ptr, ptr %zName649, align 8
  %471 = load ptr, ptr %pTab, align 8
  %zName650 = getelementptr inbounds nuw %struct.Table, ptr %471, i32 0, i32 0
  %472 = load ptr, ptr %zName650, align 8
  %473 = load i32, ptr %iMem, align 4
  %474 = load ptr, ptr %zStmt, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %464, ptr noundef @.str.697, ptr noundef %468, ptr noundef @.str.320, ptr noundef %470, ptr noundef %472, i32 noundef %473, ptr noundef %474)
  %475 = load ptr, ptr %db, align 8
  %476 = load ptr, ptr %zStmt, align 8
  call void @sqlite3DbFree(ptr noundef %475, ptr noundef %476)
  %477 = load ptr, ptr %pTblName.addr, align 8
  %tobool651 = icmp ne ptr %477, null
  br i1 %tobool651, label %if.then652, label %if.end656

if.then652:                                       ; preds = %if.end644
  %478 = load ptr, ptr %pParse.addr, align 8
  %479 = load ptr, ptr %pIndex, align 8
  %480 = load i32, ptr %iMem, align 4
  call void @sqlite3RefillIndex(ptr noundef %478, ptr noundef %479, i32 noundef %480)
  %481 = load ptr, ptr %pParse.addr, align 8
  %482 = load i32, ptr %iDb, align 4
  call void @sqlite3ChangeCookie(ptr noundef %481, i32 noundef %482)
  %483 = load ptr, ptr %v, align 8
  %484 = load i32, ptr %iDb, align 4
  %485 = load ptr, ptr %db, align 8
  %486 = load ptr, ptr %pIndex, align 8
  %zName653 = getelementptr inbounds nuw %struct.Index, ptr %486, i32 0, i32 0
  %487 = load ptr, ptr %zName653, align 8
  %call654 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %485, ptr noundef @.str.698, ptr noundef %487)
  call void @sqlite3VdbeAddParseSchemaOp(ptr noundef %483, i32 noundef %484, ptr noundef %call654)
  %488 = load ptr, ptr %v, align 8
  %call655 = call i32 @sqlite3VdbeAddOp2(ptr noundef %488, i32 noundef 158, i32 noundef 0, i32 noundef 1)
  br label %if.end656

if.end656:                                        ; preds = %if.then652, %if.end644
  %489 = load ptr, ptr %v, align 8
  %490 = load ptr, ptr %pIndex, align 8
  %tnum657 = getelementptr inbounds nuw %struct.Index, ptr %490, i32 0, i32 11
  %491 = load i32, ptr %tnum657, align 8
  call void @sqlite3VdbeJumpHere(ptr noundef %489, i32 noundef %491)
  br label %if.end658

if.end658:                                        ; preds = %if.end656, %lor.lhs.false607
  br label %if.end659

if.end659:                                        ; preds = %if.end658, %if.end600
  br label %if.end660

if.end660:                                        ; preds = %if.end659, %if.end575
  %492 = load ptr, ptr %db, align 8
  %init661 = getelementptr inbounds nuw %struct.sqlite3, ptr %492, i32 0, i32 35
  %busy662 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init661, i32 0, i32 2
  %493 = load i8, ptr %busy662, align 1
  %conv663 = zext i8 %493 to i32
  %tobool664 = icmp ne i32 %conv663, 0
  br i1 %tobool664, label %if.then668, label %lor.lhs.false665

lor.lhs.false665:                                 ; preds = %if.end660
  %494 = load ptr, ptr %pTblName.addr, align 8
  %cmp666 = icmp eq ptr %494, null
  br i1 %cmp666, label %if.then668, label %if.else699

if.then668:                                       ; preds = %lor.lhs.false665, %if.end660
  %495 = load i32, ptr %onError.addr, align 4
  %cmp669 = icmp ne i32 %495, 5
  br i1 %cmp669, label %if.then681, label %lor.lhs.false671

lor.lhs.false671:                                 ; preds = %if.then668
  %496 = load ptr, ptr %pTab, align 8
  %pIndex672 = getelementptr inbounds nuw %struct.Table, ptr %496, i32 0, i32 2
  %497 = load ptr, ptr %pIndex672, align 8
  %cmp673 = icmp eq ptr %497, null
  br i1 %cmp673, label %if.then681, label %lor.lhs.false675

lor.lhs.false675:                                 ; preds = %lor.lhs.false671
  %498 = load ptr, ptr %pTab, align 8
  %pIndex676 = getelementptr inbounds nuw %struct.Table, ptr %498, i32 0, i32 2
  %499 = load ptr, ptr %pIndex676, align 8
  %onError677 = getelementptr inbounds nuw %struct.Index, ptr %499, i32 0, i32 15
  %500 = load i8, ptr %onError677, align 2
  %conv678 = zext i8 %500 to i32
  %cmp679 = icmp eq i32 %conv678, 5
  br i1 %cmp679, label %if.then681, label %if.else685

if.then681:                                       ; preds = %lor.lhs.false675, %lor.lhs.false671, %if.then668
  %501 = load ptr, ptr %pTab, align 8
  %pIndex682 = getelementptr inbounds nuw %struct.Table, ptr %501, i32 0, i32 2
  %502 = load ptr, ptr %pIndex682, align 8
  %503 = load ptr, ptr %pIndex, align 8
  %pNext683 = getelementptr inbounds nuw %struct.Index, ptr %503, i32 0, i32 5
  store ptr %502, ptr %pNext683, align 8
  %504 = load ptr, ptr %pIndex, align 8
  %505 = load ptr, ptr %pTab, align 8
  %pIndex684 = getelementptr inbounds nuw %struct.Table, ptr %505, i32 0, i32 2
  store ptr %504, ptr %pIndex684, align 8
  br label %if.end698

if.else685:                                       ; preds = %lor.lhs.false675
  %506 = load ptr, ptr %pTab, align 8
  %pIndex686 = getelementptr inbounds nuw %struct.Table, ptr %506, i32 0, i32 2
  %507 = load ptr, ptr %pIndex686, align 8
  store ptr %507, ptr %pOther, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else685
  %508 = load ptr, ptr %pOther, align 8
  %pNext687 = getelementptr inbounds nuw %struct.Index, ptr %508, i32 0, i32 5
  %509 = load ptr, ptr %pNext687, align 8
  %tobool688 = icmp ne ptr %509, null
  br i1 %tobool688, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %510 = load ptr, ptr %pOther, align 8
  %pNext689 = getelementptr inbounds nuw %struct.Index, ptr %510, i32 0, i32 5
  %511 = load ptr, ptr %pNext689, align 8
  %onError690 = getelementptr inbounds nuw %struct.Index, ptr %511, i32 0, i32 15
  %512 = load i8, ptr %onError690, align 2
  %conv691 = zext i8 %512 to i32
  %cmp692 = icmp ne i32 %conv691, 5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %513 = phi i1 [ false, %while.cond ], [ %cmp692, %land.rhs ]
  br i1 %513, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %514 = load ptr, ptr %pOther, align 8
  %pNext694 = getelementptr inbounds nuw %struct.Index, ptr %514, i32 0, i32 5
  %515 = load ptr, ptr %pNext694, align 8
  store ptr %515, ptr %pOther, align 8
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %land.end
  %516 = load ptr, ptr %pOther, align 8
  %pNext695 = getelementptr inbounds nuw %struct.Index, ptr %516, i32 0, i32 5
  %517 = load ptr, ptr %pNext695, align 8
  %518 = load ptr, ptr %pIndex, align 8
  %pNext696 = getelementptr inbounds nuw %struct.Index, ptr %518, i32 0, i32 5
  store ptr %517, ptr %pNext696, align 8
  %519 = load ptr, ptr %pIndex, align 8
  %520 = load ptr, ptr %pOther, align 8
  %pNext697 = getelementptr inbounds nuw %struct.Index, ptr %520, i32 0, i32 5
  store ptr %519, ptr %pNext697, align 8
  br label %if.end698

if.end698:                                        ; preds = %while.end, %if.then681
  store ptr null, ptr %pIndex, align 8
  br label %if.end707

if.else699:                                       ; preds = %lor.lhs.false665
  %521 = load ptr, ptr %pParse.addr, align 8
  %eParseMode700 = getelementptr inbounds nuw %struct.Parse, ptr %521, i32 0, i32 51
  %522 = load i8, ptr %eParseMode700, align 4
  %conv701 = zext i8 %522 to i32
  %cmp702 = icmp sge i32 %conv701, 2
  br i1 %cmp702, label %if.then704, label %if.end706

if.then704:                                       ; preds = %if.else699
  %523 = load ptr, ptr %pIndex, align 8
  %524 = load ptr, ptr %pParse.addr, align 8
  %pNewIndex705 = getelementptr inbounds nuw %struct.Parse, ptr %524, i32 0, i32 59
  store ptr %523, ptr %pNewIndex705, align 8
  store ptr null, ptr %pIndex, align 8
  br label %if.end706

if.end706:                                        ; preds = %if.then704, %if.else699
  br label %if.end707

if.end707:                                        ; preds = %if.end706, %if.end698
  br label %exit_create_index

exit_create_index:                                ; preds = %if.end707, %if.then615, %if.then599, %if.then591, %if.end570, %if.then368, %if.then296, %if.then284, %if.then229, %if.then196, %if.then191, %if.then175, %if.then166, %if.then145, %if.end134, %if.then124, %if.then110, %if.then104, %if.then97, %if.then94, %if.then90, %if.then69, %if.then60, %if.then49, %if.then25, %if.then17, %if.then13, %if.then9, %if.then
  %525 = load ptr, ptr %pIndex, align 8
  %tobool708 = icmp ne ptr %525, null
  br i1 %tobool708, label %if.then709, label %if.end710

if.then709:                                       ; preds = %exit_create_index
  %526 = load ptr, ptr %db, align 8
  %527 = load ptr, ptr %pIndex, align 8
  call void @sqlite3FreeIndex(ptr noundef %526, ptr noundef %527)
  br label %if.end710

if.end710:                                        ; preds = %if.then709, %exit_create_index
  %528 = load ptr, ptr %db, align 8
  %529 = load ptr, ptr %pPIWhere.addr, align 8
  call void @sqlite3ExprDelete(ptr noundef %528, ptr noundef %529)
  %530 = load ptr, ptr %db, align 8
  %531 = load ptr, ptr %pList.addr, align 8
  call void @sqlite3ExprListDelete(ptr noundef %530, ptr noundef %531)
  %532 = load ptr, ptr %db, align 8
  %533 = load ptr, ptr %pTblName.addr, align 8
  call void @sqlite3SrcListDelete(ptr noundef %532, ptr noundef %533)
  %534 = load ptr, ptr %db, align 8
  %535 = load ptr, ptr %zName, align 8
  call void @sqlite3DbFree(ptr noundef %534, ptr noundef %535)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprListAppend(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprAlloc(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3NameFromToken(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListSetSortOrder(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListCheckLength(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp0(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeJumpHere(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateCollSeq(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden signext i16 @sqlite3ColumnOfIndex(ptr noundef, i16 noundef signext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ExprSkipCollate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CodeVerifySchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TwoPartName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CheckObjectName(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginWriteOperation(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ResolveSelfReference(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @estimateIndexWidth(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeAddParseSchemaOp(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3TokenInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isDupColumn(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @recomputeColumnsNotIndexed(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTableItem(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StringToId(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3HasExplicitNulls(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SrcListLookup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FixInit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FixSrcList(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3AllocateIndexObject(ptr noundef, i16 noundef signext, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RefillIndex(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
