; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@.str.93 = external hidden unnamed_addr constant [9 x i8], align 1
@sqlite3SharedCacheList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MutexAlloc(i32 noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerVfs(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeOpen(ptr noundef %pVfs, ptr noundef %zFilename, ptr noundef %db, ptr noundef %ppBtree, i32 noundef %flags, i32 noundef %vfsFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %zFilename.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %ppBtree.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %vfsFlags.addr = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mutexOpen = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nReserve = alloca i8, align 1
  %zDbHeader = alloca [100 x i8], align 16
  %isTempDb = alloca i32, align 4
  %isMemdb = alloca i32, align 4
  %nFilename = alloca i32, align 4
  %nFullPathname = alloca i32, align 4
  %zFullPathname = alloca ptr, align 8
  %mutexShared = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %pExisting = alloca ptr, align 8
  %mutexShared187 = alloca ptr, align 8
  %i = alloca i32, align 4
  %pSib = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %ppBtree, ptr %ppBtree.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %vfsFlags, ptr %vfsFlags.addr, align 4
  store ptr null, ptr %pBt, align 8
  store ptr null, ptr %mutexOpen, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %zFilename.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %zFilename.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  store i32 %lor.ext, ptr %isTempDb, align 4
  %4 = load ptr, ptr %zFilename.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %lor.end
  %5 = load ptr, ptr %zFilename.addr, align 8
  %call = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.93) #3
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %lor.end12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %lor.end
  %6 = load i32, ptr %isTempDb, align 4
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %land.lhs.true6, label %lor.rhs9

land.lhs.true6:                                   ; preds = %lor.lhs.false
  %7 = load ptr, ptr %db.addr, align 8
  %call7 = call i32 @sqlite3TempInMemory(ptr noundef %7)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %lor.end12, label %lor.rhs9

lor.rhs9:                                         ; preds = %land.lhs.true6, %lor.lhs.false
  %8 = load i32, ptr %vfsFlags.addr, align 4
  %and = and i32 %8, 128
  %cmp10 = icmp ne i32 %and, 0
  br label %lor.end12

lor.end12:                                        ; preds = %lor.rhs9, %land.lhs.true6, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true6 ], [ true, %land.lhs.true ], [ %cmp10, %lor.rhs9 ]
  %lor.ext13 = zext i1 %9 to i32
  store i32 %lor.ext13, ptr %isMemdb, align 4
  %10 = load i32, ptr %isMemdb, align 4
  %tobool14 = icmp ne i32 %10, 0
  br i1 %tobool14, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end12
  %11 = load i32, ptr %flags.addr, align 4
  %or = or i32 %11, 2
  store i32 %or, ptr %flags.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end12
  %12 = load i32, ptr %vfsFlags.addr, align 4
  %and15 = and i32 %12, 256
  %cmp16 = icmp ne i32 %and15, 0
  br i1 %cmp16, label %land.lhs.true18, label %if.end25

land.lhs.true18:                                  ; preds = %if.end
  %13 = load i32, ptr %isMemdb, align 4
  %tobool19 = icmp ne i32 %13, 0
  br i1 %tobool19, label %if.then22, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %land.lhs.true18
  %14 = load i32, ptr %isTempDb, align 4
  %tobool21 = icmp ne i32 %14, 0
  br i1 %tobool21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %lor.lhs.false20, %land.lhs.true18
  %15 = load i32, ptr %vfsFlags.addr, align 4
  %and23 = and i32 %15, -257
  %or24 = or i32 %and23, 512
  store i32 %or24, ptr %vfsFlags.addr, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false20, %if.end
  %call26 = call ptr @sqlite3MallocZero(i64 noundef 72)
  store ptr %call26, ptr %p, align 8
  %16 = load ptr, ptr %p, align 8
  %tobool27 = icmp ne ptr %16, null
  br i1 %tobool27, label %if.end29, label %if.then28

if.then28:                                        ; preds = %if.end25
  store i32 7, ptr %retval, align 4
  br label %return

if.end29:                                         ; preds = %if.end25
  %17 = load ptr, ptr %p, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %17, i32 0, i32 2
  store i8 0, ptr %inTrans, align 8
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %p, align 8
  %db30 = getelementptr inbounds nuw %struct.Btree, ptr %19, i32 0, i32 0
  store ptr %18, ptr %db30, align 8
  %20 = load ptr, ptr %p, align 8
  %21 = load ptr, ptr %p, align 8
  %lock = getelementptr inbounds nuw %struct.Btree, ptr %21, i32 0, i32 11
  %pBtree = getelementptr inbounds nuw %struct.BtLock, ptr %lock, i32 0, i32 0
  store ptr %20, ptr %pBtree, align 8
  %22 = load ptr, ptr %p, align 8
  %lock31 = getelementptr inbounds nuw %struct.Btree, ptr %22, i32 0, i32 11
  %iTable = getelementptr inbounds nuw %struct.BtLock, ptr %lock31, i32 0, i32 1
  store i32 1, ptr %iTable, align 8
  %23 = load i32, ptr %isTempDb, align 4
  %cmp32 = icmp eq i32 %23, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.end93

land.lhs.true34:                                  ; preds = %if.end29
  %24 = load i32, ptr %isMemdb, align 4
  %cmp35 = icmp eq i32 %24, 0
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %land.lhs.true34
  %25 = load i32, ptr %vfsFlags.addr, align 4
  %and38 = and i32 %25, 64
  %cmp39 = icmp ne i32 %and38, 0
  br i1 %cmp39, label %if.then41, label %if.end93

if.then41:                                        ; preds = %lor.lhs.false37, %land.lhs.true34
  %26 = load i32, ptr %vfsFlags.addr, align 4
  %and42 = and i32 %26, 131072
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %if.then44, label %if.end92

if.then44:                                        ; preds = %if.then41
  %27 = load ptr, ptr %zFilename.addr, align 8
  %call45 = call i32 @sqlite3Strlen30(ptr noundef %27)
  %add = add nsw i32 %call45, 1
  store i32 %add, ptr %nFilename, align 4
  %28 = load ptr, ptr %pVfs.addr, align 8
  %mxPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %mxPathname, align 8
  %add46 = add nsw i32 %29, 1
  store i32 %add46, ptr %nFullPathname, align 4
  %30 = load i32, ptr %nFullPathname, align 4
  %31 = load i32, ptr %nFilename, align 4
  %cmp47 = icmp sgt i32 %30, %31
  br i1 %cmp47, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then44
  %32 = load i32, ptr %nFullPathname, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then44
  %33 = load i32, ptr %nFilename, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ %33, %cond.false ]
  %conv49 = sext i32 %cond to i64
  %call50 = call ptr @sqlite3Malloc(i64 noundef %conv49)
  store ptr %call50, ptr %zFullPathname, align 8
  %34 = load ptr, ptr %p, align 8
  %sharable = getelementptr inbounds nuw %struct.Btree, ptr %34, i32 0, i32 3
  store i8 1, ptr %sharable, align 1
  %35 = load ptr, ptr %zFullPathname, align 8
  %tobool51 = icmp ne ptr %35, null
  br i1 %tobool51, label %if.end53, label %if.then52

if.then52:                                        ; preds = %cond.end
  %36 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %36)
  store i32 7, ptr %retval, align 4
  br label %return

if.end53:                                         ; preds = %cond.end
  %37 = load i32, ptr %isMemdb, align 4
  %tobool54 = icmp ne i32 %37, 0
  br i1 %tobool54, label %if.then55, label %if.else

if.then55:                                        ; preds = %if.end53
  %38 = load ptr, ptr %zFullPathname, align 8
  %39 = load ptr, ptr %zFilename.addr, align 8
  %40 = load i32, ptr %nFilename, align 4
  %conv56 = sext i32 %40 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %39, i64 %conv56, i1 false)
  br label %if.end61

if.else:                                          ; preds = %if.end53
  %41 = load ptr, ptr %pVfs.addr, align 8
  %42 = load ptr, ptr %zFilename.addr, align 8
  %43 = load i32, ptr %nFullPathname, align 4
  %44 = load ptr, ptr %zFullPathname, align 8
  %call57 = call i32 @sqlite3OsFullPathname(ptr noundef %41, ptr noundef %42, i32 noundef %43, ptr noundef %44)
  store i32 %call57, ptr %rc, align 4
  %45 = load i32, ptr %rc, align 4
  %tobool58 = icmp ne i32 %45, 0
  br i1 %tobool58, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.else
  %46 = load ptr, ptr %zFullPathname, align 8
  call void @sqlite3_free(ptr noundef %46)
  %47 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %47)
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.else
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then55
  %call62 = call ptr @sqlite3MutexAlloc(i32 noundef 4)
  store ptr %call62, ptr %mutexOpen, align 8
  %49 = load ptr, ptr %mutexOpen, align 8
  call void @sqlite3_mutex_enter(ptr noundef %49)
  %call63 = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call63, ptr %mutexShared, align 8
  %50 = load ptr, ptr %mutexShared, align 8
  call void @sqlite3_mutex_enter(ptr noundef %50)
  %51 = load ptr, ptr @sqlite3SharedCacheList, align 8
  store ptr %51, ptr %pBt, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc90, %if.end61
  %52 = load ptr, ptr %pBt, align 8
  %tobool64 = icmp ne ptr %52, null
  br i1 %tobool64, label %for.body, label %for.end91

for.body:                                         ; preds = %for.cond
  %53 = load ptr, ptr %zFullPathname, align 8
  %54 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %pPager, align 8
  %call65 = call ptr @sqlite3PagerFilename(ptr noundef %55, i32 noundef 0)
  %call66 = call i32 @strcmp(ptr noundef %53, ptr noundef %call65) #3
  %cmp67 = icmp eq i32 0, %call66
  br i1 %cmp67, label %land.lhs.true69, label %if.end89

land.lhs.true69:                                  ; preds = %for.body
  %56 = load ptr, ptr %pBt, align 8
  %pPager70 = getelementptr inbounds nuw %struct.BtShared, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %pPager70, align 8
  %call71 = call ptr @sqlite3PagerVfs(ptr noundef %57)
  %58 = load ptr, ptr %pVfs.addr, align 8
  %cmp72 = icmp eq ptr %call71, %58
  br i1 %cmp72, label %if.then74, label %if.end89

if.then74:                                        ; preds = %land.lhs.true69
  %59 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %59, i32 0, i32 5
  %60 = load i32, ptr %nDb, align 8
  %sub = sub nsw i32 %60, 1
  store i32 %sub, ptr %iDb, align 4
  br label %for.cond75

for.cond75:                                       ; preds = %for.inc, %if.then74
  %61 = load i32, ptr %iDb, align 4
  %cmp76 = icmp sge i32 %61, 0
  br i1 %cmp76, label %for.body78, label %for.end

for.body78:                                       ; preds = %for.cond75
  %62 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %62, i32 0, i32 4
  %63 = load ptr, ptr %aDb, align 8
  %64 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %64 to i64
  %arrayidx79 = getelementptr inbounds %struct.Db, ptr %63, i64 %idxprom
  %pBt80 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx79, i32 0, i32 1
  %65 = load ptr, ptr %pBt80, align 8
  store ptr %65, ptr %pExisting, align 8
  %66 = load ptr, ptr %pExisting, align 8
  %tobool81 = icmp ne ptr %66, null
  br i1 %tobool81, label %land.lhs.true82, label %if.end87

land.lhs.true82:                                  ; preds = %for.body78
  %67 = load ptr, ptr %pExisting, align 8
  %pBt83 = getelementptr inbounds nuw %struct.Btree, ptr %67, i32 0, i32 1
  %68 = load ptr, ptr %pBt83, align 8
  %69 = load ptr, ptr %pBt, align 8
  %cmp84 = icmp eq ptr %68, %69
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %land.lhs.true82
  %70 = load ptr, ptr %mutexShared, align 8
  call void @sqlite3_mutex_leave(ptr noundef %70)
  %71 = load ptr, ptr %mutexOpen, align 8
  call void @sqlite3_mutex_leave(ptr noundef %71)
  %72 = load ptr, ptr %zFullPathname, align 8
  call void @sqlite3_free(ptr noundef %72)
  %73 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %73)
  store i32 19, ptr %retval, align 4
  br label %return

if.end87:                                         ; preds = %land.lhs.true82, %for.body78
  br label %for.inc

for.inc:                                          ; preds = %if.end87
  %74 = load i32, ptr %iDb, align 4
  %dec = add nsw i32 %74, -1
  store i32 %dec, ptr %iDb, align 4
  br label %for.cond75, !llvm.loop !6

for.end:                                          ; preds = %for.cond75
  %75 = load ptr, ptr %pBt, align 8
  %76 = load ptr, ptr %p, align 8
  %pBt88 = getelementptr inbounds nuw %struct.Btree, ptr %76, i32 0, i32 1
  store ptr %75, ptr %pBt88, align 8
  %77 = load ptr, ptr %pBt, align 8
  %nRef = getelementptr inbounds nuw %struct.BtShared, ptr %77, i32 0, i32 23
  %78 = load i32, ptr %nRef, align 8
  %inc = add nsw i32 %78, 1
  store i32 %inc, ptr %nRef, align 8
  br label %for.end91

if.end89:                                         ; preds = %land.lhs.true69, %for.body
  br label %for.inc90

for.inc90:                                        ; preds = %if.end89
  %79 = load ptr, ptr %pBt, align 8
  %pNext = getelementptr inbounds nuw %struct.BtShared, ptr %79, i32 0, i32 24
  %80 = load ptr, ptr %pNext, align 8
  store ptr %80, ptr %pBt, align 8
  br label %for.cond, !llvm.loop !8

for.end91:                                        ; preds = %for.end, %for.cond
  %81 = load ptr, ptr %mutexShared, align 8
  call void @sqlite3_mutex_leave(ptr noundef %81)
  %82 = load ptr, ptr %zFullPathname, align 8
  call void @sqlite3_free(ptr noundef %82)
  br label %if.end92

if.end92:                                         ; preds = %for.end91, %if.then41
  br label %if.end93

if.end93:                                         ; preds = %if.end92, %lor.lhs.false37, %if.end29
  %83 = load ptr, ptr %pBt, align 8
  %cmp94 = icmp eq ptr %83, null
  br i1 %cmp94, label %if.then96, label %if.end201

if.then96:                                        ; preds = %if.end93
  %call97 = call ptr @sqlite3MallocZero(i64 noundef 136)
  store ptr %call97, ptr %pBt, align 8
  %84 = load ptr, ptr %pBt, align 8
  %cmp98 = icmp eq ptr %84, null
  br i1 %cmp98, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then96
  store i32 7, ptr %rc, align 4
  br label %btree_open_out

if.end101:                                        ; preds = %if.then96
  %85 = load ptr, ptr %pVfs.addr, align 8
  %86 = load ptr, ptr %pBt, align 8
  %pPager102 = getelementptr inbounds nuw %struct.BtShared, ptr %86, i32 0, i32 0
  %87 = load ptr, ptr %zFilename.addr, align 8
  %88 = load i32, ptr %flags.addr, align 4
  %89 = load i32, ptr %vfsFlags.addr, align 4
  %call103 = call i32 @sqlite3PagerOpen(ptr noundef %85, ptr noundef %pPager102, ptr noundef %87, i32 noundef 136, i32 noundef %88, i32 noundef %89, ptr noundef @pageReinit)
  store i32 %call103, ptr %rc, align 4
  %90 = load i32, ptr %rc, align 4
  %cmp104 = icmp eq i32 %90, 0
  br i1 %cmp104, label %if.then106, label %if.end110

if.then106:                                       ; preds = %if.end101
  %91 = load ptr, ptr %pBt, align 8
  %pPager107 = getelementptr inbounds nuw %struct.BtShared, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %pPager107, align 8
  %93 = load ptr, ptr %db.addr, align 8
  %szMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %93, i32 0, i32 9
  %94 = load i64, ptr %szMmap, align 8
  call void @sqlite3PagerSetMmapLimit(ptr noundef %92, i64 noundef %94)
  %95 = load ptr, ptr %pBt, align 8
  %pPager108 = getelementptr inbounds nuw %struct.BtShared, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %pPager108, align 8
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zDbHeader, i64 0, i64 0
  %call109 = call i32 @sqlite3PagerReadFileheader(ptr noundef %96, i32 noundef 100, ptr noundef %arraydecay)
  store i32 %call109, ptr %rc, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then106, %if.end101
  %97 = load i32, ptr %rc, align 4
  %cmp111 = icmp ne i32 %97, 0
  br i1 %cmp111, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end110
  br label %btree_open_out

if.end114:                                        ; preds = %if.end110
  %98 = load i32, ptr %flags.addr, align 4
  %conv115 = trunc i32 %98 to i8
  %99 = load ptr, ptr %pBt, align 8
  %openFlags = getelementptr inbounds nuw %struct.BtShared, ptr %99, i32 0, i32 4
  store i8 %conv115, ptr %openFlags, align 8
  %100 = load ptr, ptr %db.addr, align 8
  %101 = load ptr, ptr %pBt, align 8
  %db116 = getelementptr inbounds nuw %struct.BtShared, ptr %101, i32 0, i32 1
  store ptr %100, ptr %db116, align 8
  %102 = load ptr, ptr %pBt, align 8
  %pPager117 = getelementptr inbounds nuw %struct.BtShared, ptr %102, i32 0, i32 0
  %103 = load ptr, ptr %pPager117, align 8
  %104 = load ptr, ptr %pBt, align 8
  call void @sqlite3PagerSetBusyHandler(ptr noundef %103, ptr noundef @btreeInvokeBusyHandler, ptr noundef %104)
  %105 = load ptr, ptr %pBt, align 8
  %106 = load ptr, ptr %p, align 8
  %pBt118 = getelementptr inbounds nuw %struct.Btree, ptr %106, i32 0, i32 1
  store ptr %105, ptr %pBt118, align 8
  %107 = load ptr, ptr %pBt, align 8
  %pCursor = getelementptr inbounds nuw %struct.BtShared, ptr %107, i32 0, i32 2
  store ptr null, ptr %pCursor, align 8
  %108 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %108, i32 0, i32 3
  store ptr null, ptr %pPage1, align 8
  %109 = load ptr, ptr %pBt, align 8
  %pPager119 = getelementptr inbounds nuw %struct.BtShared, ptr %109, i32 0, i32 0
  %110 = load ptr, ptr %pPager119, align 8
  %call120 = call zeroext i8 @sqlite3PagerIsreadonly(ptr noundef %110)
  %tobool121 = icmp ne i8 %call120, 0
  br i1 %tobool121, label %if.then122, label %if.end126

if.then122:                                       ; preds = %if.end114
  %111 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %111, i32 0, i32 10
  %112 = load i16, ptr %btsFlags, align 2
  %conv123 = zext i16 %112 to i32
  %or124 = or i32 %conv123, 1
  %conv125 = trunc i32 %or124 to i16
  store i16 %conv125, ptr %btsFlags, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.then122, %if.end114
  %arrayidx127 = getelementptr inbounds [100 x i8], ptr %zDbHeader, i64 0, i64 16
  %113 = load i8, ptr %arrayidx127, align 16
  %conv128 = zext i8 %113 to i32
  %shl = shl i32 %conv128, 8
  %arrayidx129 = getelementptr inbounds [100 x i8], ptr %zDbHeader, i64 0, i64 17
  %114 = load i8, ptr %arrayidx129, align 1
  %conv130 = zext i8 %114 to i32
  %shl131 = shl i32 %conv130, 16
  %or132 = or i32 %shl, %shl131
  %115 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %115, i32 0, i32 15
  store i32 %or132, ptr %pageSize, align 8
  %116 = load ptr, ptr %pBt, align 8
  %pageSize133 = getelementptr inbounds nuw %struct.BtShared, ptr %116, i32 0, i32 15
  %117 = load i32, ptr %pageSize133, align 8
  %cmp134 = icmp ult i32 %117, 512
  br i1 %cmp134, label %if.then147, label %lor.lhs.false136

lor.lhs.false136:                                 ; preds = %if.end126
  %118 = load ptr, ptr %pBt, align 8
  %pageSize137 = getelementptr inbounds nuw %struct.BtShared, ptr %118, i32 0, i32 15
  %119 = load i32, ptr %pageSize137, align 8
  %cmp138 = icmp ugt i32 %119, 65536
  br i1 %cmp138, label %if.then147, label %lor.lhs.false140

lor.lhs.false140:                                 ; preds = %lor.lhs.false136
  %120 = load ptr, ptr %pBt, align 8
  %pageSize141 = getelementptr inbounds nuw %struct.BtShared, ptr %120, i32 0, i32 15
  %121 = load i32, ptr %pageSize141, align 8
  %sub142 = sub i32 %121, 1
  %122 = load ptr, ptr %pBt, align 8
  %pageSize143 = getelementptr inbounds nuw %struct.BtShared, ptr %122, i32 0, i32 15
  %123 = load i32, ptr %pageSize143, align 8
  %and144 = and i32 %sub142, %123
  %cmp145 = icmp ne i32 %and144, 0
  br i1 %cmp145, label %if.then147, label %if.else154

if.then147:                                       ; preds = %lor.lhs.false140, %lor.lhs.false136, %if.end126
  %124 = load ptr, ptr %pBt, align 8
  %pageSize148 = getelementptr inbounds nuw %struct.BtShared, ptr %124, i32 0, i32 15
  store i32 0, ptr %pageSize148, align 8
  %125 = load ptr, ptr %zFilename.addr, align 8
  %tobool149 = icmp ne ptr %125, null
  br i1 %tobool149, label %land.lhs.true150, label %if.end153

land.lhs.true150:                                 ; preds = %if.then147
  %126 = load i32, ptr %isMemdb, align 4
  %tobool151 = icmp ne i32 %126, 0
  br i1 %tobool151, label %if.end153, label %if.then152

if.then152:                                       ; preds = %land.lhs.true150
  %127 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %127, i32 0, i32 5
  store i8 0, ptr %autoVacuum, align 1
  %128 = load ptr, ptr %pBt, align 8
  %incrVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %128, i32 0, i32 6
  store i8 0, ptr %incrVacuum, align 2
  br label %if.end153

if.end153:                                        ; preds = %if.then152, %land.lhs.true150, %if.then147
  store i8 0, ptr %nReserve, align 1
  br label %if.end172

if.else154:                                       ; preds = %lor.lhs.false140
  %arrayidx155 = getelementptr inbounds [100 x i8], ptr %zDbHeader, i64 0, i64 20
  %129 = load i8, ptr %arrayidx155, align 4
  store i8 %129, ptr %nReserve, align 1
  %130 = load ptr, ptr %pBt, align 8
  %btsFlags156 = getelementptr inbounds nuw %struct.BtShared, ptr %130, i32 0, i32 10
  %131 = load i16, ptr %btsFlags156, align 2
  %conv157 = zext i16 %131 to i32
  %or158 = or i32 %conv157, 2
  %conv159 = trunc i32 %or158 to i16
  store i16 %conv159, ptr %btsFlags156, align 2
  %arrayidx160 = getelementptr inbounds [100 x i8], ptr %zDbHeader, i64 0, i64 52
  %call161 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx160)
  %tobool162 = icmp ne i32 %call161, 0
  %132 = zext i1 %tobool162 to i64
  %cond163 = select i1 %tobool162, i32 1, i32 0
  %conv164 = trunc i32 %cond163 to i8
  %133 = load ptr, ptr %pBt, align 8
  %autoVacuum165 = getelementptr inbounds nuw %struct.BtShared, ptr %133, i32 0, i32 5
  store i8 %conv164, ptr %autoVacuum165, align 1
  %arrayidx166 = getelementptr inbounds [100 x i8], ptr %zDbHeader, i64 0, i64 64
  %call167 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx166)
  %tobool168 = icmp ne i32 %call167, 0
  %134 = zext i1 %tobool168 to i64
  %cond169 = select i1 %tobool168, i32 1, i32 0
  %conv170 = trunc i32 %cond169 to i8
  %135 = load ptr, ptr %pBt, align 8
  %incrVacuum171 = getelementptr inbounds nuw %struct.BtShared, ptr %135, i32 0, i32 6
  store i8 %conv170, ptr %incrVacuum171, align 2
  br label %if.end172

if.end172:                                        ; preds = %if.else154, %if.end153
  %136 = load ptr, ptr %pBt, align 8
  %pPager173 = getelementptr inbounds nuw %struct.BtShared, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %pPager173, align 8
  %138 = load ptr, ptr %pBt, align 8
  %pageSize174 = getelementptr inbounds nuw %struct.BtShared, ptr %138, i32 0, i32 15
  %139 = load i8, ptr %nReserve, align 1
  %conv175 = zext i8 %139 to i32
  %call176 = call i32 @sqlite3PagerSetPagesize(ptr noundef %137, ptr noundef %pageSize174, i32 noundef %conv175)
  store i32 %call176, ptr %rc, align 4
  %140 = load i32, ptr %rc, align 4
  %tobool177 = icmp ne i32 %140, 0
  br i1 %tobool177, label %if.then178, label %if.end179

if.then178:                                       ; preds = %if.end172
  br label %btree_open_out

if.end179:                                        ; preds = %if.end172
  %141 = load ptr, ptr %pBt, align 8
  %pageSize180 = getelementptr inbounds nuw %struct.BtShared, ptr %141, i32 0, i32 15
  %142 = load i32, ptr %pageSize180, align 8
  %143 = load i8, ptr %nReserve, align 1
  %conv181 = zext i8 %143 to i32
  %sub182 = sub i32 %142, %conv181
  %144 = load ptr, ptr %pBt, align 8
  %usableSize = getelementptr inbounds nuw %struct.BtShared, ptr %144, i32 0, i32 16
  store i32 %sub182, ptr %usableSize, align 4
  %145 = load ptr, ptr %pBt, align 8
  %nRef183 = getelementptr inbounds nuw %struct.BtShared, ptr %145, i32 0, i32 23
  store i32 1, ptr %nRef183, align 8
  %146 = load ptr, ptr %p, align 8
  %sharable184 = getelementptr inbounds nuw %struct.Btree, ptr %146, i32 0, i32 3
  %147 = load i8, ptr %sharable184, align 1
  %tobool185 = icmp ne i8 %147, 0
  br i1 %tobool185, label %if.then186, label %if.end200

if.then186:                                       ; preds = %if.end179
  %call188 = call ptr @sqlite3MutexAlloc(i32 noundef 2)
  store ptr %call188, ptr %mutexShared187, align 8
  %148 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %conv189 = zext i8 %148 to i32
  %tobool190 = icmp ne i32 %conv189, 0
  br i1 %tobool190, label %if.then191, label %if.end198

if.then191:                                       ; preds = %if.then186
  %call192 = call ptr @sqlite3MutexAlloc(i32 noundef 0)
  %149 = load ptr, ptr %pBt, align 8
  %mutex = getelementptr inbounds nuw %struct.BtShared, ptr %149, i32 0, i32 21
  store ptr %call192, ptr %mutex, align 8
  %150 = load ptr, ptr %pBt, align 8
  %mutex193 = getelementptr inbounds nuw %struct.BtShared, ptr %150, i32 0, i32 21
  %151 = load ptr, ptr %mutex193, align 8
  %cmp194 = icmp eq ptr %151, null
  br i1 %cmp194, label %if.then196, label %if.end197

if.then196:                                       ; preds = %if.then191
  store i32 7, ptr %rc, align 4
  br label %btree_open_out

if.end197:                                        ; preds = %if.then191
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %if.then186
  %152 = load ptr, ptr %mutexShared187, align 8
  call void @sqlite3_mutex_enter(ptr noundef %152)
  %153 = load ptr, ptr @sqlite3SharedCacheList, align 8
  %154 = load ptr, ptr %pBt, align 8
  %pNext199 = getelementptr inbounds nuw %struct.BtShared, ptr %154, i32 0, i32 24
  store ptr %153, ptr %pNext199, align 8
  %155 = load ptr, ptr %pBt, align 8
  store ptr %155, ptr @sqlite3SharedCacheList, align 8
  %156 = load ptr, ptr %mutexShared187, align 8
  call void @sqlite3_mutex_leave(ptr noundef %156)
  br label %if.end200

if.end200:                                        ; preds = %if.end198, %if.end179
  br label %if.end201

if.end201:                                        ; preds = %if.end200, %if.end93
  %157 = load ptr, ptr %p, align 8
  %sharable202 = getelementptr inbounds nuw %struct.Btree, ptr %157, i32 0, i32 3
  %158 = load i8, ptr %sharable202, align 1
  %tobool203 = icmp ne i8 %158, 0
  br i1 %tobool203, label %if.then204, label %if.end258

if.then204:                                       ; preds = %if.end201
  store i32 0, ptr %i, align 4
  br label %for.cond205

for.cond205:                                      ; preds = %for.inc255, %if.then204
  %159 = load i32, ptr %i, align 4
  %160 = load ptr, ptr %db.addr, align 8
  %nDb206 = getelementptr inbounds nuw %struct.sqlite3, ptr %160, i32 0, i32 5
  %161 = load i32, ptr %nDb206, align 8
  %cmp207 = icmp slt i32 %159, %161
  br i1 %cmp207, label %for.body209, label %for.end257

for.body209:                                      ; preds = %for.cond205
  %162 = load ptr, ptr %db.addr, align 8
  %aDb210 = getelementptr inbounds nuw %struct.sqlite3, ptr %162, i32 0, i32 4
  %163 = load ptr, ptr %aDb210, align 8
  %164 = load i32, ptr %i, align 4
  %idxprom211 = sext i32 %164 to i64
  %arrayidx212 = getelementptr inbounds %struct.Db, ptr %163, i64 %idxprom211
  %pBt213 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx212, i32 0, i32 1
  %165 = load ptr, ptr %pBt213, align 8
  store ptr %165, ptr %pSib, align 8
  %cmp214 = icmp ne ptr %165, null
  br i1 %cmp214, label %land.lhs.true216, label %if.end254

land.lhs.true216:                                 ; preds = %for.body209
  %166 = load ptr, ptr %pSib, align 8
  %sharable217 = getelementptr inbounds nuw %struct.Btree, ptr %166, i32 0, i32 3
  %167 = load i8, ptr %sharable217, align 1
  %conv218 = zext i8 %167 to i32
  %tobool219 = icmp ne i32 %conv218, 0
  br i1 %tobool219, label %if.then220, label %if.end254

if.then220:                                       ; preds = %land.lhs.true216
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then220
  %168 = load ptr, ptr %pSib, align 8
  %pPrev = getelementptr inbounds nuw %struct.Btree, ptr %168, i32 0, i32 10
  %169 = load ptr, ptr %pPrev, align 8
  %tobool221 = icmp ne ptr %169, null
  br i1 %tobool221, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %170 = load ptr, ptr %pSib, align 8
  %pPrev222 = getelementptr inbounds nuw %struct.Btree, ptr %170, i32 0, i32 10
  %171 = load ptr, ptr %pPrev222, align 8
  store ptr %171, ptr %pSib, align 8
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %172 = load ptr, ptr %p, align 8
  %pBt223 = getelementptr inbounds nuw %struct.Btree, ptr %172, i32 0, i32 1
  %173 = load ptr, ptr %pBt223, align 8
  %174 = ptrtoint ptr %173 to i64
  %175 = load ptr, ptr %pSib, align 8
  %pBt224 = getelementptr inbounds nuw %struct.Btree, ptr %175, i32 0, i32 1
  %176 = load ptr, ptr %pBt224, align 8
  %177 = ptrtoint ptr %176 to i64
  %cmp225 = icmp ult i64 %174, %177
  br i1 %cmp225, label %if.then227, label %if.else231

if.then227:                                       ; preds = %while.end
  %178 = load ptr, ptr %pSib, align 8
  %179 = load ptr, ptr %p, align 8
  %pNext228 = getelementptr inbounds nuw %struct.Btree, ptr %179, i32 0, i32 9
  store ptr %178, ptr %pNext228, align 8
  %180 = load ptr, ptr %p, align 8
  %pPrev229 = getelementptr inbounds nuw %struct.Btree, ptr %180, i32 0, i32 10
  store ptr null, ptr %pPrev229, align 8
  %181 = load ptr, ptr %p, align 8
  %182 = load ptr, ptr %pSib, align 8
  %pPrev230 = getelementptr inbounds nuw %struct.Btree, ptr %182, i32 0, i32 10
  store ptr %181, ptr %pPrev230, align 8
  br label %if.end253

if.else231:                                       ; preds = %while.end
  br label %while.cond232

while.cond232:                                    ; preds = %while.body240, %if.else231
  %183 = load ptr, ptr %pSib, align 8
  %pNext233 = getelementptr inbounds nuw %struct.Btree, ptr %183, i32 0, i32 9
  %184 = load ptr, ptr %pNext233, align 8
  %tobool234 = icmp ne ptr %184, null
  br i1 %tobool234, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond232
  %185 = load ptr, ptr %pSib, align 8
  %pNext235 = getelementptr inbounds nuw %struct.Btree, ptr %185, i32 0, i32 9
  %186 = load ptr, ptr %pNext235, align 8
  %pBt236 = getelementptr inbounds nuw %struct.Btree, ptr %186, i32 0, i32 1
  %187 = load ptr, ptr %pBt236, align 8
  %188 = ptrtoint ptr %187 to i64
  %189 = load ptr, ptr %p, align 8
  %pBt237 = getelementptr inbounds nuw %struct.Btree, ptr %189, i32 0, i32 1
  %190 = load ptr, ptr %pBt237, align 8
  %191 = ptrtoint ptr %190 to i64
  %cmp238 = icmp ult i64 %188, %191
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond232
  %192 = phi i1 [ false, %while.cond232 ], [ %cmp238, %land.rhs ]
  br i1 %192, label %while.body240, label %while.end242

while.body240:                                    ; preds = %land.end
  %193 = load ptr, ptr %pSib, align 8
  %pNext241 = getelementptr inbounds nuw %struct.Btree, ptr %193, i32 0, i32 9
  %194 = load ptr, ptr %pNext241, align 8
  store ptr %194, ptr %pSib, align 8
  br label %while.cond232, !llvm.loop !10

while.end242:                                     ; preds = %land.end
  %195 = load ptr, ptr %pSib, align 8
  %pNext243 = getelementptr inbounds nuw %struct.Btree, ptr %195, i32 0, i32 9
  %196 = load ptr, ptr %pNext243, align 8
  %197 = load ptr, ptr %p, align 8
  %pNext244 = getelementptr inbounds nuw %struct.Btree, ptr %197, i32 0, i32 9
  store ptr %196, ptr %pNext244, align 8
  %198 = load ptr, ptr %pSib, align 8
  %199 = load ptr, ptr %p, align 8
  %pPrev245 = getelementptr inbounds nuw %struct.Btree, ptr %199, i32 0, i32 10
  store ptr %198, ptr %pPrev245, align 8
  %200 = load ptr, ptr %p, align 8
  %pNext246 = getelementptr inbounds nuw %struct.Btree, ptr %200, i32 0, i32 9
  %201 = load ptr, ptr %pNext246, align 8
  %tobool247 = icmp ne ptr %201, null
  br i1 %tobool247, label %if.then248, label %if.end251

if.then248:                                       ; preds = %while.end242
  %202 = load ptr, ptr %p, align 8
  %203 = load ptr, ptr %p, align 8
  %pNext249 = getelementptr inbounds nuw %struct.Btree, ptr %203, i32 0, i32 9
  %204 = load ptr, ptr %pNext249, align 8
  %pPrev250 = getelementptr inbounds nuw %struct.Btree, ptr %204, i32 0, i32 10
  store ptr %202, ptr %pPrev250, align 8
  br label %if.end251

if.end251:                                        ; preds = %if.then248, %while.end242
  %205 = load ptr, ptr %p, align 8
  %206 = load ptr, ptr %pSib, align 8
  %pNext252 = getelementptr inbounds nuw %struct.Btree, ptr %206, i32 0, i32 9
  store ptr %205, ptr %pNext252, align 8
  br label %if.end253

if.end253:                                        ; preds = %if.end251, %if.then227
  br label %for.end257

if.end254:                                        ; preds = %land.lhs.true216, %for.body209
  br label %for.inc255

for.inc255:                                       ; preds = %if.end254
  %207 = load i32, ptr %i, align 4
  %inc256 = add nsw i32 %207, 1
  store i32 %inc256, ptr %i, align 4
  br label %for.cond205, !llvm.loop !11

for.end257:                                       ; preds = %if.end253, %for.cond205
  br label %if.end258

if.end258:                                        ; preds = %for.end257, %if.end201
  %208 = load ptr, ptr %p, align 8
  %209 = load ptr, ptr %ppBtree.addr, align 8
  store ptr %208, ptr %209, align 8
  br label %btree_open_out

btree_open_out:                                   ; preds = %if.end258, %if.then196, %if.then178, %if.then113, %if.then100
  %210 = load i32, ptr %rc, align 4
  %cmp259 = icmp ne i32 %210, 0
  br i1 %cmp259, label %if.then261, label %if.else270

if.then261:                                       ; preds = %btree_open_out
  %211 = load ptr, ptr %pBt, align 8
  %tobool262 = icmp ne ptr %211, null
  br i1 %tobool262, label %land.lhs.true263, label %if.end269

land.lhs.true263:                                 ; preds = %if.then261
  %212 = load ptr, ptr %pBt, align 8
  %pPager264 = getelementptr inbounds nuw %struct.BtShared, ptr %212, i32 0, i32 0
  %213 = load ptr, ptr %pPager264, align 8
  %tobool265 = icmp ne ptr %213, null
  br i1 %tobool265, label %if.then266, label %if.end269

if.then266:                                       ; preds = %land.lhs.true263
  %214 = load ptr, ptr %pBt, align 8
  %pPager267 = getelementptr inbounds nuw %struct.BtShared, ptr %214, i32 0, i32 0
  %215 = load ptr, ptr %pPager267, align 8
  %call268 = call i32 @sqlite3PagerClose(ptr noundef %215, ptr noundef null)
  br label %if.end269

if.end269:                                        ; preds = %if.then266, %land.lhs.true263, %if.then261
  %216 = load ptr, ptr %pBt, align 8
  call void @sqlite3_free(ptr noundef %216)
  %217 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %217)
  %218 = load ptr, ptr %ppBtree.addr, align 8
  store ptr null, ptr %218, align 8
  br label %if.end284

if.else270:                                       ; preds = %btree_open_out
  %219 = load ptr, ptr %p, align 8
  %call271 = call ptr @sqlite3BtreeSchema(ptr noundef %219, i32 noundef 0, ptr noundef null)
  %cmp272 = icmp eq ptr %call271, null
  br i1 %cmp272, label %if.then274, label %if.end277

if.then274:                                       ; preds = %if.else270
  %220 = load ptr, ptr %p, align 8
  %pBt275 = getelementptr inbounds nuw %struct.Btree, ptr %220, i32 0, i32 1
  %221 = load ptr, ptr %pBt275, align 8
  %pPager276 = getelementptr inbounds nuw %struct.BtShared, ptr %221, i32 0, i32 0
  %222 = load ptr, ptr %pPager276, align 8
  call void @sqlite3PagerSetCachesize(ptr noundef %222, i32 noundef -2000)
  br label %if.end277

if.end277:                                        ; preds = %if.then274, %if.else270
  %223 = load ptr, ptr %pBt, align 8
  %pPager278 = getelementptr inbounds nuw %struct.BtShared, ptr %223, i32 0, i32 0
  %224 = load ptr, ptr %pPager278, align 8
  %call279 = call ptr @sqlite3PagerFile(ptr noundef %224)
  store ptr %call279, ptr %pFile, align 8
  %225 = load ptr, ptr %pFile, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %225, i32 0, i32 0
  %226 = load ptr, ptr %pMethods, align 8
  %tobool280 = icmp ne ptr %226, null
  br i1 %tobool280, label %if.then281, label %if.end283

if.then281:                                       ; preds = %if.end277
  %227 = load ptr, ptr %pFile, align 8
  %228 = load ptr, ptr %pBt, align 8
  %db282 = getelementptr inbounds nuw %struct.BtShared, ptr %228, i32 0, i32 1
  call void @sqlite3OsFileControlHint(ptr noundef %227, i32 noundef 30, ptr noundef %db282)
  br label %if.end283

if.end283:                                        ; preds = %if.then281, %if.end277
  br label %if.end284

if.end284:                                        ; preds = %if.end283, %if.end269
  %229 = load ptr, ptr %mutexOpen, align 8
  %tobool285 = icmp ne ptr %229, null
  br i1 %tobool285, label %if.then286, label %if.end287

if.then286:                                       ; preds = %if.end284
  %230 = load ptr, ptr %mutexOpen, align 8
  call void @sqlite3_mutex_leave(ptr noundef %230)
  br label %if.end287

if.end287:                                        ; preds = %if.then286, %if.end284
  %231 = load i32, ptr %rc, align 4
  store i32 %231, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end287, %if.then86, %if.then59, %if.then52, %if.then28
  %232 = load i32, ptr %retval, align 4
  ret i32 %232
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3TempInMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFullPathname(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerFilename(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pageReinit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerSetMmapLimit(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerReadFileheader(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerSetBusyHandler(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreeInvokeBusyHandler(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden zeroext i8 @sqlite3PagerIsreadonly(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetPagesize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerClose(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeSchema(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerSetCachesize(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsFileControlHint(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind willreturn memory(read) }

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
