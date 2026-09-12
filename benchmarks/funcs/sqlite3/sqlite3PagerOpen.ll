; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

@.str.94 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.95 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.96 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.97 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRaw(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_uri_boolean(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFullPathname(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerOpen(ptr noundef %pVfs, ptr noundef %ppPager, ptr noundef %zFilename, i32 noundef %nExtra, i32 noundef %flags, i32 noundef %vfsFlags, ptr noundef %xReinit) #0 {
entry:
  %retval = alloca i32, align 4
  %pVfs.addr = alloca ptr, align 8
  %ppPager.addr = alloca ptr, align 8
  %zFilename.addr = alloca ptr, align 8
  %nExtra.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %vfsFlags.addr = alloca i32, align 4
  %xReinit.addr = alloca ptr, align 8
  %pPtr = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %rc = alloca i32, align 4
  %tempFile = alloca i32, align 4
  %memDb = alloca i32, align 4
  %readOnly = alloca i32, align 4
  %journalFileSize = alloca i32, align 4
  %zPathname = alloca ptr, align 8
  %nPathname = alloca i32, align 4
  %useJournal = alloca i32, align 4
  %pcacheSize = alloca i32, align 4
  %szPageDflt = alloca i32, align 4
  %zUri = alloca ptr, align 8
  %nUri = alloca i32, align 4
  %z = alloca ptr, align 8
  %fout = alloca i32, align 4
  %iDc = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store ptr %ppPager, ptr %ppPager.addr, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store i32 %nExtra, ptr %nExtra.addr, align 4
  store i32 %flags, ptr %flags.addr, align 4
  store i32 %vfsFlags, ptr %vfsFlags.addr, align 4
  store ptr %xReinit, ptr %xReinit.addr, align 8
  store ptr null, ptr %pPager, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %tempFile, align 4
  store i32 0, ptr %memDb, align 4
  store i32 0, ptr %readOnly, align 4
  store ptr null, ptr %zPathname, align 8
  store i32 0, ptr %nPathname, align 4
  %0 = load i32, ptr %flags.addr, align 4
  %and = and i32 %0, 1
  %cmp = icmp eq i32 %and, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %useJournal, align 4
  %call = call i32 @sqlite3PcacheSize()
  store i32 %call, ptr %pcacheSize, align 4
  store i32 4096, ptr %szPageDflt, align 4
  store ptr null, ptr %zUri, align 8
  store i32 0, ptr %nUri, align 4
  %1 = load ptr, ptr %pVfs.addr, align 8
  %call1 = call i32 @sqlite3JournalSize(ptr noundef %1)
  %add = add nsw i32 %call1, 7
  %and2 = and i32 %add, -8
  store i32 %and2, ptr %journalFileSize, align 4
  %2 = load ptr, ptr %ppPager.addr, align 8
  store ptr null, ptr %2, align 8
  %3 = load i32, ptr %flags.addr, align 4
  %and3 = and i32 %3, 2
  %tobool = icmp ne i32 %and3, 0
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  store i32 1, ptr %memDb, align 4
  %4 = load ptr, ptr %zFilename.addr, align 8
  %tobool4 = icmp ne ptr %4, null
  br i1 %tobool4, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %if.then
  %5 = load ptr, ptr %zFilename.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 0
  %6 = load i8, ptr %arrayidx, align 1
  %conv5 = sext i8 %6 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br i1 %tobool6, label %if.then7, label %if.end13

if.then7:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %zFilename.addr, align 8
  %call8 = call ptr @sqlite3DbStrDup(ptr noundef null, ptr noundef %7)
  store ptr %call8, ptr %zPathname, align 8
  %8 = load ptr, ptr %zPathname, align 8
  %cmp9 = icmp eq ptr %8, null
  br i1 %cmp9, label %if.then11, label %if.end

if.then11:                                        ; preds = %if.then7
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then7
  %9 = load ptr, ptr %zPathname, align 8
  %call12 = call i32 @sqlite3Strlen30(ptr noundef %9)
  store i32 %call12, ptr %nPathname, align 4
  store ptr null, ptr %zFilename.addr, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.end, %land.lhs.true, %if.then
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %entry
  %10 = load ptr, ptr %zFilename.addr, align 8
  %tobool15 = icmp ne ptr %10, null
  br i1 %tobool15, label %land.lhs.true16, label %if.end57

land.lhs.true16:                                  ; preds = %if.end14
  %11 = load ptr, ptr %zFilename.addr, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %11, i64 0
  %12 = load i8, ptr %arrayidx17, align 1
  %conv18 = sext i8 %12 to i32
  %tobool19 = icmp ne i32 %conv18, 0
  br i1 %tobool19, label %if.then20, label %if.end57

if.then20:                                        ; preds = %land.lhs.true16
  %13 = load ptr, ptr %pVfs.addr, align 8
  %mxPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %mxPathname, align 8
  %add21 = add nsw i32 %14, 1
  store i32 %add21, ptr %nPathname, align 4
  %15 = load i32, ptr %nPathname, align 4
  %mul = mul nsw i32 %15, 2
  %conv22 = sext i32 %mul to i64
  %call23 = call ptr @sqlite3DbMallocRaw(ptr noundef null, i64 noundef %conv22)
  store ptr %call23, ptr %zPathname, align 8
  %16 = load ptr, ptr %zPathname, align 8
  %cmp24 = icmp eq ptr %16, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.then20
  store i32 7, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.then20
  %17 = load ptr, ptr %zPathname, align 8
  %arrayidx28 = getelementptr inbounds i8, ptr %17, i64 0
  store i8 0, ptr %arrayidx28, align 1
  %18 = load ptr, ptr %pVfs.addr, align 8
  %19 = load ptr, ptr %zFilename.addr, align 8
  %20 = load i32, ptr %nPathname, align 4
  %21 = load ptr, ptr %zPathname, align 8
  %call29 = call i32 @sqlite3OsFullPathname(ptr noundef %18, ptr noundef %19, i32 noundef %20, ptr noundef %21)
  store i32 %call29, ptr %rc, align 4
  %22 = load ptr, ptr %zPathname, align 8
  %call30 = call i32 @sqlite3Strlen30(ptr noundef %22)
  store i32 %call30, ptr %nPathname, align 4
  %23 = load ptr, ptr %zFilename.addr, align 8
  %24 = load ptr, ptr %zFilename.addr, align 8
  %call31 = call i32 @sqlite3Strlen30(ptr noundef %24)
  %add32 = add nsw i32 %call31, 1
  %idxprom = sext i32 %add32 to i64
  %arrayidx33 = getelementptr inbounds i8, ptr %23, i64 %idxprom
  store ptr %arrayidx33, ptr %zUri, align 8
  store ptr %arrayidx33, ptr %z, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end27
  %25 = load ptr, ptr %z, align 8
  %26 = load i8, ptr %25, align 1
  %tobool34 = icmp ne i8 %26, 0
  br i1 %tobool34, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %z, align 8
  %call35 = call i32 @sqlite3Strlen30(ptr noundef %27)
  %add36 = add nsw i32 %call35, 1
  %28 = load ptr, ptr %z, align 8
  %idx.ext = sext i32 %add36 to i64
  %add.ptr = getelementptr inbounds i8, ptr %28, i64 %idx.ext
  store ptr %add.ptr, ptr %z, align 8
  %29 = load ptr, ptr %z, align 8
  %call37 = call i32 @sqlite3Strlen30(ptr noundef %29)
  %add38 = add nsw i32 %call37, 1
  %30 = load ptr, ptr %z, align 8
  %idx.ext39 = sext i32 %add38 to i64
  %add.ptr40 = getelementptr inbounds i8, ptr %30, i64 %idx.ext39
  store ptr %add.ptr40, ptr %z, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %31 = load ptr, ptr %z, align 8
  %arrayidx41 = getelementptr inbounds i8, ptr %31, i64 1
  %32 = load ptr, ptr %zUri, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %arrayidx41 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv42 = trunc i64 %sub.ptr.sub to i32
  store i32 %conv42, ptr %nUri, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp43 = icmp eq i32 %33, 0
  br i1 %cmp43, label %land.lhs.true45, label %if.end52

land.lhs.true45:                                  ; preds = %while.end
  %34 = load i32, ptr %nPathname, align 4
  %add46 = add nsw i32 %34, 8
  %35 = load ptr, ptr %pVfs.addr, align 8
  %mxPathname47 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %mxPathname47, align 8
  %cmp48 = icmp sgt i32 %add46, %36
  br i1 %cmp48, label %if.then50, label %if.end52

if.then50:                                        ; preds = %land.lhs.true45
  %call51 = call i32 @sqlite3CantopenError(i32 noundef 55600)
  store i32 %call51, ptr %rc, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %land.lhs.true45, %while.end
  %37 = load i32, ptr %rc, align 4
  %cmp53 = icmp ne i32 %37, 0
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %if.end52
  %38 = load ptr, ptr %zPathname, align 8
  call void @sqlite3DbFree(ptr noundef null, ptr noundef %38)
  %39 = load i32, ptr %rc, align 4
  store i32 %39, ptr %retval, align 4
  br label %return

if.end56:                                         ; preds = %if.end52
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %land.lhs.true16, %if.end14
  %40 = load i32, ptr %pcacheSize, align 4
  %add58 = add nsw i32 %40, 7
  %and59 = and i32 %add58, -8
  %conv60 = sext i32 %and59 to i64
  %add61 = add i64 304, %conv60
  %41 = load ptr, ptr %pVfs.addr, align 8
  %szOsFile = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %szOsFile, align 4
  %add62 = add nsw i32 %42, 7
  %and63 = and i32 %add62, -8
  %conv64 = sext i32 %and63 to i64
  %add65 = add i64 %add61, %conv64
  %43 = load i32, ptr %journalFileSize, align 4
  %mul66 = mul nsw i32 %43, 2
  %conv67 = sext i32 %mul66 to i64
  %add68 = add i64 %add65, %conv67
  %44 = load i32, ptr %nPathname, align 4
  %conv69 = sext i32 %44 to i64
  %add70 = add i64 %add68, %conv69
  %add71 = add i64 %add70, 1
  %45 = load i32, ptr %nUri, align 4
  %conv72 = sext i32 %45 to i64
  %add73 = add i64 %add71, %conv72
  %46 = load i32, ptr %nPathname, align 4
  %conv74 = sext i32 %46 to i64
  %add75 = add i64 %add73, %conv74
  %add76 = add i64 %add75, 8
  %add77 = add i64 %add76, 2
  %47 = load i32, ptr %nPathname, align 4
  %conv78 = sext i32 %47 to i64
  %add79 = add i64 %add77, %conv78
  %add80 = add i64 %add79, 4
  %add81 = add i64 %add80, 2
  %call82 = call ptr @sqlite3MallocZero(i64 noundef %add81)
  store ptr %call82, ptr %pPtr, align 8
  %48 = load ptr, ptr %pPtr, align 8
  %tobool83 = icmp ne ptr %48, null
  br i1 %tobool83, label %if.end85, label %if.then84

if.then84:                                        ; preds = %if.end57
  %49 = load ptr, ptr %zPathname, align 8
  call void @sqlite3DbFree(ptr noundef null, ptr noundef %49)
  store i32 7, ptr %retval, align 4
  br label %return

if.end85:                                         ; preds = %if.end57
  %50 = load ptr, ptr %pPtr, align 8
  store ptr %50, ptr %pPager, align 8
  %51 = load ptr, ptr %pPtr, align 8
  %add.ptr86 = getelementptr inbounds nuw i8, ptr %51, i64 304
  store ptr %add.ptr86, ptr %pPtr, align 8
  %52 = load ptr, ptr %pPager, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %52, i32 0, i32 58
  store ptr %add.ptr86, ptr %pPCache, align 8
  %53 = load i32, ptr %pcacheSize, align 4
  %add87 = add nsw i32 %53, 7
  %and88 = and i32 %add87, -8
  %54 = load ptr, ptr %pPtr, align 8
  %idx.ext89 = sext i32 %and88 to i64
  %add.ptr90 = getelementptr inbounds i8, ptr %54, i64 %idx.ext89
  store ptr %add.ptr90, ptr %pPtr, align 8
  %55 = load ptr, ptr %pPager, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %55, i32 0, i32 30
  store ptr %add.ptr90, ptr %fd, align 8
  %56 = load ptr, ptr %pVfs.addr, align 8
  %szOsFile91 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %56, i32 0, i32 1
  %57 = load i32, ptr %szOsFile91, align 4
  %add92 = add nsw i32 %57, 7
  %and93 = and i32 %add92, -8
  %58 = load ptr, ptr %pPtr, align 8
  %idx.ext94 = sext i32 %and93 to i64
  %add.ptr95 = getelementptr inbounds i8, ptr %58, i64 %idx.ext94
  store ptr %add.ptr95, ptr %pPtr, align 8
  %59 = load ptr, ptr %pPager, align 8
  %sjfd = getelementptr inbounds nuw %struct.Pager, ptr %59, i32 0, i32 32
  store ptr %add.ptr95, ptr %sjfd, align 8
  %60 = load i32, ptr %journalFileSize, align 4
  %61 = load ptr, ptr %pPtr, align 8
  %idx.ext96 = sext i32 %60 to i64
  %add.ptr97 = getelementptr inbounds i8, ptr %61, i64 %idx.ext96
  store ptr %add.ptr97, ptr %pPtr, align 8
  %62 = load ptr, ptr %pPager, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 31
  store ptr %add.ptr97, ptr %jfd, align 8
  %63 = load i32, ptr %journalFileSize, align 4
  %64 = load ptr, ptr %pPtr, align 8
  %idx.ext98 = sext i32 %63 to i64
  %add.ptr99 = getelementptr inbounds i8, ptr %64, i64 %idx.ext98
  store ptr %add.ptr99, ptr %pPtr, align 8
  %65 = load ptr, ptr %pPager, align 8
  %zFilename100 = getelementptr inbounds nuw %struct.Pager, ptr %65, i32 0, i32 50
  store ptr %add.ptr99, ptr %zFilename100, align 8
  %66 = load ptr, ptr %zPathname, align 8
  %tobool101 = icmp ne ptr %66, null
  br i1 %tobool101, label %if.then102, label %if.end132

if.then102:                                       ; preds = %if.end85
  %67 = load i32, ptr %nPathname, align 4
  %add103 = add nsw i32 %67, 1
  %68 = load i32, ptr %nUri, align 4
  %add104 = add nsw i32 %add103, %68
  %69 = load ptr, ptr %pPtr, align 8
  %idx.ext105 = sext i32 %add104 to i64
  %add.ptr106 = getelementptr inbounds i8, ptr %69, i64 %idx.ext105
  store ptr %add.ptr106, ptr %pPtr, align 8
  %70 = load ptr, ptr %pPager, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %70, i32 0, i32 51
  store ptr %add.ptr106, ptr %zJournal, align 8
  %71 = load ptr, ptr %pPager, align 8
  %zFilename107 = getelementptr inbounds nuw %struct.Pager, ptr %71, i32 0, i32 50
  %72 = load ptr, ptr %zFilename107, align 8
  %73 = load ptr, ptr %zPathname, align 8
  %74 = load i32, ptr %nPathname, align 4
  %conv108 = sext i32 %74 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr align 1 %73, i64 %conv108, i1 false)
  %75 = load i32, ptr %nUri, align 4
  %tobool109 = icmp ne i32 %75, 0
  br i1 %tobool109, label %if.then110, label %if.end116

if.then110:                                       ; preds = %if.then102
  %76 = load ptr, ptr %pPager, align 8
  %zFilename111 = getelementptr inbounds nuw %struct.Pager, ptr %76, i32 0, i32 50
  %77 = load ptr, ptr %zFilename111, align 8
  %78 = load i32, ptr %nPathname, align 4
  %add112 = add nsw i32 %78, 1
  %idxprom113 = sext i32 %add112 to i64
  %arrayidx114 = getelementptr inbounds i8, ptr %77, i64 %idxprom113
  %79 = load ptr, ptr %zUri, align 8
  %80 = load i32, ptr %nUri, align 4
  %conv115 = sext i32 %80 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx114, ptr align 1 %79, i64 %conv115, i1 false)
  br label %if.end116

if.end116:                                        ; preds = %if.then110, %if.then102
  %81 = load ptr, ptr %pPager, align 8
  %zJournal117 = getelementptr inbounds nuw %struct.Pager, ptr %81, i32 0, i32 51
  %82 = load ptr, ptr %zJournal117, align 8
  %83 = load ptr, ptr %zPathname, align 8
  %84 = load i32, ptr %nPathname, align 4
  %conv118 = sext i32 %84 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %82, ptr align 1 %83, i64 %conv118, i1 false)
  %85 = load ptr, ptr %pPager, align 8
  %zJournal119 = getelementptr inbounds nuw %struct.Pager, ptr %85, i32 0, i32 51
  %86 = load ptr, ptr %zJournal119, align 8
  %87 = load i32, ptr %nPathname, align 4
  %idxprom120 = sext i32 %87 to i64
  %arrayidx121 = getelementptr inbounds i8, ptr %86, i64 %idxprom120
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx121, ptr align 1 @.str.94, i64 10, i1 false)
  %88 = load ptr, ptr %pPager, align 8
  %zJournal122 = getelementptr inbounds nuw %struct.Pager, ptr %88, i32 0, i32 51
  %89 = load ptr, ptr %zJournal122, align 8
  %90 = load i32, ptr %nPathname, align 4
  %add123 = add nsw i32 %90, 8
  %add124 = add nsw i32 %add123, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds i8, ptr %89, i64 %idxprom125
  %91 = load ptr, ptr %pPager, align 8
  %zWal = getelementptr inbounds nuw %struct.Pager, ptr %91, i32 0, i32 60
  store ptr %arrayidx126, ptr %zWal, align 8
  %92 = load ptr, ptr %pPager, align 8
  %zWal127 = getelementptr inbounds nuw %struct.Pager, ptr %92, i32 0, i32 60
  %93 = load ptr, ptr %zWal127, align 8
  %94 = load ptr, ptr %zPathname, align 8
  %95 = load i32, ptr %nPathname, align 4
  %conv128 = sext i32 %95 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %93, ptr align 1 %94, i64 %conv128, i1 false)
  %96 = load ptr, ptr %pPager, align 8
  %zWal129 = getelementptr inbounds nuw %struct.Pager, ptr %96, i32 0, i32 60
  %97 = load ptr, ptr %zWal129, align 8
  %98 = load i32, ptr %nPathname, align 4
  %idxprom130 = sext i32 %98 to i64
  %arrayidx131 = getelementptr inbounds i8, ptr %97, i64 %idxprom130
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx131, ptr align 1 @.str.95, i64 5, i1 false)
  %99 = load ptr, ptr %zPathname, align 8
  call void @sqlite3DbFree(ptr noundef null, ptr noundef %99)
  br label %if.end132

if.end132:                                        ; preds = %if.end116, %if.end85
  %100 = load ptr, ptr %pVfs.addr, align 8
  %101 = load ptr, ptr %pPager, align 8
  %pVfs133 = getelementptr inbounds nuw %struct.Pager, ptr %101, i32 0, i32 0
  store ptr %100, ptr %pVfs133, align 8
  %102 = load i32, ptr %vfsFlags.addr, align 4
  %103 = load ptr, ptr %pPager, align 8
  %vfsFlags134 = getelementptr inbounds nuw %struct.Pager, ptr %103, i32 0, i32 45
  store i32 %102, ptr %vfsFlags134, align 4
  %104 = load ptr, ptr %zFilename.addr, align 8
  %tobool135 = icmp ne ptr %104, null
  br i1 %tobool135, label %land.lhs.true136, label %if.else175

land.lhs.true136:                                 ; preds = %if.end132
  %105 = load ptr, ptr %zFilename.addr, align 8
  %arrayidx137 = getelementptr inbounds i8, ptr %105, i64 0
  %106 = load i8, ptr %arrayidx137, align 1
  %conv138 = sext i8 %106 to i32
  %tobool139 = icmp ne i32 %conv138, 0
  br i1 %tobool139, label %if.then140, label %if.else175

if.then140:                                       ; preds = %land.lhs.true136
  store i32 0, ptr %fout, align 4
  %107 = load ptr, ptr %pVfs.addr, align 8
  %108 = load ptr, ptr %pPager, align 8
  %zFilename141 = getelementptr inbounds nuw %struct.Pager, ptr %108, i32 0, i32 50
  %109 = load ptr, ptr %zFilename141, align 8
  %110 = load ptr, ptr %pPager, align 8
  %fd142 = getelementptr inbounds nuw %struct.Pager, ptr %110, i32 0, i32 30
  %111 = load ptr, ptr %fd142, align 8
  %112 = load i32, ptr %vfsFlags.addr, align 4
  %call143 = call i32 @sqlite3OsOpen(ptr noundef %107, ptr noundef %109, ptr noundef %111, i32 noundef %112, ptr noundef %fout)
  store i32 %call143, ptr %rc, align 4
  %113 = load i32, ptr %fout, align 4
  %and144 = and i32 %113, 1
  %cmp145 = icmp ne i32 %and144, 0
  %conv146 = zext i1 %cmp145 to i32
  store i32 %conv146, ptr %readOnly, align 4
  %114 = load i32, ptr %rc, align 4
  %cmp147 = icmp eq i32 %114, 0
  br i1 %cmp147, label %if.then149, label %if.end174

if.then149:                                       ; preds = %if.then140
  %115 = load ptr, ptr %pPager, align 8
  %fd150 = getelementptr inbounds nuw %struct.Pager, ptr %115, i32 0, i32 30
  %116 = load ptr, ptr %fd150, align 8
  %call151 = call i32 @sqlite3OsDeviceCharacteristics(ptr noundef %116)
  store i32 %call151, ptr %iDc, align 4
  %117 = load i32, ptr %readOnly, align 4
  %tobool152 = icmp ne i32 %117, 0
  br i1 %tobool152, label %if.end164, label %if.then153

if.then153:                                       ; preds = %if.then149
  %118 = load ptr, ptr %pPager, align 8
  call void @setSectorSize(ptr noundef %118)
  %119 = load i32, ptr %szPageDflt, align 4
  %120 = load ptr, ptr %pPager, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %120, i32 0, i32 46
  %121 = load i32, ptr %sectorSize, align 8
  %cmp154 = icmp ult i32 %119, %121
  br i1 %cmp154, label %if.then156, label %if.end163

if.then156:                                       ; preds = %if.then153
  %122 = load ptr, ptr %pPager, align 8
  %sectorSize157 = getelementptr inbounds nuw %struct.Pager, ptr %122, i32 0, i32 46
  %123 = load i32, ptr %sectorSize157, align 8
  %cmp158 = icmp ugt i32 %123, 8192
  br i1 %cmp158, label %if.then160, label %if.else

if.then160:                                       ; preds = %if.then156
  store i32 8192, ptr %szPageDflt, align 4
  br label %if.end162

if.else:                                          ; preds = %if.then156
  %124 = load ptr, ptr %pPager, align 8
  %sectorSize161 = getelementptr inbounds nuw %struct.Pager, ptr %124, i32 0, i32 46
  %125 = load i32, ptr %sectorSize161, align 8
  store i32 %125, ptr %szPageDflt, align 4
  br label %if.end162

if.end162:                                        ; preds = %if.else, %if.then160
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.then153
  br label %if.end164

if.end164:                                        ; preds = %if.end163, %if.then149
  %126 = load ptr, ptr %zFilename.addr, align 8
  %call165 = call i32 @sqlite3_uri_boolean(ptr noundef %126, ptr noundef @.str.96, i32 noundef 0)
  %conv166 = trunc i32 %call165 to i8
  %127 = load ptr, ptr %pPager, align 8
  %noLock = getelementptr inbounds nuw %struct.Pager, ptr %127, i32 0, i32 10
  store i8 %conv166, ptr %noLock, align 1
  %128 = load i32, ptr %iDc, align 4
  %and167 = and i32 %128, 8192
  %cmp168 = icmp ne i32 %and167, 0
  br i1 %cmp168, label %if.then172, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end164
  %129 = load ptr, ptr %zFilename.addr, align 8
  %call170 = call i32 @sqlite3_uri_boolean(ptr noundef %129, ptr noundef @.str.97, i32 noundef 0)
  %tobool171 = icmp ne i32 %call170, 0
  br i1 %tobool171, label %if.then172, label %if.end173

if.then172:                                       ; preds = %lor.lhs.false, %if.end164
  %130 = load i32, ptr %vfsFlags.addr, align 4
  %or = or i32 %130, 1
  store i32 %or, ptr %vfsFlags.addr, align 4
  br label %act_like_temp_file

if.end173:                                        ; preds = %lor.lhs.false
  br label %if.end174

if.end174:                                        ; preds = %if.end173, %if.then140
  br label %if.end178

if.else175:                                       ; preds = %land.lhs.true136, %if.end132
  br label %act_like_temp_file

act_like_temp_file:                               ; preds = %if.else175, %if.then172
  store i32 1, ptr %tempFile, align 4
  %131 = load ptr, ptr %pPager, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %131, i32 0, i32 13
  store i8 1, ptr %eState, align 4
  %132 = load ptr, ptr %pPager, align 8
  %eLock = getelementptr inbounds nuw %struct.Pager, ptr %132, i32 0, i32 14
  store i8 4, ptr %eLock, align 1
  %133 = load ptr, ptr %pPager, align 8
  %noLock176 = getelementptr inbounds nuw %struct.Pager, ptr %133, i32 0, i32 10
  store i8 1, ptr %noLock176, align 1
  %134 = load i32, ptr %vfsFlags.addr, align 4
  %and177 = and i32 %134, 1
  store i32 %and177, ptr %readOnly, align 4
  br label %if.end178

if.end178:                                        ; preds = %act_like_temp_file, %if.end174
  %135 = load i32, ptr %rc, align 4
  %cmp179 = icmp eq i32 %135, 0
  br i1 %cmp179, label %if.then181, label %if.end183

if.then181:                                       ; preds = %if.end178
  %136 = load ptr, ptr %pPager, align 8
  %call182 = call i32 @sqlite3PagerSetPagesize(ptr noundef %136, ptr noundef %szPageDflt, i32 noundef -1)
  store i32 %call182, ptr %rc, align 4
  br label %if.end183

if.end183:                                        ; preds = %if.then181, %if.end178
  %137 = load i32, ptr %rc, align 4
  %cmp184 = icmp eq i32 %137, 0
  br i1 %cmp184, label %if.then186, label %if.end195

if.then186:                                       ; preds = %if.end183
  %138 = load i32, ptr %nExtra.addr, align 4
  %add187 = add nsw i32 %138, 7
  %and188 = and i32 %add187, -8
  store i32 %and188, ptr %nExtra.addr, align 4
  %139 = load i32, ptr %szPageDflt, align 4
  %140 = load i32, ptr %nExtra.addr, align 4
  %141 = load i32, ptr %memDb, align 4
  %tobool189 = icmp ne i32 %141, 0
  %lnot = xor i1 %tobool189, true
  %lnot.ext = zext i1 %lnot to i32
  %142 = load i32, ptr %memDb, align 4
  %tobool190 = icmp ne i32 %142, 0
  %lnot191 = xor i1 %tobool190, true
  %143 = zext i1 %lnot191 to i64
  %cond = select i1 %lnot191, ptr @pagerStress, ptr null
  %144 = load ptr, ptr %pPager, align 8
  %145 = load ptr, ptr %pPager, align 8
  %pPCache193 = getelementptr inbounds nuw %struct.Pager, ptr %145, i32 0, i32 58
  %146 = load ptr, ptr %pPCache193, align 8
  %call194 = call i32 @sqlite3PcacheOpen(i32 noundef %139, i32 noundef %140, i32 noundef %lnot.ext, ptr noundef %cond, ptr noundef %144, ptr noundef %146)
  store i32 %call194, ptr %rc, align 4
  br label %if.end195

if.end195:                                        ; preds = %if.then186, %if.end183
  %147 = load i32, ptr %rc, align 4
  %cmp196 = icmp ne i32 %147, 0
  br i1 %cmp196, label %if.then198, label %if.end200

if.then198:                                       ; preds = %if.end195
  %148 = load ptr, ptr %pPager, align 8
  %fd199 = getelementptr inbounds nuw %struct.Pager, ptr %148, i32 0, i32 30
  %149 = load ptr, ptr %fd199, align 8
  call void @sqlite3OsClose(ptr noundef %149)
  %150 = load ptr, ptr %pPager, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %150, i32 0, i32 57
  %151 = load ptr, ptr %pTmpSpace, align 8
  call void @sqlite3PageFree(ptr noundef %151)
  %152 = load ptr, ptr %pPager, align 8
  call void @sqlite3_free(ptr noundef %152)
  %153 = load i32, ptr %rc, align 4
  store i32 %153, ptr %retval, align 4
  br label %return

if.end200:                                        ; preds = %if.end195
  %154 = load i32, ptr %useJournal, align 4
  %conv201 = trunc i32 %154 to i8
  %155 = load ptr, ptr %pPager, align 8
  %useJournal202 = getelementptr inbounds nuw %struct.Pager, ptr %155, i32 0, i32 3
  store i8 %conv201, ptr %useJournal202, align 2
  %156 = load ptr, ptr %pPager, align 8
  %mxPgno = getelementptr inbounds nuw %struct.Pager, ptr %156, i32 0, i32 48
  store i32 1073741823, ptr %mxPgno, align 8
  %157 = load i32, ptr %tempFile, align 4
  %conv203 = trunc i32 %157 to i8
  %158 = load ptr, ptr %pPager, align 8
  %tempFile204 = getelementptr inbounds nuw %struct.Pager, ptr %158, i32 0, i32 9
  store i8 %conv203, ptr %tempFile204, align 8
  %159 = load i32, ptr %tempFile, align 4
  %conv205 = trunc i32 %159 to i8
  %160 = load ptr, ptr %pPager, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %160, i32 0, i32 1
  store i8 %conv205, ptr %exclusiveMode, align 8
  %161 = load ptr, ptr %pPager, align 8
  %tempFile206 = getelementptr inbounds nuw %struct.Pager, ptr %161, i32 0, i32 9
  %162 = load i8, ptr %tempFile206, align 8
  %163 = load ptr, ptr %pPager, align 8
  %changeCountDone = getelementptr inbounds nuw %struct.Pager, ptr %163, i32 0, i32 15
  store i8 %162, ptr %changeCountDone, align 2
  %164 = load i32, ptr %memDb, align 4
  %conv207 = trunc i32 %164 to i8
  %165 = load ptr, ptr %pPager, align 8
  %memDb208 = getelementptr inbounds nuw %struct.Pager, ptr %165, i32 0, i32 12
  store i8 %conv207, ptr %memDb208, align 1
  %166 = load i32, ptr %readOnly, align 4
  %conv209 = trunc i32 %166 to i8
  %167 = load ptr, ptr %pPager, align 8
  %readOnly210 = getelementptr inbounds nuw %struct.Pager, ptr %167, i32 0, i32 11
  store i8 %conv209, ptr %readOnly210, align 2
  %168 = load ptr, ptr %pPager, align 8
  %tempFile211 = getelementptr inbounds nuw %struct.Pager, ptr %168, i32 0, i32 9
  %169 = load i8, ptr %tempFile211, align 8
  %170 = load ptr, ptr %pPager, align 8
  %noSync = getelementptr inbounds nuw %struct.Pager, ptr %170, i32 0, i32 4
  store i8 %169, ptr %noSync, align 1
  %171 = load ptr, ptr %pPager, align 8
  %noSync212 = getelementptr inbounds nuw %struct.Pager, ptr %171, i32 0, i32 4
  %172 = load i8, ptr %noSync212, align 1
  %tobool213 = icmp ne i8 %172, 0
  br i1 %tobool213, label %if.then214, label %if.else215

if.then214:                                       ; preds = %if.end200
  br label %if.end216

if.else215:                                       ; preds = %if.end200
  %173 = load ptr, ptr %pPager, align 8
  %fullSync = getelementptr inbounds nuw %struct.Pager, ptr %173, i32 0, i32 5
  store i8 1, ptr %fullSync, align 4
  %174 = load ptr, ptr %pPager, align 8
  %extraSync = getelementptr inbounds nuw %struct.Pager, ptr %174, i32 0, i32 6
  store i8 0, ptr %extraSync, align 1
  %175 = load ptr, ptr %pPager, align 8
  %syncFlags = getelementptr inbounds nuw %struct.Pager, ptr %175, i32 0, i32 7
  store i8 2, ptr %syncFlags, align 2
  %176 = load ptr, ptr %pPager, align 8
  %walSyncFlags = getelementptr inbounds nuw %struct.Pager, ptr %176, i32 0, i32 8
  store i8 10, ptr %walSyncFlags, align 1
  br label %if.end216

if.end216:                                        ; preds = %if.else215, %if.then214
  %177 = load i32, ptr %nExtra.addr, align 4
  %conv217 = trunc i32 %177 to i16
  %178 = load ptr, ptr %pPager, align 8
  %nExtra218 = getelementptr inbounds nuw %struct.Pager, ptr %178, i32 0, i32 43
  store i16 %conv217, ptr %nExtra218, align 8
  %179 = load ptr, ptr %pPager, align 8
  %journalSizeLimit = getelementptr inbounds nuw %struct.Pager, ptr %179, i32 0, i32 49
  store i64 -1, ptr %journalSizeLimit, align 8
  %180 = load ptr, ptr %pPager, align 8
  call void @setSectorSize(ptr noundef %180)
  %181 = load i32, ptr %useJournal, align 4
  %tobool219 = icmp ne i32 %181, 0
  br i1 %tobool219, label %if.else221, label %if.then220

if.then220:                                       ; preds = %if.end216
  %182 = load ptr, ptr %pPager, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %182, i32 0, i32 2
  store i8 2, ptr %journalMode, align 1
  br label %if.end226

if.else221:                                       ; preds = %if.end216
  %183 = load i32, ptr %memDb, align 4
  %tobool222 = icmp ne i32 %183, 0
  br i1 %tobool222, label %if.then223, label %if.end225

if.then223:                                       ; preds = %if.else221
  %184 = load ptr, ptr %pPager, align 8
  %journalMode224 = getelementptr inbounds nuw %struct.Pager, ptr %184, i32 0, i32 2
  store i8 4, ptr %journalMode224, align 1
  br label %if.end225

if.end225:                                        ; preds = %if.then223, %if.else221
  br label %if.end226

if.end226:                                        ; preds = %if.end225, %if.then220
  %185 = load ptr, ptr %xReinit.addr, align 8
  %186 = load ptr, ptr %pPager, align 8
  %xReiniter = getelementptr inbounds nuw %struct.Pager, ptr %186, i32 0, i32 55
  store ptr %185, ptr %xReiniter, align 8
  %187 = load ptr, ptr %pPager, align 8
  call void @setGetterMethod(ptr noundef %187)
  %188 = load ptr, ptr %pPager, align 8
  %189 = load ptr, ptr %ppPager.addr, align 8
  store ptr %188, ptr %189, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end226, %if.then198, %if.then84, %if.then55, %if.then26, %if.then11
  %190 = load i32, ptr %retval, align 4
  ret i32 %190
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetPagesize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheSize() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JournalSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDeviceCharacteristics(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setSectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PcacheOpen(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerStress(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PageFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setGetterMethod(ptr noundef) #0

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
