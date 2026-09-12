; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InitData = type { ptr, ptr, i32, i32, i32, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.330 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.332 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.333 = external hidden unnamed_addr constant [72 x i8], align 1
@.str.334 = external hidden unnamed_addr constant [68 x i8], align 1
@.str.335 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.336 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInReadTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginTrans(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AbsInt32(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetOneSchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeGetMeta(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3InitOne(ptr noundef %db, i32 noundef %iDb, ptr noundef %pzErrMsg, i32 noundef %mFlags) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %pzErrMsg.addr = alloca ptr, align 8
  %mFlags.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %pDb = alloca ptr, align 8
  %azArg = alloca [6 x ptr], align 16
  %meta = alloca [5 x i32], align 16
  %initData = alloca %struct.InitData, align 8
  %zMasterName = alloca ptr, align 8
  %openedTransaction = alloca i32, align 4
  %encoding = alloca i8, align 1
  %zSql = alloca ptr, align 8
  %xAuth = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  store i32 %mFlags, ptr %mFlags.addr, align 4
  store i32 0, ptr %openedTransaction, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  store i8 1, ptr %busy, align 1
  %arrayidx = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 0
  store ptr @.str.330, ptr %arrayidx, align 16
  %1 = load i32, ptr %iDb.addr, align 4
  %cmp = icmp eq i32 %1, 1
  %2 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.331, ptr @.str.320
  store ptr %cond, ptr %zMasterName, align 8
  %arrayidx1 = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 1
  store ptr %cond, ptr %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 1
  %3 = load ptr, ptr %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 2
  store ptr %3, ptr %arrayidx3, align 16
  %arrayidx4 = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 3
  store ptr @.str.332, ptr %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 4
  store ptr @.str.333, ptr %arrayidx5, align 16
  %arrayidx6 = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 5
  store ptr null, ptr %arrayidx6, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %db7 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 0
  store ptr %4, ptr %db7, align 8
  %5 = load i32, ptr %iDb.addr, align 4
  %iDb8 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 2
  store i32 %5, ptr %iDb8, align 8
  %rc9 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 3
  store i32 0, ptr %rc9, align 4
  %6 = load ptr, ptr %pzErrMsg.addr, align 8
  %pzErrMsg10 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 1
  store ptr %6, ptr %pzErrMsg10, align 8
  %7 = load i32, ptr %mFlags.addr, align 4
  %mInitFlags = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 4
  store i32 %7, ptr %mInitFlags, align 8
  %nInitRow = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 5
  store i32 0, ptr %nInitRow, align 4
  %arraydecay = getelementptr inbounds [6 x ptr], ptr %azArg, i64 0, i64 0
  %call = call i32 @sqlite3InitCallback(ptr noundef %initData, i32 noundef 5, ptr noundef %arraydecay, ptr noundef null)
  %rc11 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 3
  %8 = load i32, ptr %rc11, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rc12 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 3
  %9 = load i32, ptr %rc12, align 4
  store i32 %9, ptr %rc, align 4
  br label %error_out

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %aDb, align 8
  %12 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds %struct.Db, ptr %11, i64 %idxprom
  store ptr %arrayidx13, ptr %pDb, align 8
  %13 = load ptr, ptr %pDb, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pBt, align 8
  %cmp14 = icmp eq ptr %14, null
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end
  %15 = load ptr, ptr %db.addr, align 8
  %aDb16 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %aDb16, align 8
  %arrayidx17 = getelementptr inbounds %struct.Db, ptr %16, i64 1
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx17, i32 0, i32 4
  %17 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %17, i32 0, i32 9
  %18 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %18 to i32
  %or = or i32 %conv, 1
  %conv18 = trunc i32 %or to i16
  store i16 %conv18, ptr %schemaFlags, align 2
  store i32 0, ptr %rc, align 4
  br label %error_out

if.end19:                                         ; preds = %if.end
  %19 = load ptr, ptr %pDb, align 8
  %pBt20 = getelementptr inbounds nuw %struct.Db, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pBt20, align 8
  call void @sqlite3BtreeEnter(ptr noundef %20)
  %21 = load ptr, ptr %pDb, align 8
  %pBt21 = getelementptr inbounds nuw %struct.Db, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pBt21, align 8
  %call22 = call i32 @sqlite3BtreeIsInReadTrans(ptr noundef %22)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end32, label %if.then24

if.then24:                                        ; preds = %if.end19
  %23 = load ptr, ptr %pDb, align 8
  %pBt25 = getelementptr inbounds nuw %struct.Db, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pBt25, align 8
  %call26 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %24, i32 noundef 0, ptr noundef null)
  store i32 %call26, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp27 = icmp ne i32 %25, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then24
  %26 = load ptr, ptr %pzErrMsg.addr, align 8
  %27 = load ptr, ptr %db.addr, align 8
  %28 = load i32, ptr %rc, align 4
  %call30 = call ptr @sqlite3ErrStr(i32 noundef %28)
  call void @sqlite3SetString(ptr noundef %26, ptr noundef %27, ptr noundef %call30)
  br label %initone_error_out

if.end31:                                         ; preds = %if.then24
  store i32 1, ptr %openedTransaction, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end19
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end32
  %29 = load i32, ptr %i, align 4
  %cmp33 = icmp slt i32 %29, 5
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %30 = load ptr, ptr %pDb, align 8
  %pBt35 = getelementptr inbounds nuw %struct.Db, ptr %30, i32 0, i32 1
  %31 = load ptr, ptr %pBt35, align 8
  %32 = load i32, ptr %i, align 4
  %add = add nsw i32 %32, 1
  %33 = load i32, ptr %i, align 4
  %idxprom36 = sext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 %idxprom36
  call void @sqlite3BtreeGetMeta(ptr noundef %31, i32 noundef %add, ptr noundef %arrayidx37)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %34 = load i32, ptr %i, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 7
  %36 = load i64, ptr %flags, align 8
  %and = and i64 %36, 33554432
  %cmp38 = icmp ne i64 %and, 0
  br i1 %cmp38, label %if.then40, label %if.end42

if.then40:                                        ; preds = %for.end
  %arraydecay41 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay41, i8 0, i64 20, i1 false)
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %for.end
  %arrayidx43 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 0
  %37 = load i32, ptr %arrayidx43, align 16
  %38 = load ptr, ptr %pDb, align 8
  %pSchema44 = getelementptr inbounds nuw %struct.Db, ptr %38, i32 0, i32 4
  %39 = load ptr, ptr %pSchema44, align 8
  %schema_cookie = getelementptr inbounds nuw %struct.Schema, ptr %39, i32 0, i32 0
  store i32 %37, ptr %schema_cookie, align 8
  %arrayidx45 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 4
  %40 = load i32, ptr %arrayidx45, align 16
  %tobool46 = icmp ne i32 %40, 0
  br i1 %tobool46, label %if.then47, label %if.else69

if.then47:                                        ; preds = %if.end42
  %41 = load i32, ptr %iDb.addr, align 4
  %cmp48 = icmp eq i32 %41, 0
  br i1 %cmp48, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.then47
  %arrayidx51 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 4
  %42 = load i32, ptr %arrayidx51, align 16
  %conv52 = trunc i32 %42 to i8
  %conv53 = zext i8 %conv52 to i32
  %and54 = and i32 %conv53, 3
  %conv55 = trunc i32 %and54 to i8
  store i8 %conv55, ptr %encoding, align 1
  %43 = load i8, ptr %encoding, align 1
  %conv56 = zext i8 %43 to i32
  %cmp57 = icmp eq i32 %conv56, 0
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then50
  store i8 1, ptr %encoding, align 1
  br label %if.end60

if.end60:                                         ; preds = %if.then59, %if.then50
  %44 = load i8, ptr %encoding, align 1
  %45 = load ptr, ptr %db.addr, align 8
  %enc = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 16
  store i8 %44, ptr %enc, align 2
  br label %if.end68

if.else:                                          ; preds = %if.then47
  %arrayidx61 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 4
  %46 = load i32, ptr %arrayidx61, align 16
  %47 = load ptr, ptr %db.addr, align 8
  %enc62 = getelementptr inbounds nuw %struct.sqlite3, ptr %47, i32 0, i32 16
  %48 = load i8, ptr %enc62, align 2
  %conv63 = zext i8 %48 to i32
  %cmp64 = icmp ne i32 %46, %conv63
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.else
  %49 = load ptr, ptr %pzErrMsg.addr, align 8
  %50 = load ptr, ptr %db.addr, align 8
  call void @sqlite3SetString(ptr noundef %49, ptr noundef %50, ptr noundef @.str.334)
  store i32 1, ptr %rc, align 4
  br label %initone_error_out

if.end67:                                         ; preds = %if.else
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end60
  br label %if.end78

if.else69:                                        ; preds = %if.end42
  %51 = load ptr, ptr %db.addr, align 8
  %aDb70 = getelementptr inbounds nuw %struct.sqlite3, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %aDb70, align 8
  %53 = load i32, ptr %iDb.addr, align 4
  %idxprom71 = sext i32 %53 to i64
  %arrayidx72 = getelementptr inbounds %struct.Db, ptr %52, i64 %idxprom71
  %pSchema73 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx72, i32 0, i32 4
  %54 = load ptr, ptr %pSchema73, align 8
  %schemaFlags74 = getelementptr inbounds nuw %struct.Schema, ptr %54, i32 0, i32 9
  %55 = load i16, ptr %schemaFlags74, align 2
  %conv75 = zext i16 %55 to i32
  %or76 = or i32 %conv75, 4
  %conv77 = trunc i32 %or76 to i16
  store i16 %conv77, ptr %schemaFlags74, align 2
  br label %if.end78

if.end78:                                         ; preds = %if.else69, %if.end68
  %56 = load ptr, ptr %db.addr, align 8
  %enc79 = getelementptr inbounds nuw %struct.sqlite3, ptr %56, i32 0, i32 16
  %57 = load i8, ptr %enc79, align 2
  %58 = load ptr, ptr %pDb, align 8
  %pSchema80 = getelementptr inbounds nuw %struct.Db, ptr %58, i32 0, i32 4
  %59 = load ptr, ptr %pSchema80, align 8
  %enc81 = getelementptr inbounds nuw %struct.Schema, ptr %59, i32 0, i32 8
  store i8 %57, ptr %enc81, align 1
  %60 = load ptr, ptr %pDb, align 8
  %pSchema82 = getelementptr inbounds nuw %struct.Db, ptr %60, i32 0, i32 4
  %61 = load ptr, ptr %pSchema82, align 8
  %cache_size = getelementptr inbounds nuw %struct.Schema, ptr %61, i32 0, i32 10
  %62 = load i32, ptr %cache_size, align 4
  %cmp83 = icmp eq i32 %62, 0
  br i1 %cmp83, label %if.then85, label %if.end98

if.then85:                                        ; preds = %if.end78
  %arrayidx86 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 2
  %63 = load i32, ptr %arrayidx86, align 8
  %call87 = call i32 @sqlite3AbsInt32(i32 noundef %63)
  store i32 %call87, ptr %size, align 4
  %64 = load i32, ptr %size, align 4
  %cmp88 = icmp eq i32 %64, 0
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %if.then85
  store i32 -2000, ptr %size, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then90, %if.then85
  %65 = load i32, ptr %size, align 4
  %66 = load ptr, ptr %pDb, align 8
  %pSchema92 = getelementptr inbounds nuw %struct.Db, ptr %66, i32 0, i32 4
  %67 = load ptr, ptr %pSchema92, align 8
  %cache_size93 = getelementptr inbounds nuw %struct.Schema, ptr %67, i32 0, i32 10
  store i32 %65, ptr %cache_size93, align 4
  %68 = load ptr, ptr %pDb, align 8
  %pBt94 = getelementptr inbounds nuw %struct.Db, ptr %68, i32 0, i32 1
  %69 = load ptr, ptr %pBt94, align 8
  %70 = load ptr, ptr %pDb, align 8
  %pSchema95 = getelementptr inbounds nuw %struct.Db, ptr %70, i32 0, i32 4
  %71 = load ptr, ptr %pSchema95, align 8
  %cache_size96 = getelementptr inbounds nuw %struct.Schema, ptr %71, i32 0, i32 10
  %72 = load i32, ptr %cache_size96, align 4
  %call97 = call i32 @sqlite3BtreeSetCacheSize(ptr noundef %69, i32 noundef %72)
  br label %if.end98

if.end98:                                         ; preds = %if.end91, %if.end78
  %arrayidx99 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 1
  %73 = load i32, ptr %arrayidx99, align 4
  %conv100 = trunc i32 %73 to i8
  %74 = load ptr, ptr %pDb, align 8
  %pSchema101 = getelementptr inbounds nuw %struct.Db, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %pSchema101, align 8
  %file_format = getelementptr inbounds nuw %struct.Schema, ptr %75, i32 0, i32 7
  store i8 %conv100, ptr %file_format, align 8
  %76 = load ptr, ptr %pDb, align 8
  %pSchema102 = getelementptr inbounds nuw %struct.Db, ptr %76, i32 0, i32 4
  %77 = load ptr, ptr %pSchema102, align 8
  %file_format103 = getelementptr inbounds nuw %struct.Schema, ptr %77, i32 0, i32 7
  %78 = load i8, ptr %file_format103, align 8
  %conv104 = zext i8 %78 to i32
  %cmp105 = icmp eq i32 %conv104, 0
  br i1 %cmp105, label %if.then107, label %if.end110

if.then107:                                       ; preds = %if.end98
  %79 = load ptr, ptr %pDb, align 8
  %pSchema108 = getelementptr inbounds nuw %struct.Db, ptr %79, i32 0, i32 4
  %80 = load ptr, ptr %pSchema108, align 8
  %file_format109 = getelementptr inbounds nuw %struct.Schema, ptr %80, i32 0, i32 7
  store i8 1, ptr %file_format109, align 8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end98
  %81 = load ptr, ptr %pDb, align 8
  %pSchema111 = getelementptr inbounds nuw %struct.Db, ptr %81, i32 0, i32 4
  %82 = load ptr, ptr %pSchema111, align 8
  %file_format112 = getelementptr inbounds nuw %struct.Schema, ptr %82, i32 0, i32 7
  %83 = load i8, ptr %file_format112, align 8
  %conv113 = zext i8 %83 to i32
  %cmp114 = icmp sgt i32 %conv113, 4
  br i1 %cmp114, label %if.then116, label %if.end117

if.then116:                                       ; preds = %if.end110
  %84 = load ptr, ptr %pzErrMsg.addr, align 8
  %85 = load ptr, ptr %db.addr, align 8
  call void @sqlite3SetString(ptr noundef %84, ptr noundef %85, ptr noundef @.str.335)
  store i32 1, ptr %rc, align 4
  br label %initone_error_out

if.end117:                                        ; preds = %if.end110
  %86 = load i32, ptr %iDb.addr, align 4
  %cmp118 = icmp eq i32 %86, 0
  br i1 %cmp118, label %land.lhs.true, label %if.end126

land.lhs.true:                                    ; preds = %if.end117
  %arrayidx120 = getelementptr inbounds [5 x i32], ptr %meta, i64 0, i64 1
  %87 = load i32, ptr %arrayidx120, align 4
  %cmp121 = icmp sge i32 %87, 4
  br i1 %cmp121, label %if.then123, label %if.end126

if.then123:                                       ; preds = %land.lhs.true
  %88 = load ptr, ptr %db.addr, align 8
  %flags124 = getelementptr inbounds nuw %struct.sqlite3, ptr %88, i32 0, i32 7
  %89 = load i64, ptr %flags124, align 8
  %and125 = and i64 %89, -3
  store i64 %and125, ptr %flags124, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %land.lhs.true, %if.end117
  %90 = load ptr, ptr %db.addr, align 8
  %91 = load ptr, ptr %db.addr, align 8
  %aDb127 = getelementptr inbounds nuw %struct.sqlite3, ptr %91, i32 0, i32 4
  %92 = load ptr, ptr %aDb127, align 8
  %93 = load i32, ptr %iDb.addr, align 4
  %idxprom128 = sext i32 %93 to i64
  %arrayidx129 = getelementptr inbounds %struct.Db, ptr %92, i64 %idxprom128
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx129, i32 0, i32 0
  %94 = load ptr, ptr %zDbSName, align 8
  %95 = load ptr, ptr %zMasterName, align 8
  %call130 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %90, ptr noundef @.str.336, ptr noundef %94, ptr noundef %95)
  store ptr %call130, ptr %zSql, align 8
  %96 = load ptr, ptr %db.addr, align 8
  %xAuth131 = getelementptr inbounds nuw %struct.sqlite3, ptr %96, i32 0, i32 62
  %97 = load ptr, ptr %xAuth131, align 8
  store ptr %97, ptr %xAuth, align 8
  %98 = load ptr, ptr %db.addr, align 8
  %xAuth132 = getelementptr inbounds nuw %struct.sqlite3, ptr %98, i32 0, i32 62
  store ptr null, ptr %xAuth132, align 8
  %99 = load ptr, ptr %db.addr, align 8
  %100 = load ptr, ptr %zSql, align 8
  %call133 = call i32 @sqlite3_exec(ptr noundef %99, ptr noundef %100, ptr noundef @sqlite3InitCallback, ptr noundef %initData, ptr noundef null)
  store i32 %call133, ptr %rc, align 4
  %101 = load ptr, ptr %xAuth, align 8
  %102 = load ptr, ptr %db.addr, align 8
  %xAuth134 = getelementptr inbounds nuw %struct.sqlite3, ptr %102, i32 0, i32 62
  store ptr %101, ptr %xAuth134, align 8
  %103 = load i32, ptr %rc, align 4
  %cmp135 = icmp eq i32 %103, 0
  br i1 %cmp135, label %if.then137, label %if.end139

if.then137:                                       ; preds = %if.end126
  %rc138 = getelementptr inbounds nuw %struct.InitData, ptr %initData, i32 0, i32 3
  %104 = load i32, ptr %rc138, align 4
  store i32 %104, ptr %rc, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end126
  %105 = load ptr, ptr %db.addr, align 8
  %106 = load ptr, ptr %zSql, align 8
  call void @sqlite3DbFree(ptr noundef %105, ptr noundef %106)
  %107 = load i32, ptr %rc, align 4
  %cmp140 = icmp eq i32 %107, 0
  br i1 %cmp140, label %if.then142, label %if.end144

if.then142:                                       ; preds = %if.end139
  %108 = load ptr, ptr %db.addr, align 8
  %109 = load i32, ptr %iDb.addr, align 4
  %call143 = call i32 @sqlite3AnalysisLoad(ptr noundef %108, i32 noundef %109)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %if.end139
  %110 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %110, i32 0, i32 19
  %111 = load i8, ptr %mallocFailed, align 1
  %tobool145 = icmp ne i8 %111, 0
  br i1 %tobool145, label %if.then146, label %if.end147

if.then146:                                       ; preds = %if.end144
  store i32 7, ptr %rc, align 4
  %112 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %112)
  br label %if.end147

if.end147:                                        ; preds = %if.then146, %if.end144
  %113 = load i32, ptr %rc, align 4
  %cmp148 = icmp eq i32 %113, 0
  br i1 %cmp148, label %if.then153, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end147
  %114 = load ptr, ptr %db.addr, align 8
  %flags150 = getelementptr inbounds nuw %struct.sqlite3, ptr %114, i32 0, i32 7
  %115 = load i64, ptr %flags150, align 8
  %and151 = and i64 %115, 134217728
  %tobool152 = icmp ne i64 %and151, 0
  br i1 %tobool152, label %if.then153, label %if.end162

if.then153:                                       ; preds = %lor.lhs.false, %if.end147
  %116 = load ptr, ptr %db.addr, align 8
  %aDb154 = getelementptr inbounds nuw %struct.sqlite3, ptr %116, i32 0, i32 4
  %117 = load ptr, ptr %aDb154, align 8
  %118 = load i32, ptr %iDb.addr, align 4
  %idxprom155 = sext i32 %118 to i64
  %arrayidx156 = getelementptr inbounds %struct.Db, ptr %117, i64 %idxprom155
  %pSchema157 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx156, i32 0, i32 4
  %119 = load ptr, ptr %pSchema157, align 8
  %schemaFlags158 = getelementptr inbounds nuw %struct.Schema, ptr %119, i32 0, i32 9
  %120 = load i16, ptr %schemaFlags158, align 2
  %conv159 = zext i16 %120 to i32
  %or160 = or i32 %conv159, 1
  %conv161 = trunc i32 %or160 to i16
  store i16 %conv161, ptr %schemaFlags158, align 2
  store i32 0, ptr %rc, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.then153, %lor.lhs.false
  br label %initone_error_out

initone_error_out:                                ; preds = %if.end162, %if.then116, %if.then66, %if.then29
  %121 = load i32, ptr %openedTransaction, align 4
  %tobool163 = icmp ne i32 %121, 0
  br i1 %tobool163, label %if.then164, label %if.end167

if.then164:                                       ; preds = %initone_error_out
  %122 = load ptr, ptr %pDb, align 8
  %pBt165 = getelementptr inbounds nuw %struct.Db, ptr %122, i32 0, i32 1
  %123 = load ptr, ptr %pBt165, align 8
  %call166 = call i32 @sqlite3BtreeCommit(ptr noundef %123)
  br label %if.end167

if.end167:                                        ; preds = %if.then164, %initone_error_out
  %124 = load ptr, ptr %pDb, align 8
  %pBt168 = getelementptr inbounds nuw %struct.Db, ptr %124, i32 0, i32 1
  %125 = load ptr, ptr %pBt168, align 8
  call void @sqlite3BtreeLeave(ptr noundef %125)
  br label %error_out

error_out:                                        ; preds = %if.end167, %if.then15, %if.then
  %126 = load i32, ptr %rc, align 4
  %tobool169 = icmp ne i32 %126, 0
  br i1 %tobool169, label %if.then170, label %if.end178

if.then170:                                       ; preds = %error_out
  %127 = load i32, ptr %rc, align 4
  %cmp171 = icmp eq i32 %127, 7
  br i1 %cmp171, label %if.then176, label %lor.lhs.false173

lor.lhs.false173:                                 ; preds = %if.then170
  %128 = load i32, ptr %rc, align 4
  %cmp174 = icmp eq i32 %128, 3082
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %lor.lhs.false173, %if.then170
  %129 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %129)
  br label %if.end177

if.end177:                                        ; preds = %if.then176, %lor.lhs.false173
  %130 = load ptr, ptr %db.addr, align 8
  %131 = load i32, ptr %iDb.addr, align 4
  call void @sqlite3ResetOneSchema(ptr noundef %130, i32 noundef %131)
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %error_out
  %132 = load ptr, ptr %db.addr, align 8
  %init179 = getelementptr inbounds nuw %struct.sqlite3, ptr %132, i32 0, i32 35
  %busy180 = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init179, i32 0, i32 2
  store i8 0, ptr %busy180, align 1
  %133 = load i32, ptr %rc, align 4
  ret i32 %133
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3InitCallback(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AnalysisLoad(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SetString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetCacheSize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommit(ptr noundef) #0

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
