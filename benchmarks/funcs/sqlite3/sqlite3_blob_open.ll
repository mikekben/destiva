; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeOpList = type { i8, i8, i8, i8 }
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
%struct.Incrblob = type { i32, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.Column = type { ptr, ptr, ptr, i8, i8, i8, i8 }
%struct.FKey = type { ptr, ptr, ptr, ptr, ptr, i32, i8, [2 x i8], [2 x ptr], [1 x %struct.sColMap] }
%struct.sColMap = type { i32, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.VdbeOp = type { i8, i8, i16, i32, i32, i32, %union.p4union }
%union.p4union = type { ptr }

@.str.13 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.14 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.15 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.16 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.17 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.18 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.19 = external hidden unnamed_addr constant [34 x i8], align 1
@sqlite3_blob_open.openBlob = external hidden constant [6 x %struct.VdbeOpList], align 16
@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeFinalize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_blob_open(ptr noundef %db, ptr noundef %zDb, ptr noundef %zTable, ptr noundef %zColumn, i64 noundef %iRow, i32 noundef %wrFlag, ptr noundef %ppBlob) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %zTable.addr = alloca ptr, align 8
  %zColumn.addr = alloca ptr, align 8
  %iRow.addr = alloca i64, align 8
  %wrFlag.addr = alloca i32, align 4
  %ppBlob.addr = alloca ptr, align 8
  %nAttempt = alloca i32, align 4
  %iCol = alloca i32, align 4
  %rc = alloca i32, align 4
  %zErr = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pBlob = alloca ptr, align 8
  %sParse = alloca %struct.Parse, align 8
  %zFault = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pFKey = alloca ptr, align 8
  %j = alloca i32, align 4
  %j75 = alloca i32, align 4
  %v = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %aOp = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store ptr %zTable, ptr %zTable.addr, align 8
  store ptr %zColumn, ptr %zColumn.addr, align 8
  store i64 %iRow, ptr %iRow.addr, align 8
  store i32 %wrFlag, ptr %wrFlag.addr, align 4
  store ptr %ppBlob, ptr %ppBlob.addr, align 8
  store i32 0, ptr %nAttempt, align 4
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %zErr, align 8
  store ptr null, ptr %pBlob, align 8
  %0 = load ptr, ptr %ppBlob.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load i32, ptr %wrFlag.addr, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  %lnot1 = xor i1 %lnot, true
  %lnot.ext = zext i1 %lnot1 to i32
  store i32 %lnot.ext, ptr %wrFlag.addr, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %4, i64 noundef 56)
  store ptr %call, ptr %pBlob, align 8
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  call void @llvm.memset.p0.i64(ptr align 8 %sParse, i8 0, i64 416, i1 false)
  %5 = load ptr, ptr %pBlob, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  br label %blob_open_out

if.end:                                           ; preds = %do.body
  %6 = load ptr, ptr %db.addr, align 8
  %db3 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 0
  store ptr %6, ptr %db3, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %7, ptr noundef %8)
  store ptr null, ptr %zErr, align 8
  %9 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %9)
  %10 = load ptr, ptr %zTable.addr, align 8
  %11 = load ptr, ptr %zDb.addr, align 8
  %call4 = call ptr @sqlite3LocateTable(ptr noundef %sParse, i32 noundef 0, ptr noundef %10, ptr noundef %11)
  store ptr %call4, ptr %pTab, align 8
  %12 = load ptr, ptr %pTab, align 8
  %tobool5 = icmp ne ptr %12, null
  br i1 %tobool5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %13 = load ptr, ptr %pTab, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 16
  %14 = load i32, ptr %nModuleArg, align 4
  %tobool6 = icmp ne i32 %14, 0
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %land.lhs.true
  store ptr null, ptr %pTab, align 8
  %15 = load ptr, ptr %zTable.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %sParse, ptr noundef @.str.13, ptr noundef %15)
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true, %if.end
  %16 = load ptr, ptr %pTab, align 8
  %tobool9 = icmp ne ptr %16, null
  br i1 %tobool9, label %land.lhs.true10, label %if.end12

land.lhs.true10:                                  ; preds = %if.end8
  %17 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 9
  %18 = load i32, ptr %tabFlags, align 8
  %and = and i32 %18, 32
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.end12, label %if.then11

if.then11:                                        ; preds = %land.lhs.true10
  store ptr null, ptr %pTab, align 8
  %19 = load ptr, ptr %zTable.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %sParse, ptr noundef @.str.14, ptr noundef %19)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true10, %if.end8
  %20 = load ptr, ptr %pTab, align 8
  %tobool13 = icmp ne ptr %20, null
  br i1 %tobool13, label %land.lhs.true14, label %if.end17

land.lhs.true14:                                  ; preds = %if.end12
  %21 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 3
  %22 = load ptr, ptr %pSelect, align 8
  %tobool15 = icmp ne ptr %22, null
  br i1 %tobool15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %land.lhs.true14
  store ptr null, ptr %pTab, align 8
  %23 = load ptr, ptr %zTable.addr, align 8
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %sParse, ptr noundef @.str.15, ptr noundef %23)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %land.lhs.true14, %if.end12
  %24 = load ptr, ptr %pTab, align 8
  %tobool18 = icmp ne ptr %24, null
  br i1 %tobool18, label %if.end25, label %if.then19

if.then19:                                        ; preds = %if.end17
  %zErrMsg = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  %25 = load ptr, ptr %zErrMsg, align 8
  %tobool20 = icmp ne ptr %25, null
  br i1 %tobool20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.then19
  %26 = load ptr, ptr %db.addr, align 8
  %27 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %26, ptr noundef %27)
  %zErrMsg22 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  %28 = load ptr, ptr %zErrMsg22, align 8
  store ptr %28, ptr %zErr, align 8
  %zErrMsg23 = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 1
  store ptr null, ptr %zErrMsg23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.then19
  store i32 1, ptr %rc, align 4
  %29 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %29)
  br label %blob_open_out

if.end25:                                         ; preds = %if.end17
  %30 = load ptr, ptr %pTab, align 8
  %31 = load ptr, ptr %pBlob, align 8
  %pTab26 = getelementptr inbounds nuw %struct.Incrblob, ptr %31, i32 0, i32 7
  store ptr %30, ptr %pTab26, align 8
  %32 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %32, i32 0, i32 4
  %33 = load ptr, ptr %aDb, align 8
  %34 = load ptr, ptr %db.addr, align 8
  %35 = load ptr, ptr %pTab, align 8
  %pSchema = getelementptr inbounds nuw %struct.Table, ptr %35, i32 0, i32 20
  %36 = load ptr, ptr %pSchema, align 8
  %call27 = call i32 @sqlite3SchemaToIndex(ptr noundef %34, ptr noundef %36)
  %idxprom = sext i32 %call27 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %33, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %37 = load ptr, ptr %zDbSName, align 8
  %38 = load ptr, ptr %pBlob, align 8
  %zDb28 = getelementptr inbounds nuw %struct.Incrblob, ptr %38, i32 0, i32 6
  store ptr %37, ptr %zDb28, align 8
  store i32 0, ptr %iCol, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end25
  %39 = load i32, ptr %iCol, align 4
  %40 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %40, i32 0, i32 11
  %41 = load i16, ptr %nCol, align 2
  %conv = sext i16 %41 to i32
  %cmp29 = icmp slt i32 %39, %conv
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %42 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %42, i32 0, i32 1
  %43 = load ptr, ptr %aCol, align 8
  %44 = load i32, ptr %iCol, align 4
  %idxprom31 = sext i32 %44 to i64
  %arrayidx32 = getelementptr inbounds %struct.Column, ptr %43, i64 %idxprom31
  %zName = getelementptr inbounds nuw %struct.Column, ptr %arrayidx32, i32 0, i32 0
  %45 = load ptr, ptr %zName, align 8
  %46 = load ptr, ptr %zColumn.addr, align 8
  %call33 = call i32 @sqlite3StrICmp(ptr noundef %45, ptr noundef %46)
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %for.body
  br label %for.end

if.end37:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %47 = load i32, ptr %iCol, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %iCol, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then36, %for.cond
  %48 = load i32, ptr %iCol, align 4
  %49 = load ptr, ptr %pTab, align 8
  %nCol38 = getelementptr inbounds nuw %struct.Table, ptr %49, i32 0, i32 11
  %50 = load i16, ptr %nCol38, align 2
  %conv39 = sext i16 %50 to i32
  %cmp40 = icmp eq i32 %48, %conv39
  br i1 %cmp40, label %if.then42, label %if.end44

if.then42:                                        ; preds = %for.end
  %51 = load ptr, ptr %db.addr, align 8
  %52 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %51, ptr noundef %52)
  %53 = load ptr, ptr %db.addr, align 8
  %54 = load ptr, ptr %zColumn.addr, align 8
  %call43 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %53, ptr noundef @.str.16, ptr noundef %54)
  store ptr %call43, ptr %zErr, align 8
  store i32 1, ptr %rc, align 4
  %55 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %55)
  br label %blob_open_out

if.end44:                                         ; preds = %for.end
  %56 = load i32, ptr %wrFlag.addr, align 4
  %tobool45 = icmp ne i32 %56, 0
  br i1 %tobool45, label %if.then46, label %if.end103

if.then46:                                        ; preds = %if.end44
  store ptr null, ptr %zFault, align 8
  %57 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %57, i32 0, i32 7
  %58 = load i64, ptr %flags, align 8
  %and47 = and i64 %58, 16384
  %tobool48 = icmp ne i64 %and47, 0
  br i1 %tobool48, label %if.then49, label %if.end71

if.then49:                                        ; preds = %if.then46
  %59 = load ptr, ptr %pTab, align 8
  %pFKey50 = getelementptr inbounds nuw %struct.Table, ptr %59, i32 0, i32 4
  %60 = load ptr, ptr %pFKey50, align 8
  store ptr %60, ptr %pFKey, align 8
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc69, %if.then49
  %61 = load ptr, ptr %pFKey, align 8
  %tobool52 = icmp ne ptr %61, null
  br i1 %tobool52, label %for.body53, label %for.end70

for.body53:                                       ; preds = %for.cond51
  store i32 0, ptr %j, align 4
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc66, %for.body53
  %62 = load i32, ptr %j, align 4
  %63 = load ptr, ptr %pFKey, align 8
  %nCol55 = getelementptr inbounds nuw %struct.FKey, ptr %63, i32 0, i32 5
  %64 = load i32, ptr %nCol55, align 8
  %cmp56 = icmp slt i32 %62, %64
  br i1 %cmp56, label %for.body58, label %for.end68

for.body58:                                       ; preds = %for.cond54
  %65 = load ptr, ptr %pFKey, align 8
  %aCol59 = getelementptr inbounds nuw %struct.FKey, ptr %65, i32 0, i32 9
  %66 = load i32, ptr %j, align 4
  %idxprom60 = sext i32 %66 to i64
  %arrayidx61 = getelementptr inbounds [1 x %struct.sColMap], ptr %aCol59, i64 0, i64 %idxprom60
  %iFrom = getelementptr inbounds nuw %struct.sColMap, ptr %arrayidx61, i32 0, i32 0
  %67 = load i32, ptr %iFrom, align 8
  %68 = load i32, ptr %iCol, align 4
  %cmp62 = icmp eq i32 %67, %68
  br i1 %cmp62, label %if.then64, label %if.end65

if.then64:                                        ; preds = %for.body58
  store ptr @.str.17, ptr %zFault, align 8
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %for.body58
  br label %for.inc66

for.inc66:                                        ; preds = %if.end65
  %69 = load i32, ptr %j, align 4
  %inc67 = add nsw i32 %69, 1
  store i32 %inc67, ptr %j, align 4
  br label %for.cond54, !llvm.loop !8

for.end68:                                        ; preds = %for.cond54
  br label %for.inc69

for.inc69:                                        ; preds = %for.end68
  %70 = load ptr, ptr %pFKey, align 8
  %pNextFrom = getelementptr inbounds nuw %struct.FKey, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %pNextFrom, align 8
  store ptr %71, ptr %pFKey, align 8
  br label %for.cond51, !llvm.loop !9

for.end70:                                        ; preds = %for.cond51
  br label %if.end71

if.end71:                                         ; preds = %for.end70, %if.then46
  %72 = load ptr, ptr %pTab, align 8
  %pIndex = getelementptr inbounds nuw %struct.Table, ptr %72, i32 0, i32 2
  %73 = load ptr, ptr %pIndex, align 8
  store ptr %73, ptr %pIdx, align 8
  br label %for.cond72

for.cond72:                                       ; preds = %for.inc97, %if.end71
  %74 = load ptr, ptr %pIdx, align 8
  %tobool73 = icmp ne ptr %74, null
  br i1 %tobool73, label %for.body74, label %for.end98

for.body74:                                       ; preds = %for.cond72
  store i32 0, ptr %j75, align 4
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc94, %for.body74
  %75 = load i32, ptr %j75, align 4
  %76 = load ptr, ptr %pIdx, align 8
  %nKeyCol = getelementptr inbounds nuw %struct.Index, ptr %76, i32 0, i32 13
  %77 = load i16, ptr %nKeyCol, align 2
  %conv77 = zext i16 %77 to i32
  %cmp78 = icmp slt i32 %75, %conv77
  br i1 %cmp78, label %for.body80, label %for.end96

for.body80:                                       ; preds = %for.cond76
  %78 = load ptr, ptr %pIdx, align 8
  %aiColumn = getelementptr inbounds nuw %struct.Index, ptr %78, i32 0, i32 1
  %79 = load ptr, ptr %aiColumn, align 8
  %80 = load i32, ptr %j75, align 4
  %idxprom81 = sext i32 %80 to i64
  %arrayidx82 = getelementptr inbounds i16, ptr %79, i64 %idxprom81
  %81 = load i16, ptr %arrayidx82, align 2
  %conv83 = sext i16 %81 to i32
  %82 = load i32, ptr %iCol, align 4
  %cmp84 = icmp eq i32 %conv83, %82
  br i1 %cmp84, label %if.then92, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body80
  %83 = load ptr, ptr %pIdx, align 8
  %aiColumn86 = getelementptr inbounds nuw %struct.Index, ptr %83, i32 0, i32 1
  %84 = load ptr, ptr %aiColumn86, align 8
  %85 = load i32, ptr %j75, align 4
  %idxprom87 = sext i32 %85 to i64
  %arrayidx88 = getelementptr inbounds i16, ptr %84, i64 %idxprom87
  %86 = load i16, ptr %arrayidx88, align 2
  %conv89 = sext i16 %86 to i32
  %cmp90 = icmp eq i32 %conv89, -2
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %lor.lhs.false, %for.body80
  store ptr @.str.18, ptr %zFault, align 8
  br label %if.end93

if.end93:                                         ; preds = %if.then92, %lor.lhs.false
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %87 = load i32, ptr %j75, align 4
  %inc95 = add nsw i32 %87, 1
  store i32 %inc95, ptr %j75, align 4
  br label %for.cond76, !llvm.loop !10

for.end96:                                        ; preds = %for.cond76
  br label %for.inc97

for.inc97:                                        ; preds = %for.end96
  %88 = load ptr, ptr %pIdx, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %88, i32 0, i32 5
  %89 = load ptr, ptr %pNext, align 8
  store ptr %89, ptr %pIdx, align 8
  br label %for.cond72, !llvm.loop !11

for.end98:                                        ; preds = %for.cond72
  %90 = load ptr, ptr %zFault, align 8
  %tobool99 = icmp ne ptr %90, null
  br i1 %tobool99, label %if.then100, label %if.end102

if.then100:                                       ; preds = %for.end98
  %91 = load ptr, ptr %db.addr, align 8
  %92 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %91, ptr noundef %92)
  %93 = load ptr, ptr %db.addr, align 8
  %94 = load ptr, ptr %zFault, align 8
  %call101 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %93, ptr noundef @.str.19, ptr noundef %94)
  store ptr %call101, ptr %zErr, align 8
  store i32 1, ptr %rc, align 4
  %95 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %95)
  br label %blob_open_out

if.end102:                                        ; preds = %for.end98
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.end44
  %call104 = call ptr @sqlite3VdbeCreate(ptr noundef %sParse)
  %96 = load ptr, ptr %pBlob, align 8
  %pStmt = getelementptr inbounds nuw %struct.Incrblob, ptr %96, i32 0, i32 4
  store ptr %call104, ptr %pStmt, align 8
  %97 = load ptr, ptr %pBlob, align 8
  %pStmt105 = getelementptr inbounds nuw %struct.Incrblob, ptr %97, i32 0, i32 4
  %98 = load ptr, ptr %pStmt105, align 8
  %tobool106 = icmp ne ptr %98, null
  br i1 %tobool106, label %if.then107, label %if.end147

if.then107:                                       ; preds = %if.end103
  %99 = load ptr, ptr %pBlob, align 8
  %pStmt108 = getelementptr inbounds nuw %struct.Incrblob, ptr %99, i32 0, i32 4
  %100 = load ptr, ptr %pStmt108, align 8
  store ptr %100, ptr %v, align 8
  %101 = load ptr, ptr %db.addr, align 8
  %102 = load ptr, ptr %pTab, align 8
  %pSchema109 = getelementptr inbounds nuw %struct.Table, ptr %102, i32 0, i32 20
  %103 = load ptr, ptr %pSchema109, align 8
  %call110 = call i32 @sqlite3SchemaToIndex(ptr noundef %101, ptr noundef %103)
  store i32 %call110, ptr %iDb, align 4
  %104 = load ptr, ptr %v, align 8
  %105 = load i32, ptr %iDb, align 4
  %106 = load i32, ptr %wrFlag.addr, align 4
  %107 = load ptr, ptr %pTab, align 8
  %pSchema111 = getelementptr inbounds nuw %struct.Table, ptr %107, i32 0, i32 20
  %108 = load ptr, ptr %pSchema111, align 8
  %schema_cookie = getelementptr inbounds nuw %struct.Schema, ptr %108, i32 0, i32 0
  %109 = load i32, ptr %schema_cookie, align 8
  %110 = load ptr, ptr %pTab, align 8
  %pSchema112 = getelementptr inbounds nuw %struct.Table, ptr %110, i32 0, i32 20
  %111 = load ptr, ptr %pSchema112, align 8
  %iGeneration = getelementptr inbounds nuw %struct.Schema, ptr %111, i32 0, i32 1
  %112 = load i32, ptr %iGeneration, align 4
  %call113 = call i32 @sqlite3VdbeAddOp4Int(ptr noundef %104, i32 noundef 2, i32 noundef %105, i32 noundef %106, i32 noundef %109, i32 noundef %112)
  %113 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeChangeP5(ptr noundef %113, i16 noundef zeroext 1)
  %114 = load ptr, ptr %v, align 8
  %call114 = call ptr @sqlite3VdbeAddOpList(ptr noundef %114, i32 noundef 6, ptr noundef @sqlite3_blob_open.openBlob, i32 noundef 0)
  store ptr %call114, ptr %aOp, align 8
  %115 = load ptr, ptr %v, align 8
  %116 = load i32, ptr %iDb, align 4
  call void @sqlite3VdbeUsesBtree(ptr noundef %115, i32 noundef %116)
  %117 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %117, i32 0, i32 19
  %118 = load i8, ptr %mallocFailed, align 1
  %conv115 = zext i8 %118 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %if.then118, label %if.end123

if.then118:                                       ; preds = %if.then107
  %119 = load i32, ptr %iDb, align 4
  %120 = load ptr, ptr %aOp, align 8
  %arrayidx119 = getelementptr inbounds %struct.VdbeOp, ptr %120, i64 0
  %p1 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx119, i32 0, i32 3
  store i32 %119, ptr %p1, align 4
  %121 = load ptr, ptr %pTab, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %121, i32 0, i32 7
  %122 = load i32, ptr %tnum, align 8
  %123 = load ptr, ptr %aOp, align 8
  %arrayidx120 = getelementptr inbounds %struct.VdbeOp, ptr %123, i64 0
  %p2 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx120, i32 0, i32 4
  store i32 %122, ptr %p2, align 8
  %124 = load i32, ptr %wrFlag.addr, align 4
  %125 = load ptr, ptr %aOp, align 8
  %arrayidx121 = getelementptr inbounds %struct.VdbeOp, ptr %125, i64 0
  %p3 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx121, i32 0, i32 5
  store i32 %124, ptr %p3, align 4
  %126 = load ptr, ptr %v, align 8
  %127 = load ptr, ptr %pTab, align 8
  %zName122 = getelementptr inbounds nuw %struct.Table, ptr %127, i32 0, i32 0
  %128 = load ptr, ptr %zName122, align 8
  call void @sqlite3VdbeChangeP4(ptr noundef %126, i32 noundef 2, ptr noundef %128, i32 noundef 0)
  br label %if.end123

if.end123:                                        ; preds = %if.then118, %if.then107
  %129 = load ptr, ptr %db.addr, align 8
  %mallocFailed124 = getelementptr inbounds nuw %struct.sqlite3, ptr %129, i32 0, i32 19
  %130 = load i8, ptr %mallocFailed124, align 1
  %conv125 = zext i8 %130 to i32
  %cmp126 = icmp eq i32 %conv125, 0
  br i1 %cmp126, label %if.then128, label %if.end146

if.then128:                                       ; preds = %if.end123
  %131 = load i32, ptr %wrFlag.addr, align 4
  %tobool129 = icmp ne i32 %131, 0
  br i1 %tobool129, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.then128
  %132 = load ptr, ptr %aOp, align 8
  %arrayidx131 = getelementptr inbounds %struct.VdbeOp, ptr %132, i64 1
  %opcode = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx131, i32 0, i32 0
  store i8 98, ptr %opcode, align 8
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.then128
  %133 = load ptr, ptr %pTab, align 8
  %tnum133 = getelementptr inbounds nuw %struct.Table, ptr %133, i32 0, i32 7
  %134 = load i32, ptr %tnum133, align 8
  %135 = load ptr, ptr %aOp, align 8
  %arrayidx134 = getelementptr inbounds %struct.VdbeOp, ptr %135, i64 1
  %p2135 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx134, i32 0, i32 4
  store i32 %134, ptr %p2135, align 8
  %136 = load i32, ptr %iDb, align 4
  %137 = load ptr, ptr %aOp, align 8
  %arrayidx136 = getelementptr inbounds %struct.VdbeOp, ptr %137, i64 1
  %p3137 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx136, i32 0, i32 5
  store i32 %136, ptr %p3137, align 4
  %138 = load ptr, ptr %aOp, align 8
  %arrayidx138 = getelementptr inbounds %struct.VdbeOp, ptr %138, i64 1
  %p4type = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx138, i32 0, i32 1
  store i8 -3, ptr %p4type, align 1
  %139 = load ptr, ptr %pTab, align 8
  %nCol139 = getelementptr inbounds nuw %struct.Table, ptr %139, i32 0, i32 11
  %140 = load i16, ptr %nCol139, align 2
  %conv140 = sext i16 %140 to i32
  %add = add nsw i32 %conv140, 1
  %141 = load ptr, ptr %aOp, align 8
  %arrayidx141 = getelementptr inbounds %struct.VdbeOp, ptr %141, i64 1
  %p4 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx141, i32 0, i32 6
  store i32 %add, ptr %p4, align 8
  %142 = load ptr, ptr %pTab, align 8
  %nCol142 = getelementptr inbounds nuw %struct.Table, ptr %142, i32 0, i32 11
  %143 = load i16, ptr %nCol142, align 2
  %conv143 = sext i16 %143 to i32
  %144 = load ptr, ptr %aOp, align 8
  %arrayidx144 = getelementptr inbounds %struct.VdbeOp, ptr %144, i64 3
  %p2145 = getelementptr inbounds nuw %struct.VdbeOp, ptr %arrayidx144, i32 0, i32 4
  store i32 %conv143, ptr %p2145, align 8
  %nVar = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 48
  store i16 0, ptr %nVar, align 8
  %nMem = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 18
  store i32 1, ptr %nMem, align 8
  %nTab = getelementptr inbounds nuw %struct.Parse, ptr %sParse, i32 0, i32 17
  store i32 1, ptr %nTab, align 4
  %145 = load ptr, ptr %v, align 8
  call void @sqlite3VdbeMakeReady(ptr noundef %145, ptr noundef %sParse)
  br label %if.end146

if.end146:                                        ; preds = %if.end132, %if.end123
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end103
  %146 = load i32, ptr %iCol, align 4
  %conv148 = trunc i32 %146 to i16
  %147 = load ptr, ptr %pBlob, align 8
  %iCol149 = getelementptr inbounds nuw %struct.Incrblob, ptr %147, i32 0, i32 2
  store i16 %conv148, ptr %iCol149, align 8
  %148 = load ptr, ptr %db.addr, align 8
  %149 = load ptr, ptr %pBlob, align 8
  %db150 = getelementptr inbounds nuw %struct.Incrblob, ptr %149, i32 0, i32 5
  store ptr %148, ptr %db150, align 8
  %150 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %150)
  %151 = load ptr, ptr %db.addr, align 8
  %mallocFailed151 = getelementptr inbounds nuw %struct.sqlite3, ptr %151, i32 0, i32 19
  %152 = load i8, ptr %mallocFailed151, align 1
  %tobool152 = icmp ne i8 %152, 0
  br i1 %tobool152, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.end147
  br label %blob_open_out

if.end154:                                        ; preds = %if.end147
  %153 = load ptr, ptr %pBlob, align 8
  %154 = load i64, ptr %iRow.addr, align 8
  %call155 = call i32 @blobSeekToRow(ptr noundef %153, i64 noundef %154, ptr noundef %zErr)
  store i32 %call155, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end154
  %155 = load i32, ptr %nAttempt, align 4
  %inc156 = add nsw i32 %155, 1
  store i32 %inc156, ptr %nAttempt, align 4
  %cmp157 = icmp slt i32 %inc156, 50
  br i1 %cmp157, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %156 = load i32, ptr %rc, align 4
  %cmp159 = icmp eq i32 %156, 17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %157 = phi i1 [ false, %do.cond ], [ %cmp159, %land.rhs ]
  br i1 %157, label %do.body, label %do.end, !llvm.loop !12

do.end:                                           ; preds = %land.end
  br label %blob_open_out

blob_open_out:                                    ; preds = %do.end, %if.then153, %if.then100, %if.then42, %if.end24, %if.then
  %158 = load i32, ptr %rc, align 4
  %cmp161 = icmp eq i32 %158, 0
  br i1 %cmp161, label %land.lhs.true163, label %if.else

land.lhs.true163:                                 ; preds = %blob_open_out
  %159 = load ptr, ptr %db.addr, align 8
  %mallocFailed164 = getelementptr inbounds nuw %struct.sqlite3, ptr %159, i32 0, i32 19
  %160 = load i8, ptr %mallocFailed164, align 1
  %conv165 = zext i8 %160 to i32
  %cmp166 = icmp eq i32 %conv165, 0
  br i1 %cmp166, label %if.then168, label %if.else

if.then168:                                       ; preds = %land.lhs.true163
  %161 = load ptr, ptr %pBlob, align 8
  %162 = load ptr, ptr %ppBlob.addr, align 8
  store ptr %161, ptr %162, align 8
  br label %if.end177

if.else:                                          ; preds = %land.lhs.true163, %blob_open_out
  %163 = load ptr, ptr %pBlob, align 8
  %tobool169 = icmp ne ptr %163, null
  br i1 %tobool169, label %land.lhs.true170, label %if.end176

land.lhs.true170:                                 ; preds = %if.else
  %164 = load ptr, ptr %pBlob, align 8
  %pStmt171 = getelementptr inbounds nuw %struct.Incrblob, ptr %164, i32 0, i32 4
  %165 = load ptr, ptr %pStmt171, align 8
  %tobool172 = icmp ne ptr %165, null
  br i1 %tobool172, label %if.then173, label %if.end176

if.then173:                                       ; preds = %land.lhs.true170
  %166 = load ptr, ptr %pBlob, align 8
  %pStmt174 = getelementptr inbounds nuw %struct.Incrblob, ptr %166, i32 0, i32 4
  %167 = load ptr, ptr %pStmt174, align 8
  %call175 = call i32 @sqlite3VdbeFinalize(ptr noundef %167)
  br label %if.end176

if.end176:                                        ; preds = %if.then173, %land.lhs.true170, %if.else
  %168 = load ptr, ptr %db.addr, align 8
  %169 = load ptr, ptr %pBlob, align 8
  call void @sqlite3DbFree(ptr noundef %168, ptr noundef %169)
  br label %if.end177

if.end177:                                        ; preds = %if.end176, %if.then168
  %170 = load ptr, ptr %db.addr, align 8
  %171 = load i32, ptr %rc, align 4
  %172 = load ptr, ptr %zErr, align 8
  %tobool178 = icmp ne ptr %172, null
  %173 = zext i1 %tobool178 to i64
  %cond = select i1 %tobool178, ptr @.str.20, ptr null
  %174 = load ptr, ptr %zErr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %170, i32 noundef %171, ptr noundef %cond, ptr noundef %174)
  %175 = load ptr, ptr %db.addr, align 8
  %176 = load ptr, ptr %zErr, align 8
  call void @sqlite3DbFree(ptr noundef %175, ptr noundef %176)
  call void @sqlite3ParserReset(ptr noundef %sParse)
  %177 = load ptr, ptr %db.addr, align 8
  %178 = load i32, ptr %rc, align 4
  %call179 = call i32 @sqlite3ApiExit(ptr noundef %177, i32 noundef %178)
  store i32 %call179, ptr %rc, align 4
  %179 = load ptr, ptr %db.addr, align 8
  %mutex180 = getelementptr inbounds nuw %struct.sqlite3, ptr %179, i32 0, i32 3
  %180 = load ptr, ptr %mutex180, align 8
  call void @sqlite3_mutex_leave(ptr noundef %180)
  %181 = load i32, ptr %rc, align 4
  ret i32 %181
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3LocateTable(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeCreate(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4Int(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP5(ptr noundef, i16 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAddOpList(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeUsesBtree(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeChangeP4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeMakeReady(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @blobSeekToRow(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ParserReset(ptr noundef) #0

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
