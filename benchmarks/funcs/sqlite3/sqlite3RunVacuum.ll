; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.sqlite3_file = type { ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.381 = external hidden unnamed_addr constant [40 x i8], align 1
@.str.382 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.383 = external hidden unnamed_addr constant [18 x i8], align 1
@.str.384 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.385 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.386 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.387 = external hidden unnamed_addr constant [108 x i8], align 1
@.str.388 = external hidden unnamed_addr constant [54 x i8], align 1
@.str.389 = external hidden unnamed_addr constant [151 x i8], align 1
@.str.390 = external hidden unnamed_addr constant [130 x i8], align 1
@sqlite3RunVacuum.aCopy = external hidden constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginTrans(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetPageSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGetJournalMode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeUpdateMeta(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetPageSize(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerIsMemdb(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeGetMeta(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3RunVacuum(ptr noundef %pzErrMsg, ptr noundef %db, i32 noundef %iDb, ptr noundef %pOut) #0 {
entry:
  %retval = alloca i32, align 4
  %pzErrMsg.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %pOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pMain = alloca ptr, align 8
  %pTemp = alloca ptr, align 8
  %saved_mDbFlags = alloca i32, align 4
  %saved_flags = alloca i64, align 8
  %saved_nChange = alloca i32, align 4
  %saved_nTotalChange = alloca i32, align 4
  %saved_openFlags = alloca i32, align 4
  %saved_mTrace = alloca i8, align 1
  %pDb = alloca ptr, align 8
  %isMemDb = alloca i32, align 4
  %nRes = alloca i32, align 4
  %nDb = alloca i32, align 4
  %zDbMain = alloca ptr, align 8
  %zOut = alloca ptr, align 8
  %id = alloca ptr, align 8
  %sz = alloca i64, align 8
  %meta = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store i32 0, ptr %rc, align 4
  store ptr null, ptr %pDb, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 17
  %1 = load i8, ptr %autoCommit, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pzErrMsg.addr, align 8
  %3 = load ptr, ptr %db.addr, align 8
  call void @sqlite3SetString(ptr noundef %2, ptr noundef %3, ptr noundef @.str.381)
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 36
  %5 = load i32, ptr %nVdbeActive, align 8
  %cmp = icmp sgt i32 %5, 1
  br i1 %cmp, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %6 = load ptr, ptr %pzErrMsg.addr, align 8
  %7 = load ptr, ptr %db.addr, align 8
  call void @sqlite3SetString(ptr noundef %6, ptr noundef %7, ptr noundef @.str.382)
  store i32 1, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %if.end
  %8 = load ptr, ptr %db.addr, align 8
  %openFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 11
  %9 = load i32, ptr %openFlags, align 4
  store i32 %9, ptr %saved_openFlags, align 4
  %10 = load ptr, ptr %pOut.addr, align 8
  %tobool3 = icmp ne ptr %10, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end2
  %11 = load ptr, ptr %pOut.addr, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %11)
  %cmp5 = icmp ne i32 %call, 3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  %12 = load ptr, ptr %pzErrMsg.addr, align 8
  %13 = load ptr, ptr %db.addr, align 8
  call void @sqlite3SetString(ptr noundef %12, ptr noundef %13, ptr noundef @.str.383)
  store i32 1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.then4
  %14 = load ptr, ptr %pOut.addr, align 8
  %call8 = call ptr @sqlite3_value_text(ptr noundef %14)
  store ptr %call8, ptr %zOut, align 8
  %15 = load ptr, ptr %db.addr, align 8
  %openFlags9 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 11
  %16 = load i32, ptr %openFlags9, align 4
  %and = and i32 %16, -2
  store i32 %and, ptr %openFlags9, align 4
  %17 = load ptr, ptr %db.addr, align 8
  %openFlags10 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 11
  %18 = load i32, ptr %openFlags10, align 4
  %or = or i32 %18, 6
  store i32 %or, ptr %openFlags10, align 4
  br label %if.end11

if.else:                                          ; preds = %if.end2
  store ptr @.str.3, ptr %zOut, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.end7
  %19 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 7
  %20 = load i64, ptr %flags, align 8
  store i64 %20, ptr %saved_flags, align 8
  %21 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 6
  %22 = load i32, ptr %mDbFlags, align 4
  store i32 %22, ptr %saved_mDbFlags, align 4
  %23 = load ptr, ptr %db.addr, align 8
  %nChange = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 31
  %24 = load i32, ptr %nChange, align 4
  store i32 %24, ptr %saved_nChange, align 4
  %25 = load ptr, ptr %db.addr, align 8
  %nTotalChange = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 32
  %26 = load i32, ptr %nTotalChange, align 8
  store i32 %26, ptr %saved_nTotalChange, align 4
  %27 = load ptr, ptr %db.addr, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 26
  %28 = load i8, ptr %mTrace, align 8
  store i8 %28, ptr %saved_mTrace, align 1
  %29 = load ptr, ptr %db.addr, align 8
  %flags12 = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 7
  %30 = load i64, ptr %flags12, align 8
  %or13 = or i64 %30, 513
  store i64 %or13, ptr %flags12, align 8
  %31 = load ptr, ptr %db.addr, align 8
  %mDbFlags14 = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 6
  %32 = load i32, ptr %mDbFlags14, align 4
  %or15 = or i32 %32, 6
  store i32 %or15, ptr %mDbFlags14, align 4
  %33 = load ptr, ptr %db.addr, align 8
  %flags16 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 7
  %34 = load i64, ptr %flags16, align 8
  %and17 = and i64 %34, -268456065
  store i64 %and17, ptr %flags16, align 8
  %35 = load ptr, ptr %db.addr, align 8
  %mTrace18 = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 26
  store i8 0, ptr %mTrace18, align 8
  %36 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %aDb, align 8
  %38 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %38 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %37, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %39 = load ptr, ptr %zDbSName, align 8
  store ptr %39, ptr %zDbMain, align 8
  %40 = load ptr, ptr %db.addr, align 8
  %aDb19 = getelementptr inbounds nuw %struct.sqlite3, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %aDb19, align 8
  %42 = load i32, ptr %iDb.addr, align 4
  %idxprom20 = sext i32 %42 to i64
  %arrayidx21 = getelementptr inbounds %struct.Db, ptr %41, i64 %idxprom20
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx21, i32 0, i32 1
  %43 = load ptr, ptr %pBt, align 8
  store ptr %43, ptr %pMain, align 8
  %44 = load ptr, ptr %pMain, align 8
  %call22 = call ptr @sqlite3BtreePager(ptr noundef %44)
  %call23 = call i32 @sqlite3PagerIsMemdb(ptr noundef %call22)
  store i32 %call23, ptr %isMemDb, align 4
  %45 = load ptr, ptr %db.addr, align 8
  %nDb24 = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %nDb24, align 8
  store i32 %46, ptr %nDb, align 4
  %47 = load ptr, ptr %db.addr, align 8
  %48 = load ptr, ptr %pzErrMsg.addr, align 8
  %49 = load ptr, ptr %zOut, align 8
  %call25 = call i32 (ptr, ptr, ptr, ...) @execSqlF(ptr noundef %47, ptr noundef %48, ptr noundef @.str.384, ptr noundef %49)
  store i32 %call25, ptr %rc, align 4
  %50 = load i32, ptr %saved_openFlags, align 4
  %51 = load ptr, ptr %db.addr, align 8
  %openFlags26 = getelementptr inbounds nuw %struct.sqlite3, ptr %51, i32 0, i32 11
  store i32 %50, ptr %openFlags26, align 4
  %52 = load i32, ptr %rc, align 4
  %cmp27 = icmp ne i32 %52, 0
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end11
  br label %end_of_vacuum

if.end29:                                         ; preds = %if.end11
  %53 = load ptr, ptr %db.addr, align 8
  %aDb30 = getelementptr inbounds nuw %struct.sqlite3, ptr %53, i32 0, i32 4
  %54 = load ptr, ptr %aDb30, align 8
  %55 = load i32, ptr %nDb, align 4
  %idxprom31 = sext i32 %55 to i64
  %arrayidx32 = getelementptr inbounds %struct.Db, ptr %54, i64 %idxprom31
  store ptr %arrayidx32, ptr %pDb, align 8
  %56 = load ptr, ptr %pDb, align 8
  %pBt33 = getelementptr inbounds nuw %struct.Db, ptr %56, i32 0, i32 1
  %57 = load ptr, ptr %pBt33, align 8
  store ptr %57, ptr %pTemp, align 8
  %58 = load ptr, ptr %pOut.addr, align 8
  %tobool34 = icmp ne ptr %58, null
  br i1 %tobool34, label %if.then35, label %if.end46

if.then35:                                        ; preds = %if.end29
  %59 = load ptr, ptr %pTemp, align 8
  %call36 = call ptr @sqlite3BtreePager(ptr noundef %59)
  %call37 = call ptr @sqlite3PagerFile(ptr noundef %call36)
  store ptr %call37, ptr %id, align 8
  store i64 0, ptr %sz, align 8
  %60 = load ptr, ptr %id, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %pMethods, align 8
  %cmp38 = icmp ne ptr %61, null
  br i1 %cmp38, label %land.lhs.true, label %if.end43

land.lhs.true:                                    ; preds = %if.then35
  %62 = load ptr, ptr %id, align 8
  %call39 = call i32 @sqlite3OsFileSize(ptr noundef %62, ptr noundef %sz)
  %cmp40 = icmp ne i32 %call39, 0
  br i1 %cmp40, label %if.then42, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %63 = load i64, ptr %sz, align 8
  %cmp41 = icmp sgt i64 %63, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %rc, align 4
  %64 = load ptr, ptr %pzErrMsg.addr, align 8
  %65 = load ptr, ptr %db.addr, align 8
  call void @sqlite3SetString(ptr noundef %64, ptr noundef %65, ptr noundef @.str.385)
  br label %end_of_vacuum

if.end43:                                         ; preds = %lor.lhs.false, %if.then35
  %66 = load ptr, ptr %db.addr, align 8
  %mDbFlags44 = getelementptr inbounds nuw %struct.sqlite3, ptr %66, i32 0, i32 6
  %67 = load i32, ptr %mDbFlags44, align 4
  %or45 = or i32 %67, 8
  store i32 %or45, ptr %mDbFlags44, align 4
  br label %if.end46

if.end46:                                         ; preds = %if.end43, %if.end29
  %68 = load ptr, ptr %pMain, align 8
  %call47 = call i32 @sqlite3BtreeGetOptimalReserve(ptr noundef %68)
  store i32 %call47, ptr %nRes, align 4
  %69 = load ptr, ptr %pTemp, align 8
  %70 = load ptr, ptr %db.addr, align 8
  %aDb48 = getelementptr inbounds nuw %struct.sqlite3, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %aDb48, align 8
  %72 = load i32, ptr %iDb.addr, align 4
  %idxprom49 = sext i32 %72 to i64
  %arrayidx50 = getelementptr inbounds %struct.Db, ptr %71, i64 %idxprom49
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx50, i32 0, i32 4
  %73 = load ptr, ptr %pSchema, align 8
  %cache_size = getelementptr inbounds nuw %struct.Schema, ptr %73, i32 0, i32 10
  %74 = load i32, ptr %cache_size, align 4
  %call51 = call i32 @sqlite3BtreeSetCacheSize(ptr noundef %69, i32 noundef %74)
  %75 = load ptr, ptr %pTemp, align 8
  %76 = load ptr, ptr %pMain, align 8
  %call52 = call i32 @sqlite3BtreeSetSpillSize(ptr noundef %76, i32 noundef 0)
  %call53 = call i32 @sqlite3BtreeSetSpillSize(ptr noundef %75, i32 noundef %call52)
  %77 = load ptr, ptr %pTemp, align 8
  %call54 = call i32 @sqlite3BtreeSetPagerFlags(ptr noundef %77, i32 noundef 33)
  %78 = load ptr, ptr %db.addr, align 8
  %79 = load ptr, ptr %pzErrMsg.addr, align 8
  %call55 = call i32 @execSql(ptr noundef %78, ptr noundef %79, ptr noundef @.str.386)
  store i32 %call55, ptr %rc, align 4
  %80 = load i32, ptr %rc, align 4
  %cmp56 = icmp ne i32 %80, 0
  br i1 %cmp56, label %if.then57, label %if.end58

if.then57:                                        ; preds = %if.end46
  br label %end_of_vacuum

if.end58:                                         ; preds = %if.end46
  %81 = load ptr, ptr %pMain, align 8
  %82 = load ptr, ptr %pOut.addr, align 8
  %cmp59 = icmp eq ptr %82, null
  %83 = zext i1 %cmp59 to i64
  %cond = select i1 %cmp59, i32 2, i32 0
  %call60 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %81, i32 noundef %cond, ptr noundef null)
  store i32 %call60, ptr %rc, align 4
  %84 = load i32, ptr %rc, align 4
  %cmp61 = icmp ne i32 %84, 0
  br i1 %cmp61, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.end58
  br label %end_of_vacuum

if.end63:                                         ; preds = %if.end58
  %85 = load ptr, ptr %pMain, align 8
  %call64 = call ptr @sqlite3BtreePager(ptr noundef %85)
  %call65 = call i32 @sqlite3PagerGetJournalMode(ptr noundef %call64)
  %cmp66 = icmp eq i32 %call65, 5
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end63
  %86 = load ptr, ptr %db.addr, align 8
  %nextPagesize = getelementptr inbounds nuw %struct.sqlite3, ptr %86, i32 0, i32 29
  store i32 0, ptr %nextPagesize, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.end63
  %87 = load ptr, ptr %pTemp, align 8
  %88 = load ptr, ptr %pMain, align 8
  %call69 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %88)
  %89 = load i32, ptr %nRes, align 4
  %call70 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %87, i32 noundef %call69, i32 noundef %89, i32 noundef 0)
  %tobool71 = icmp ne i32 %call70, 0
  br i1 %tobool71, label %if.then80, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end68
  %90 = load i32, ptr %isMemDb, align 4
  %tobool73 = icmp ne i32 %90, 0
  br i1 %tobool73, label %lor.lhs.false78, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %lor.lhs.false72
  %91 = load ptr, ptr %pTemp, align 8
  %92 = load ptr, ptr %db.addr, align 8
  %nextPagesize75 = getelementptr inbounds nuw %struct.sqlite3, ptr %92, i32 0, i32 29
  %93 = load i32, ptr %nextPagesize75, align 4
  %94 = load i32, ptr %nRes, align 4
  %call76 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %91, i32 noundef %93, i32 noundef %94, i32 noundef 0)
  %tobool77 = icmp ne i32 %call76, 0
  br i1 %tobool77, label %if.then80, label %lor.lhs.false78

lor.lhs.false78:                                  ; preds = %land.lhs.true74, %lor.lhs.false72
  %95 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %95, i32 0, i32 19
  %96 = load i8, ptr %mallocFailed, align 1
  %conv = zext i8 %96 to i32
  %tobool79 = icmp ne i32 %conv, 0
  br i1 %tobool79, label %if.then80, label %if.end81

if.then80:                                        ; preds = %lor.lhs.false78, %land.lhs.true74, %if.end68
  store i32 7, ptr %rc, align 4
  br label %end_of_vacuum

if.end81:                                         ; preds = %lor.lhs.false78
  %97 = load ptr, ptr %pTemp, align 8
  %98 = load ptr, ptr %db.addr, align 8
  %nextAutovac = getelementptr inbounds nuw %struct.sqlite3, ptr %98, i32 0, i32 22
  %99 = load i8, ptr %nextAutovac, align 4
  %conv82 = sext i8 %99 to i32
  %cmp83 = icmp sge i32 %conv82, 0
  br i1 %cmp83, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end81
  %100 = load ptr, ptr %db.addr, align 8
  %nextAutovac85 = getelementptr inbounds nuw %struct.sqlite3, ptr %100, i32 0, i32 22
  %101 = load i8, ptr %nextAutovac85, align 4
  %conv86 = sext i8 %101 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end81
  %102 = load ptr, ptr %pMain, align 8
  %call87 = call i32 @sqlite3BtreeGetAutoVacuum(ptr noundef %102)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond88 = phi i32 [ %conv86, %cond.true ], [ %call87, %cond.false ]
  %call89 = call i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %97, i32 noundef %cond88)
  %103 = load i32, ptr %nDb, align 4
  %conv90 = trunc i32 %103 to i8
  %104 = load ptr, ptr %db.addr, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %104, i32 0, i32 35
  %iDb91 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 1
  store i8 %conv90, ptr %iDb91, align 4
  %105 = load ptr, ptr %db.addr, align 8
  %106 = load ptr, ptr %pzErrMsg.addr, align 8
  %107 = load ptr, ptr %zDbMain, align 8
  %call92 = call i32 (ptr, ptr, ptr, ...) @execSqlF(ptr noundef %105, ptr noundef %106, ptr noundef @.str.387, ptr noundef %107)
  store i32 %call92, ptr %rc, align 4
  %108 = load i32, ptr %rc, align 4
  %cmp93 = icmp ne i32 %108, 0
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %cond.end
  br label %end_of_vacuum

if.end96:                                         ; preds = %cond.end
  %109 = load ptr, ptr %db.addr, align 8
  %110 = load ptr, ptr %pzErrMsg.addr, align 8
  %111 = load ptr, ptr %zDbMain, align 8
  %call97 = call i32 (ptr, ptr, ptr, ...) @execSqlF(ptr noundef %109, ptr noundef %110, ptr noundef @.str.388, ptr noundef %111)
  store i32 %call97, ptr %rc, align 4
  %112 = load i32, ptr %rc, align 4
  %cmp98 = icmp ne i32 %112, 0
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.end96
  br label %end_of_vacuum

if.end101:                                        ; preds = %if.end96
  %113 = load ptr, ptr %db.addr, align 8
  %init102 = getelementptr inbounds nuw %struct.sqlite3, ptr %113, i32 0, i32 35
  %iDb103 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init102, i32 0, i32 1
  store i8 0, ptr %iDb103, align 4
  %114 = load ptr, ptr %db.addr, align 8
  %115 = load ptr, ptr %pzErrMsg.addr, align 8
  %116 = load ptr, ptr %zDbMain, align 8
  %call104 = call i32 (ptr, ptr, ptr, ...) @execSqlF(ptr noundef %114, ptr noundef %115, ptr noundef @.str.389, ptr noundef %116)
  store i32 %call104, ptr %rc, align 4
  %117 = load ptr, ptr %db.addr, align 8
  %mDbFlags105 = getelementptr inbounds nuw %struct.sqlite3, ptr %117, i32 0, i32 6
  %118 = load i32, ptr %mDbFlags105, align 4
  %and106 = and i32 %118, -5
  store i32 %and106, ptr %mDbFlags105, align 4
  %119 = load i32, ptr %rc, align 4
  %cmp107 = icmp ne i32 %119, 0
  br i1 %cmp107, label %if.then109, label %if.end110

if.then109:                                       ; preds = %if.end101
  br label %end_of_vacuum

if.end110:                                        ; preds = %if.end101
  %120 = load ptr, ptr %db.addr, align 8
  %121 = load ptr, ptr %pzErrMsg.addr, align 8
  %122 = load ptr, ptr %zDbMain, align 8
  %call111 = call i32 (ptr, ptr, ptr, ...) @execSqlF(ptr noundef %120, ptr noundef %121, ptr noundef @.str.390, ptr noundef %122)
  store i32 %call111, ptr %rc, align 4
  %123 = load i32, ptr %rc, align 4
  %tobool112 = icmp ne i32 %123, 0
  br i1 %tobool112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end110
  br label %end_of_vacuum

if.end114:                                        ; preds = %if.end110
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end114
  %124 = load i32, ptr %i, align 4
  %cmp115 = icmp slt i32 %124, 10
  br i1 %cmp115, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %125 = load ptr, ptr %pMain, align 8
  %126 = load i32, ptr %i, align 4
  %idxprom117 = sext i32 %126 to i64
  %arrayidx118 = getelementptr inbounds [10 x i8], ptr @sqlite3RunVacuum.aCopy, i64 0, i64 %idxprom117
  %127 = load i8, ptr %arrayidx118, align 1
  %conv119 = zext i8 %127 to i32
  call void @sqlite3BtreeGetMeta(ptr noundef %125, i32 noundef %conv119, ptr noundef %meta)
  %128 = load ptr, ptr %pTemp, align 8
  %129 = load i32, ptr %i, align 4
  %idxprom120 = sext i32 %129 to i64
  %arrayidx121 = getelementptr inbounds [10 x i8], ptr @sqlite3RunVacuum.aCopy, i64 0, i64 %idxprom120
  %130 = load i8, ptr %arrayidx121, align 1
  %conv122 = zext i8 %130 to i32
  %131 = load i32, ptr %meta, align 4
  %132 = load i32, ptr %i, align 4
  %add = add nsw i32 %132, 1
  %idxprom123 = sext i32 %add to i64
  %arrayidx124 = getelementptr inbounds [10 x i8], ptr @sqlite3RunVacuum.aCopy, i64 0, i64 %idxprom123
  %133 = load i8, ptr %arrayidx124, align 1
  %conv125 = zext i8 %133 to i32
  %add126 = add i32 %131, %conv125
  %call127 = call i32 @sqlite3BtreeUpdateMeta(ptr noundef %128, i32 noundef %conv122, i32 noundef %add126)
  store i32 %call127, ptr %rc, align 4
  %134 = load i32, ptr %rc, align 4
  %cmp128 = icmp ne i32 %134, 0
  br i1 %cmp128, label %if.then130, label %if.end131

if.then130:                                       ; preds = %for.body
  br label %end_of_vacuum

if.end131:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end131
  %135 = load i32, ptr %i, align 4
  %add132 = add nsw i32 %135, 2
  store i32 %add132, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %136 = load ptr, ptr %pOut.addr, align 8
  %cmp133 = icmp eq ptr %136, null
  br i1 %cmp133, label %if.then135, label %if.end137

if.then135:                                       ; preds = %for.end
  %137 = load ptr, ptr %pMain, align 8
  %138 = load ptr, ptr %pTemp, align 8
  %call136 = call i32 @sqlite3BtreeCopyFile(ptr noundef %137, ptr noundef %138)
  store i32 %call136, ptr %rc, align 4
  br label %if.end137

if.end137:                                        ; preds = %if.then135, %for.end
  %139 = load i32, ptr %rc, align 4
  %cmp138 = icmp ne i32 %139, 0
  br i1 %cmp138, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end137
  br label %end_of_vacuum

if.end141:                                        ; preds = %if.end137
  %140 = load ptr, ptr %pTemp, align 8
  %call142 = call i32 @sqlite3BtreeCommit(ptr noundef %140)
  store i32 %call142, ptr %rc, align 4
  %141 = load i32, ptr %rc, align 4
  %cmp143 = icmp ne i32 %141, 0
  br i1 %cmp143, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.end141
  br label %end_of_vacuum

if.end146:                                        ; preds = %if.end141
  %142 = load ptr, ptr %pOut.addr, align 8
  %cmp147 = icmp eq ptr %142, null
  br i1 %cmp147, label %if.then149, label %if.end152

if.then149:                                       ; preds = %if.end146
  %143 = load ptr, ptr %pMain, align 8
  %144 = load ptr, ptr %pTemp, align 8
  %call150 = call i32 @sqlite3BtreeGetAutoVacuum(ptr noundef %144)
  %call151 = call i32 @sqlite3BtreeSetAutoVacuum(ptr noundef %143, i32 noundef %call150)
  br label %if.end152

if.end152:                                        ; preds = %if.then149, %if.end146
  %145 = load ptr, ptr %pOut.addr, align 8
  %cmp153 = icmp eq ptr %145, null
  br i1 %cmp153, label %if.then155, label %if.end158

if.then155:                                       ; preds = %if.end152
  %146 = load ptr, ptr %pMain, align 8
  %147 = load ptr, ptr %pTemp, align 8
  %call156 = call i32 @sqlite3BtreeGetPageSize(ptr noundef %147)
  %148 = load i32, ptr %nRes, align 4
  %call157 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %146, i32 noundef %call156, i32 noundef %148, i32 noundef 1)
  store i32 %call157, ptr %rc, align 4
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.end152
  br label %end_of_vacuum

end_of_vacuum:                                    ; preds = %if.end158, %if.then145, %if.then140, %if.then130, %if.then113, %if.then109, %if.then100, %if.then95, %if.then80, %if.then62, %if.then57, %if.then42, %if.then28
  %149 = load ptr, ptr %db.addr, align 8
  %init159 = getelementptr inbounds nuw %struct.sqlite3, ptr %149, i32 0, i32 35
  %iDb160 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init159, i32 0, i32 1
  store i8 0, ptr %iDb160, align 4
  %150 = load i32, ptr %saved_mDbFlags, align 4
  %151 = load ptr, ptr %db.addr, align 8
  %mDbFlags161 = getelementptr inbounds nuw %struct.sqlite3, ptr %151, i32 0, i32 6
  store i32 %150, ptr %mDbFlags161, align 4
  %152 = load i64, ptr %saved_flags, align 8
  %153 = load ptr, ptr %db.addr, align 8
  %flags162 = getelementptr inbounds nuw %struct.sqlite3, ptr %153, i32 0, i32 7
  store i64 %152, ptr %flags162, align 8
  %154 = load i32, ptr %saved_nChange, align 4
  %155 = load ptr, ptr %db.addr, align 8
  %nChange163 = getelementptr inbounds nuw %struct.sqlite3, ptr %155, i32 0, i32 31
  store i32 %154, ptr %nChange163, align 4
  %156 = load i32, ptr %saved_nTotalChange, align 4
  %157 = load ptr, ptr %db.addr, align 8
  %nTotalChange164 = getelementptr inbounds nuw %struct.sqlite3, ptr %157, i32 0, i32 32
  store i32 %156, ptr %nTotalChange164, align 8
  %158 = load i8, ptr %saved_mTrace, align 1
  %159 = load ptr, ptr %db.addr, align 8
  %mTrace165 = getelementptr inbounds nuw %struct.sqlite3, ptr %159, i32 0, i32 26
  store i8 %158, ptr %mTrace165, align 8
  %160 = load ptr, ptr %pMain, align 8
  %call166 = call i32 @sqlite3BtreeSetPageSize(ptr noundef %160, i32 noundef -1, i32 noundef -1, i32 noundef 1)
  %161 = load ptr, ptr %db.addr, align 8
  %autoCommit167 = getelementptr inbounds nuw %struct.sqlite3, ptr %161, i32 0, i32 17
  store i8 1, ptr %autoCommit167, align 1
  %162 = load ptr, ptr %pDb, align 8
  %tobool168 = icmp ne ptr %162, null
  br i1 %tobool168, label %if.then169, label %if.end174

if.then169:                                       ; preds = %end_of_vacuum
  %163 = load ptr, ptr %pDb, align 8
  %pBt170 = getelementptr inbounds nuw %struct.Db, ptr %163, i32 0, i32 1
  %164 = load ptr, ptr %pBt170, align 8
  %call171 = call i32 @sqlite3BtreeClose(ptr noundef %164)
  %165 = load ptr, ptr %pDb, align 8
  %pBt172 = getelementptr inbounds nuw %struct.Db, ptr %165, i32 0, i32 1
  store ptr null, ptr %pBt172, align 8
  %166 = load ptr, ptr %pDb, align 8
  %pSchema173 = getelementptr inbounds nuw %struct.Db, ptr %166, i32 0, i32 4
  store ptr null, ptr %pSchema173, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %end_of_vacuum
  %167 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %167)
  %168 = load i32, ptr %rc, align 4
  store i32 %168, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end174, %if.then6, %if.then1, %if.then
  %169 = load i32, ptr %retval, align 4
  ret i32 %169
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SetString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetCacheSize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @execSqlF(ptr noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetOptimalReserve(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetSpillSize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetPagerFlags(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @execSql(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetAutoVacuum(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeGetAutoVacuum(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCopyFile(ptr noundef, ptr noundef) #0

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
