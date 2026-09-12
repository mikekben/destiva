; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@sqlite3StrBINARY = external hidden constant [7 x i8], align 1
@.str.23 = external hidden unnamed_addr constant [5 x i8], align 1
@aHardLimit = external hidden constant [12 x i32], align 16
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@.str.746 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.1071 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.1073 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_initialize() #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @setupLookaside(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_close(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_wal_autocheckpoint(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_errcode(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @openDatabase(ptr noundef %zFilename, ptr noundef %ppDb, i32 noundef %flags, ptr noundef %zVfs) #0 {
entry:
  %retval = alloca i32, align 4
  %zFilename.addr = alloca ptr, align 8
  %ppDb.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %zVfs.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %isThreadsafe = alloca i32, align 4
  %zOpen = alloca ptr, align 8
  %zErrMsg = alloca ptr, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %ppDb, ptr %ppDb.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %zVfs, ptr %zVfs.addr, align 8
  store ptr null, ptr %zOpen, align 8
  store ptr null, ptr %zErrMsg, align 8
  %0 = load ptr, ptr %ppDb.addr, align 8
  store ptr null, ptr %0, align 8
  %call = call i32 @sqlite3_initialize()
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %conv = zext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  store i32 0, ptr %isThreadsafe, align 4
  br label %if.end13

if.else:                                          ; preds = %if.end
  %4 = load i32, ptr %flags.addr, align 4
  %and = and i32 %4, 32768
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 0, ptr %isThreadsafe, align 4
  br label %if.end12

if.else5:                                         ; preds = %if.else
  %5 = load i32, ptr %flags.addr, align 4
  %and6 = and i32 %5, 65536
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else9

if.then8:                                         ; preds = %if.else5
  store i32 1, ptr %isThreadsafe, align 4
  br label %if.end11

if.else9:                                         ; preds = %if.else5
  %6 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 2), align 1
  %conv10 = zext i8 %6 to i32
  store i32 %conv10, ptr %isThreadsafe, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then2
  %7 = load i32, ptr %flags.addr, align 4
  %and14 = and i32 %7, 262144
  %tobool15 = icmp ne i32 %and14, 0
  br i1 %tobool15, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.end13
  %8 = load i32, ptr %flags.addr, align 4
  %and17 = and i32 %8, -131073
  store i32 %and17, ptr %flags.addr, align 4
  br label %if.end22

if.else18:                                        ; preds = %if.end13
  %9 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 25), align 4
  %tobool19 = icmp ne i32 %9, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.else18
  %10 = load i32, ptr %flags.addr, align 4
  %or = or i32 %10, 131072
  store i32 %or, ptr %flags.addr, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.else18
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then16
  %11 = load i32, ptr %flags.addr, align 4
  %and23 = and i32 %11, -655129
  store i32 %and23, ptr %flags.addr, align 4
  %call24 = call ptr @sqlite3MallocZero(i64 noundef 696)
  store ptr %call24, ptr %db, align 8
  %12 = load ptr, ptr %db, align 8
  %cmp25 = icmp eq ptr %12, null
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end22
  br label %opendb_out

if.end28:                                         ; preds = %if.end22
  %13 = load i32, ptr %isThreadsafe, align 4
  %tobool29 = icmp ne i32 %13, 0
  br i1 %tobool29, label %if.then30, label %if.end41

if.then30:                                        ; preds = %if.end28
  %call31 = call ptr @sqlite3MutexAlloc(i32 noundef 1)
  %14 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 3
  store ptr %call31, ptr %mutex, align 8
  %15 = load ptr, ptr %db, align 8
  %mutex32 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %mutex32, align 8
  %cmp33 = icmp eq ptr %16, null
  br i1 %cmp33, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.then30
  %17 = load ptr, ptr %db, align 8
  call void @sqlite3_free(ptr noundef %17)
  store ptr null, ptr %db, align 8
  br label %opendb_out

if.end36:                                         ; preds = %if.then30
  %18 = load i32, ptr %isThreadsafe, align 4
  %cmp37 = icmp eq i32 %18, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end36
  br label %if.end40

if.end40:                                         ; preds = %if.then39, %if.end36
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end28
  %19 = load ptr, ptr %db, align 8
  %mutex42 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %mutex42, align 8
  call void @sqlite3_mutex_enter(ptr noundef %20)
  %21 = load ptr, ptr %db, align 8
  %errMask = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 13
  store i32 255, ptr %errMask, align 4
  %22 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 5
  store i32 2, ptr %nDb, align 8
  %23 = load ptr, ptr %db, align 8
  %magic = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 30
  store i32 -264537850, ptr %magic, align 8
  %24 = load ptr, ptr %db, align 8
  %aDbStatic = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 75
  %arraydecay = getelementptr inbounds [2 x %struct.Db], ptr %aDbStatic, i64 0, i64 0
  %25 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 4
  store ptr %arraydecay, ptr %aDb, align 8
  %26 = load ptr, ptr %db, align 8
  %lookaside = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 61
  %bDisable = getelementptr inbounds nuw %struct.Lookaside, ptr %lookaside, i32 0, i32 0
  store i32 1, ptr %bDisable, align 8
  %27 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 33
  %arraydecay43 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %arraydecay43, ptr align 16 @aHardLimit, i64 48, i1 false)
  %28 = load ptr, ptr %db, align 8
  %aLimit44 = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 33
  %arrayidx = getelementptr inbounds [12 x i32], ptr %aLimit44, i64 0, i64 11
  store i32 0, ptr %arrayidx, align 4
  %29 = load ptr, ptr %db, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 17
  store i8 1, ptr %autoCommit, align 1
  %30 = load ptr, ptr %db, align 8
  %nextAutovac = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 22
  store i8 -1, ptr %nextAutovac, align 4
  %31 = load i64, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 19), align 8
  %32 = load ptr, ptr %db, align 8
  %szMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %32, i32 0, i32 9
  store i64 %31, ptr %szMmap, align 8
  %33 = load ptr, ptr %db, align 8
  %nextPagesize = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 29
  store i32 0, ptr %nextPagesize, align 4
  %34 = load ptr, ptr %db, align 8
  %nMaxSorterMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %34, i32 0, i32 34
  store i32 2147483647, ptr %nMaxSorterMmap, align 4
  %35 = load ptr, ptr %db, align 8
  %flags45 = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 7
  %36 = load i64, ptr %flags45, align 8
  %or46 = or i64 %36, 3758391392
  store i64 %or46, ptr %flags45, align 8
  %37 = load ptr, ptr %db, align 8
  %aCollSeq = getelementptr inbounds nuw %struct.sqlite3, ptr %37, i32 0, i32 73
  call void @sqlite3HashInit(ptr noundef %aCollSeq)
  %38 = load ptr, ptr %db, align 8
  %aModule = getelementptr inbounds nuw %struct.sqlite3, ptr %38, i32 0, i32 68
  call void @sqlite3HashInit(ptr noundef %aModule)
  %39 = load ptr, ptr %db, align 8
  %call47 = call i32 @createCollation(ptr noundef %39, ptr noundef @sqlite3StrBINARY, i8 noundef zeroext 1, ptr noundef null, ptr noundef @binCollFunc, ptr noundef null)
  %40 = load ptr, ptr %db, align 8
  %call48 = call i32 @createCollation(ptr noundef %40, ptr noundef @sqlite3StrBINARY, i8 noundef zeroext 3, ptr noundef null, ptr noundef @binCollFunc, ptr noundef null)
  %41 = load ptr, ptr %db, align 8
  %call49 = call i32 @createCollation(ptr noundef %41, ptr noundef @sqlite3StrBINARY, i8 noundef zeroext 2, ptr noundef null, ptr noundef @binCollFunc, ptr noundef null)
  %42 = load ptr, ptr %db, align 8
  %call50 = call i32 @createCollation(ptr noundef %42, ptr noundef @.str.746, i8 noundef zeroext 1, ptr noundef null, ptr noundef @nocaseCollatingFunc, ptr noundef null)
  %43 = load ptr, ptr %db, align 8
  %call51 = call i32 @createCollation(ptr noundef %43, ptr noundef @.str.1073, i8 noundef zeroext 1, ptr noundef null, ptr noundef @rtrimCollFunc, ptr noundef null)
  %44 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 19
  %45 = load i8, ptr %mallocFailed, align 1
  %tobool52 = icmp ne i8 %45, 0
  br i1 %tobool52, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.end41
  br label %opendb_out

if.end54:                                         ; preds = %if.end41
  %46 = load ptr, ptr %db, align 8
  %call55 = call ptr @sqlite3FindCollSeq(ptr noundef %46, i8 noundef zeroext 1, ptr noundef @sqlite3StrBINARY, i32 noundef 0)
  %47 = load ptr, ptr %db, align 8
  %pDfltColl = getelementptr inbounds nuw %struct.sqlite3, ptr %47, i32 0, i32 2
  store ptr %call55, ptr %pDfltColl, align 8
  %48 = load i32, ptr %flags.addr, align 4
  %49 = load ptr, ptr %db, align 8
  %openFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %49, i32 0, i32 11
  store i32 %48, ptr %openFlags, align 4
  %50 = load i32, ptr %flags.addr, align 4
  %and56 = and i32 %50, 7
  %shl = shl i32 1, %and56
  %and57 = and i32 %shl, 70
  %cmp58 = icmp eq i32 %and57, 0
  br i1 %cmp58, label %if.then60, label %if.else62

if.then60:                                        ; preds = %if.end54
  %call61 = call i32 @sqlite3MisuseError(i32 noundef 159424)
  store i32 %call61, ptr %rc, align 4
  br label %if.end64

if.else62:                                        ; preds = %if.end54
  %51 = load ptr, ptr %zVfs.addr, align 8
  %52 = load ptr, ptr %zFilename.addr, align 8
  %53 = load ptr, ptr %db, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %53, i32 0, i32 0
  %call63 = call i32 @sqlite3ParseUri(ptr noundef %51, ptr noundef %52, ptr noundef %flags.addr, ptr noundef %pVfs, ptr noundef %zOpen, ptr noundef %zErrMsg)
  store i32 %call63, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then60
  %54 = load i32, ptr %rc, align 4
  %cmp65 = icmp ne i32 %54, 0
  br i1 %cmp65, label %if.then67, label %if.end73

if.then67:                                        ; preds = %if.end64
  %55 = load i32, ptr %rc, align 4
  %cmp68 = icmp eq i32 %55, 7
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %if.then67
  %56 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %56)
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %if.then67
  %57 = load ptr, ptr %db, align 8
  %58 = load i32, ptr %rc, align 4
  %59 = load ptr, ptr %zErrMsg, align 8
  %tobool72 = icmp ne ptr %59, null
  %60 = zext i1 %tobool72 to i64
  %cond = select i1 %tobool72, ptr @.str.20, ptr null
  %61 = load ptr, ptr %zErrMsg, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %57, i32 noundef %58, ptr noundef %cond, ptr noundef %61)
  %62 = load ptr, ptr %zErrMsg, align 8
  call void @sqlite3_free(ptr noundef %62)
  br label %opendb_out

if.end73:                                         ; preds = %if.end64
  %63 = load ptr, ptr %db, align 8
  %pVfs74 = getelementptr inbounds nuw %struct.sqlite3, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %pVfs74, align 8
  %65 = load ptr, ptr %zOpen, align 8
  %66 = load ptr, ptr %db, align 8
  %67 = load ptr, ptr %db, align 8
  %aDb75 = getelementptr inbounds nuw %struct.sqlite3, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %aDb75, align 8
  %arrayidx76 = getelementptr inbounds %struct.Db, ptr %68, i64 0
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx76, i32 0, i32 1
  %69 = load i32, ptr %flags.addr, align 4
  %or77 = or i32 %69, 256
  %call78 = call i32 @sqlite3BtreeOpen(ptr noundef %64, ptr noundef %65, ptr noundef %66, ptr noundef %pBt, i32 noundef 0, i32 noundef %or77)
  store i32 %call78, ptr %rc, align 4
  %70 = load i32, ptr %rc, align 4
  %cmp79 = icmp ne i32 %70, 0
  br i1 %cmp79, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.end73
  %71 = load i32, ptr %rc, align 4
  %cmp82 = icmp eq i32 %71, 3082
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then81
  store i32 7, ptr %rc, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then84, %if.then81
  %72 = load ptr, ptr %db, align 8
  %73 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %72, i32 noundef %73)
  br label %opendb_out

if.end86:                                         ; preds = %if.end73
  %74 = load ptr, ptr %db, align 8
  %aDb87 = getelementptr inbounds nuw %struct.sqlite3, ptr %74, i32 0, i32 4
  %75 = load ptr, ptr %aDb87, align 8
  %arrayidx88 = getelementptr inbounds %struct.Db, ptr %75, i64 0
  %pBt89 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx88, i32 0, i32 1
  %76 = load ptr, ptr %pBt89, align 8
  call void @sqlite3BtreeEnter(ptr noundef %76)
  %77 = load ptr, ptr %db, align 8
  %78 = load ptr, ptr %db, align 8
  %aDb90 = getelementptr inbounds nuw %struct.sqlite3, ptr %78, i32 0, i32 4
  %79 = load ptr, ptr %aDb90, align 8
  %arrayidx91 = getelementptr inbounds %struct.Db, ptr %79, i64 0
  %pBt92 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx91, i32 0, i32 1
  %80 = load ptr, ptr %pBt92, align 8
  %call93 = call ptr @sqlite3SchemaGet(ptr noundef %77, ptr noundef %80)
  %81 = load ptr, ptr %db, align 8
  %aDb94 = getelementptr inbounds nuw %struct.sqlite3, ptr %81, i32 0, i32 4
  %82 = load ptr, ptr %aDb94, align 8
  %arrayidx95 = getelementptr inbounds %struct.Db, ptr %82, i64 0
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx95, i32 0, i32 4
  store ptr %call93, ptr %pSchema, align 8
  %83 = load ptr, ptr %db, align 8
  %mallocFailed96 = getelementptr inbounds nuw %struct.sqlite3, ptr %83, i32 0, i32 19
  %84 = load i8, ptr %mallocFailed96, align 1
  %tobool97 = icmp ne i8 %84, 0
  br i1 %tobool97, label %if.end103, label %if.then98

if.then98:                                        ; preds = %if.end86
  %85 = load ptr, ptr %db, align 8
  %aDb99 = getelementptr inbounds nuw %struct.sqlite3, ptr %85, i32 0, i32 4
  %86 = load ptr, ptr %aDb99, align 8
  %arrayidx100 = getelementptr inbounds %struct.Db, ptr %86, i64 0
  %pSchema101 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx100, i32 0, i32 4
  %87 = load ptr, ptr %pSchema101, align 8
  %enc = getelementptr inbounds nuw %struct.Schema, ptr %87, i32 0, i32 8
  %88 = load i8, ptr %enc, align 1
  %89 = load ptr, ptr %db, align 8
  %enc102 = getelementptr inbounds nuw %struct.sqlite3, ptr %89, i32 0, i32 16
  store i8 %88, ptr %enc102, align 2
  br label %if.end103

if.end103:                                        ; preds = %if.then98, %if.end86
  %90 = load ptr, ptr %db, align 8
  %aDb104 = getelementptr inbounds nuw %struct.sqlite3, ptr %90, i32 0, i32 4
  %91 = load ptr, ptr %aDb104, align 8
  %arrayidx105 = getelementptr inbounds %struct.Db, ptr %91, i64 0
  %pBt106 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx105, i32 0, i32 1
  %92 = load ptr, ptr %pBt106, align 8
  call void @sqlite3BtreeLeave(ptr noundef %92)
  %93 = load ptr, ptr %db, align 8
  %call107 = call ptr @sqlite3SchemaGet(ptr noundef %93, ptr noundef null)
  %94 = load ptr, ptr %db, align 8
  %aDb108 = getelementptr inbounds nuw %struct.sqlite3, ptr %94, i32 0, i32 4
  %95 = load ptr, ptr %aDb108, align 8
  %arrayidx109 = getelementptr inbounds %struct.Db, ptr %95, i64 1
  %pSchema110 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx109, i32 0, i32 4
  store ptr %call107, ptr %pSchema110, align 8
  %96 = load ptr, ptr %db, align 8
  %aDb111 = getelementptr inbounds nuw %struct.sqlite3, ptr %96, i32 0, i32 4
  %97 = load ptr, ptr %aDb111, align 8
  %arrayidx112 = getelementptr inbounds %struct.Db, ptr %97, i64 0
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx112, i32 0, i32 0
  store ptr @.str.1071, ptr %zDbSName, align 8
  %98 = load ptr, ptr %db, align 8
  %aDb113 = getelementptr inbounds nuw %struct.sqlite3, ptr %98, i32 0, i32 4
  %99 = load ptr, ptr %aDb113, align 8
  %arrayidx114 = getelementptr inbounds %struct.Db, ptr %99, i64 0
  %safety_level = getelementptr inbounds nuw %struct.Db, ptr %arrayidx114, i32 0, i32 2
  store i8 3, ptr %safety_level, align 8
  %100 = load ptr, ptr %db, align 8
  %aDb115 = getelementptr inbounds nuw %struct.sqlite3, ptr %100, i32 0, i32 4
  %101 = load ptr, ptr %aDb115, align 8
  %arrayidx116 = getelementptr inbounds %struct.Db, ptr %101, i64 1
  %zDbSName117 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx116, i32 0, i32 0
  store ptr @.str.23, ptr %zDbSName117, align 8
  %102 = load ptr, ptr %db, align 8
  %aDb118 = getelementptr inbounds nuw %struct.sqlite3, ptr %102, i32 0, i32 4
  %103 = load ptr, ptr %aDb118, align 8
  %arrayidx119 = getelementptr inbounds %struct.Db, ptr %103, i64 1
  %safety_level120 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx119, i32 0, i32 2
  store i8 1, ptr %safety_level120, align 8
  %104 = load ptr, ptr %db, align 8
  %magic121 = getelementptr inbounds nuw %struct.sqlite3, ptr %104, i32 0, i32 30
  store i32 -1607883113, ptr %magic121, align 8
  %105 = load ptr, ptr %db, align 8
  %mallocFailed122 = getelementptr inbounds nuw %struct.sqlite3, ptr %105, i32 0, i32 19
  %106 = load i8, ptr %mallocFailed122, align 1
  %tobool123 = icmp ne i8 %106, 0
  br i1 %tobool123, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.end103
  br label %opendb_out

if.end125:                                        ; preds = %if.end103
  %107 = load ptr, ptr %db, align 8
  call void @sqlite3Error(ptr noundef %107, i32 noundef 0)
  %108 = load ptr, ptr %db, align 8
  call void @sqlite3RegisterPerConnectionBuiltinFunctions(ptr noundef %108)
  %109 = load ptr, ptr %db, align 8
  %call126 = call i32 @sqlite3_errcode(ptr noundef %109)
  store i32 %call126, ptr %rc, align 4
  %110 = load i32, ptr %rc, align 4
  %cmp127 = icmp eq i32 %110, 0
  br i1 %cmp127, label %if.then129, label %if.end135

if.then129:                                       ; preds = %if.end125
  %111 = load ptr, ptr %db, align 8
  call void @sqlite3AutoLoadExtensions(ptr noundef %111)
  %112 = load ptr, ptr %db, align 8
  %call130 = call i32 @sqlite3_errcode(ptr noundef %112)
  store i32 %call130, ptr %rc, align 4
  %113 = load i32, ptr %rc, align 4
  %cmp131 = icmp ne i32 %113, 0
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then129
  br label %opendb_out

if.end134:                                        ; preds = %if.then129
  br label %if.end135

if.end135:                                        ; preds = %if.end134, %if.end125
  %114 = load i32, ptr %rc, align 4
  %tobool136 = icmp ne i32 %114, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.end135
  %115 = load ptr, ptr %db, align 8
  %116 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %115, i32 noundef %116)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %if.end135
  %117 = load ptr, ptr %db, align 8
  %118 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 9), align 4
  %119 = load i32, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 10), align 8
  %call139 = call i32 @setupLookaside(ptr noundef %117, ptr noundef null, i32 noundef %118, i32 noundef %119)
  %120 = load ptr, ptr %db, align 8
  %call140 = call i32 @sqlite3_wal_autocheckpoint(ptr noundef %120, i32 noundef 1000)
  br label %opendb_out

opendb_out:                                       ; preds = %if.end138, %if.then133, %if.then124, %if.end85, %if.end71, %if.then53, %if.then35, %if.then27
  %121 = load ptr, ptr %db, align 8
  %tobool141 = icmp ne ptr %121, null
  br i1 %tobool141, label %if.then142, label %if.end144

if.then142:                                       ; preds = %opendb_out
  %122 = load ptr, ptr %db, align 8
  %mutex143 = getelementptr inbounds nuw %struct.sqlite3, ptr %122, i32 0, i32 3
  %123 = load ptr, ptr %mutex143, align 8
  call void @sqlite3_mutex_leave(ptr noundef %123)
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %opendb_out
  %124 = load ptr, ptr %db, align 8
  %call145 = call i32 @sqlite3_errcode(ptr noundef %124)
  store i32 %call145, ptr %rc, align 4
  %125 = load i32, ptr %rc, align 4
  %cmp146 = icmp eq i32 %125, 7
  br i1 %cmp146, label %if.then148, label %if.else150

if.then148:                                       ; preds = %if.end144
  %126 = load ptr, ptr %db, align 8
  %call149 = call i32 @sqlite3_close(ptr noundef %126)
  store ptr null, ptr %db, align 8
  br label %if.end156

if.else150:                                       ; preds = %if.end144
  %127 = load i32, ptr %rc, align 4
  %cmp151 = icmp ne i32 %127, 0
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.else150
  %128 = load ptr, ptr %db, align 8
  %magic154 = getelementptr inbounds nuw %struct.sqlite3, ptr %128, i32 0, i32 30
  store i32 1266094736, ptr %magic154, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.else150
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then148
  %129 = load ptr, ptr %db, align 8
  %130 = load ptr, ptr %ppDb.addr, align 8
  store ptr %129, ptr %130, align 8
  %131 = load ptr, ptr %zOpen, align 8
  call void @sqlite3_free(ptr noundef %131)
  %132 = load i32, ptr %rc, align 4
  %and157 = and i32 %132, 255
  store i32 %and157, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end156, %if.then
  %133 = load i32, ptr %retval, align 4
  ret i32 %133
}

; Function Attrs: nounwind uwtable
declare hidden i32 @createCollation(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3HashInit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindCollSeq(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @binCollFunc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ParseUri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SchemaGet(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @nocaseCollatingFunc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @rtrimCollFunc(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3RegisterPerConnectionBuiltinFunctions(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3AutoLoadExtensions(ptr noundef) #0

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
