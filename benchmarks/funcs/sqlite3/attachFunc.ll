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
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.329 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.334 = external hidden unnamed_addr constant [68 x i8], align 1
@.str.885 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.886 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.887 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.888 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_code(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbStrDup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Init(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbRealloc(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeOpen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSetPagerFlags(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeSecureDelete(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerLockingMode(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @attachFunc(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %db = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %flags = alloca i32, align 4
  %aNew = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %zErrDyn = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %z = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %iDb121 = alloca i32, align 4
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_context_db_handle(ptr noundef %0)
  store ptr %call, ptr %db, align 8
  store ptr null, ptr %zPath, align 8
  store ptr null, ptr %zErr, align 8
  store ptr null, ptr %zErrDyn, align 8
  %1 = load i32, ptr %NotUsed.addr, align 4
  %2 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @sqlite3_value_text(ptr noundef %3)
  store ptr %call1, ptr %zFile, align 8
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @sqlite3_value_text(ptr noundef %5)
  store ptr %call3, ptr %zName, align 8
  %6 = load ptr, ptr %zFile, align 8
  %cmp = icmp eq ptr %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str.3, ptr %zFile, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %zName, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store ptr @.str.3, ptr %zName, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %8 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 5
  %9 = load i32, ptr %nDb, align 8
  %10 = load ptr, ptr %db, align 8
  %aLimit = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 33
  %arrayidx7 = getelementptr inbounds [12 x i32], ptr %aLimit, i64 0, i64 7
  %11 = load i32, ptr %arrayidx7, align 4
  %add = add nsw i32 %11, 2
  %cmp8 = icmp sge i32 %9, %add
  br i1 %cmp8, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end6
  %12 = load ptr, ptr %db, align 8
  %13 = load ptr, ptr %db, align 8
  %aLimit10 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 33
  %arrayidx11 = getelementptr inbounds [12 x i32], ptr %aLimit10, i64 0, i64 7
  %14 = load i32, ptr %arrayidx11, align 4
  %call12 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %12, ptr noundef @.str.885, i32 noundef %14)
  store ptr %call12, ptr %zErrDyn, align 8
  br label %attach_error

if.end13:                                         ; preds = %if.end6
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end13
  %15 = load i32, ptr %i, align 4
  %16 = load ptr, ptr %db, align 8
  %nDb14 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %nDb14, align 8
  %cmp15 = icmp slt i32 %15, %17
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %aDb, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds %struct.Db, ptr %19, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx16, i32 0, i32 0
  %21 = load ptr, ptr %zDbSName, align 8
  store ptr %21, ptr %z, align 8
  %22 = load ptr, ptr %z, align 8
  %23 = load ptr, ptr %zName, align 8
  %call17 = call i32 @sqlite3StrICmp(ptr noundef %22, ptr noundef %23)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %for.body
  %24 = load ptr, ptr %db, align 8
  %25 = load ptr, ptr %zName, align 8
  %call20 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %24, ptr noundef @.str.886, ptr noundef %25)
  store ptr %call20, ptr %zErrDyn, align 8
  br label %attach_error

if.end21:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %27 = load ptr, ptr %db, align 8
  %aDb22 = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %aDb22, align 8
  %29 = load ptr, ptr %db, align 8
  %aDbStatic = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 75
  %arraydecay = getelementptr inbounds [2 x %struct.Db], ptr %aDbStatic, i64 0, i64 0
  %cmp23 = icmp eq ptr %28, %arraydecay
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %for.end
  %30 = load ptr, ptr %db, align 8
  %call25 = call ptr @sqlite3DbMallocRawNN(ptr noundef %30, i64 noundef 96)
  store ptr %call25, ptr %aNew, align 8
  %31 = load ptr, ptr %aNew, align 8
  %cmp26 = icmp eq ptr %31, null
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  br label %if.end163

if.end28:                                         ; preds = %if.then24
  %32 = load ptr, ptr %aNew, align 8
  %33 = load ptr, ptr %db, align 8
  %aDb29 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %aDb29, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %32, ptr align 8 %34, i64 64, i1 false)
  br label %if.end38

if.else:                                          ; preds = %for.end
  %35 = load ptr, ptr %db, align 8
  %36 = load ptr, ptr %db, align 8
  %aDb30 = getelementptr inbounds nuw %struct.sqlite3, ptr %36, i32 0, i32 4
  %37 = load ptr, ptr %aDb30, align 8
  %38 = load ptr, ptr %db, align 8
  %nDb31 = getelementptr inbounds nuw %struct.sqlite3, ptr %38, i32 0, i32 5
  %39 = load i32, ptr %nDb31, align 8
  %add32 = add nsw i32 %39, 1
  %conv = sext i32 %add32 to i64
  %mul = mul i64 32, %conv
  %call33 = call ptr @sqlite3DbRealloc(ptr noundef %35, ptr noundef %37, i64 noundef %mul)
  store ptr %call33, ptr %aNew, align 8
  %40 = load ptr, ptr %aNew, align 8
  %cmp34 = icmp eq ptr %40, null
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else
  br label %if.end163

if.end37:                                         ; preds = %if.else
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end28
  %41 = load ptr, ptr %aNew, align 8
  %42 = load ptr, ptr %db, align 8
  %aDb39 = getelementptr inbounds nuw %struct.sqlite3, ptr %42, i32 0, i32 4
  store ptr %41, ptr %aDb39, align 8
  %43 = load ptr, ptr %db, align 8
  %aDb40 = getelementptr inbounds nuw %struct.sqlite3, ptr %43, i32 0, i32 4
  %44 = load ptr, ptr %aDb40, align 8
  %45 = load ptr, ptr %db, align 8
  %nDb41 = getelementptr inbounds nuw %struct.sqlite3, ptr %45, i32 0, i32 5
  %46 = load i32, ptr %nDb41, align 8
  %idxprom42 = sext i32 %46 to i64
  %arrayidx43 = getelementptr inbounds %struct.Db, ptr %44, i64 %idxprom42
  store ptr %arrayidx43, ptr %pNew, align 8
  %47 = load ptr, ptr %pNew, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %47, i8 0, i64 32, i1 false)
  %48 = load ptr, ptr %db, align 8
  %openFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %48, i32 0, i32 11
  %49 = load i32, ptr %openFlags, align 4
  store i32 %49, ptr %flags, align 4
  %50 = load ptr, ptr %db, align 8
  %pVfs44 = getelementptr inbounds nuw %struct.sqlite3, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %pVfs44, align 8
  %zName45 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %51, i32 0, i32 4
  %52 = load ptr, ptr %zName45, align 8
  %53 = load ptr, ptr %zFile, align 8
  %call46 = call i32 @sqlite3ParseUri(ptr noundef %52, ptr noundef %53, ptr noundef %flags, ptr noundef %pVfs, ptr noundef %zPath, ptr noundef %zErr)
  store i32 %call46, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp47 = icmp ne i32 %54, 0
  br i1 %cmp47, label %if.then49, label %if.end54

if.then49:                                        ; preds = %if.end38
  %55 = load i32, ptr %rc, align 4
  %cmp50 = icmp eq i32 %55, 7
  br i1 %cmp50, label %if.then52, label %if.end53

if.then52:                                        ; preds = %if.then49
  %56 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %56)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.then49
  %57 = load ptr, ptr %context.addr, align 8
  %58 = load ptr, ptr %zErr, align 8
  call void @sqlite3_result_error(ptr noundef %57, ptr noundef %58, i32 noundef -1)
  %59 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %59)
  br label %if.end163

if.end54:                                         ; preds = %if.end38
  %60 = load i32, ptr %flags, align 4
  %or = or i32 %60, 256
  store i32 %or, ptr %flags, align 4
  %61 = load ptr, ptr %pVfs, align 8
  %62 = load ptr, ptr %zPath, align 8
  %63 = load ptr, ptr %db, align 8
  %64 = load ptr, ptr %pNew, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %64, i32 0, i32 1
  %65 = load i32, ptr %flags, align 4
  %call55 = call i32 @sqlite3BtreeOpen(ptr noundef %61, ptr noundef %62, ptr noundef %63, ptr noundef %pBt, i32 noundef 0, i32 noundef %65)
  store i32 %call55, ptr %rc, align 4
  %66 = load ptr, ptr %db, align 8
  %nDb56 = getelementptr inbounds nuw %struct.sqlite3, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %nDb56, align 8
  %inc57 = add nsw i32 %67, 1
  store i32 %inc57, ptr %nDb56, align 8
  %68 = load ptr, ptr %db, align 8
  %69 = load ptr, ptr %zName, align 8
  %call58 = call ptr @sqlite3DbStrDup(ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %pNew, align 8
  %zDbSName59 = getelementptr inbounds nuw %struct.Db, ptr %70, i32 0, i32 0
  store ptr %call58, ptr %zDbSName59, align 8
  %71 = load ptr, ptr %db, align 8
  %noSharedCache = getelementptr inbounds nuw %struct.sqlite3, ptr %71, i32 0, i32 27
  store i8 0, ptr %noSharedCache, align 1
  %72 = load i32, ptr %rc, align 4
  %cmp60 = icmp eq i32 %72, 19
  br i1 %cmp60, label %if.then62, label %if.else64

if.then62:                                        ; preds = %if.end54
  store i32 1, ptr %rc, align 4
  %73 = load ptr, ptr %db, align 8
  %call63 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %73, ptr noundef @.str.887)
  store ptr %call63, ptr %zErrDyn, align 8
  br label %if.end104

if.else64:                                        ; preds = %if.end54
  %74 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %74, 0
  br i1 %cmp65, label %if.then67, label %if.end103

if.then67:                                        ; preds = %if.else64
  %75 = load ptr, ptr %db, align 8
  %76 = load ptr, ptr %pNew, align 8
  %pBt68 = getelementptr inbounds nuw %struct.Db, ptr %76, i32 0, i32 1
  %77 = load ptr, ptr %pBt68, align 8
  %call69 = call ptr @sqlite3SchemaGet(ptr noundef %75, ptr noundef %77)
  %78 = load ptr, ptr %pNew, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %78, i32 0, i32 4
  store ptr %call69, ptr %pSchema, align 8
  %79 = load ptr, ptr %pNew, align 8
  %pSchema70 = getelementptr inbounds nuw %struct.Db, ptr %79, i32 0, i32 4
  %80 = load ptr, ptr %pSchema70, align 8
  %tobool = icmp ne ptr %80, null
  br i1 %tobool, label %if.else72, label %if.then71

if.then71:                                        ; preds = %if.then67
  store i32 7, ptr %rc, align 4
  br label %if.end85

if.else72:                                        ; preds = %if.then67
  %81 = load ptr, ptr %pNew, align 8
  %pSchema73 = getelementptr inbounds nuw %struct.Db, ptr %81, i32 0, i32 4
  %82 = load ptr, ptr %pSchema73, align 8
  %file_format = getelementptr inbounds nuw %struct.Schema, ptr %82, i32 0, i32 7
  %83 = load i8, ptr %file_format, align 8
  %conv74 = zext i8 %83 to i32
  %tobool75 = icmp ne i32 %conv74, 0
  br i1 %tobool75, label %land.lhs.true, label %if.end84

land.lhs.true:                                    ; preds = %if.else72
  %84 = load ptr, ptr %pNew, align 8
  %pSchema76 = getelementptr inbounds nuw %struct.Db, ptr %84, i32 0, i32 4
  %85 = load ptr, ptr %pSchema76, align 8
  %enc = getelementptr inbounds nuw %struct.Schema, ptr %85, i32 0, i32 8
  %86 = load i8, ptr %enc, align 1
  %conv77 = zext i8 %86 to i32
  %87 = load ptr, ptr %db, align 8
  %enc78 = getelementptr inbounds nuw %struct.sqlite3, ptr %87, i32 0, i32 16
  %88 = load i8, ptr %enc78, align 2
  %conv79 = zext i8 %88 to i32
  %cmp80 = icmp ne i32 %conv77, %conv79
  br i1 %cmp80, label %if.then82, label %if.end84

if.then82:                                        ; preds = %land.lhs.true
  %89 = load ptr, ptr %db, align 8
  %call83 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %89, ptr noundef @.str.334)
  store ptr %call83, ptr %zErrDyn, align 8
  store i32 1, ptr %rc, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.then82, %land.lhs.true, %if.else72
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.then71
  %90 = load ptr, ptr %pNew, align 8
  %pBt86 = getelementptr inbounds nuw %struct.Db, ptr %90, i32 0, i32 1
  %91 = load ptr, ptr %pBt86, align 8
  call void @sqlite3BtreeEnter(ptr noundef %91)
  %92 = load ptr, ptr %pNew, align 8
  %pBt87 = getelementptr inbounds nuw %struct.Db, ptr %92, i32 0, i32 1
  %93 = load ptr, ptr %pBt87, align 8
  %call88 = call ptr @sqlite3BtreePager(ptr noundef %93)
  store ptr %call88, ptr %pPager, align 8
  %94 = load ptr, ptr %pPager, align 8
  %95 = load ptr, ptr %db, align 8
  %dfltLockMode = getelementptr inbounds nuw %struct.sqlite3, ptr %95, i32 0, i32 21
  %96 = load i8, ptr %dfltLockMode, align 1
  %conv89 = zext i8 %96 to i32
  %call90 = call i32 @sqlite3PagerLockingMode(ptr noundef %94, i32 noundef %conv89)
  %97 = load ptr, ptr %pNew, align 8
  %pBt91 = getelementptr inbounds nuw %struct.Db, ptr %97, i32 0, i32 1
  %98 = load ptr, ptr %pBt91, align 8
  %99 = load ptr, ptr %db, align 8
  %aDb92 = getelementptr inbounds nuw %struct.sqlite3, ptr %99, i32 0, i32 4
  %100 = load ptr, ptr %aDb92, align 8
  %arrayidx93 = getelementptr inbounds %struct.Db, ptr %100, i64 0
  %pBt94 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx93, i32 0, i32 1
  %101 = load ptr, ptr %pBt94, align 8
  %call95 = call i32 @sqlite3BtreeSecureDelete(ptr noundef %101, i32 noundef -1)
  %call96 = call i32 @sqlite3BtreeSecureDelete(ptr noundef %98, i32 noundef %call95)
  %102 = load ptr, ptr %pNew, align 8
  %pBt97 = getelementptr inbounds nuw %struct.Db, ptr %102, i32 0, i32 1
  %103 = load ptr, ptr %pBt97, align 8
  %104 = load ptr, ptr %db, align 8
  %flags98 = getelementptr inbounds nuw %struct.sqlite3, ptr %104, i32 0, i32 7
  %105 = load i64, ptr %flags98, align 8
  %and = and i64 %105, 56
  %or99 = or i64 3, %and
  %conv100 = trunc i64 %or99 to i32
  %call101 = call i32 @sqlite3BtreeSetPagerFlags(ptr noundef %103, i32 noundef %conv100)
  %106 = load ptr, ptr %pNew, align 8
  %pBt102 = getelementptr inbounds nuw %struct.Db, ptr %106, i32 0, i32 1
  %107 = load ptr, ptr %pBt102, align 8
  call void @sqlite3BtreeLeave(ptr noundef %107)
  br label %if.end103

if.end103:                                        ; preds = %if.end85, %if.else64
  br label %if.end104

if.end104:                                        ; preds = %if.end103, %if.then62
  %108 = load ptr, ptr %pNew, align 8
  %safety_level = getelementptr inbounds nuw %struct.Db, ptr %108, i32 0, i32 2
  store i8 3, ptr %safety_level, align 8
  %109 = load i32, ptr %rc, align 4
  %cmp105 = icmp eq i32 %109, 0
  br i1 %cmp105, label %land.lhs.true107, label %if.end112

land.lhs.true107:                                 ; preds = %if.end104
  %110 = load ptr, ptr %pNew, align 8
  %zDbSName108 = getelementptr inbounds nuw %struct.Db, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %zDbSName108, align 8
  %cmp109 = icmp eq ptr %111, null
  br i1 %cmp109, label %if.then111, label %if.end112

if.then111:                                       ; preds = %land.lhs.true107
  store i32 7, ptr %rc, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.then111, %land.lhs.true107, %if.end104
  %112 = load ptr, ptr %zPath, align 8
  call void @sqlite3_free(ptr noundef %112)
  %113 = load i32, ptr %rc, align 4
  %cmp113 = icmp eq i32 %113, 0
  br i1 %cmp113, label %if.then115, label %if.end118

if.then115:                                       ; preds = %if.end112
  %114 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %114)
  %115 = load ptr, ptr %db, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %115, i32 0, i32 35
  %iDb = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 1
  store i8 0, ptr %iDb, align 4
  %116 = load ptr, ptr %db, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %116, i32 0, i32 6
  %117 = load i32, ptr %mDbFlags, align 4
  %and116 = and i32 %117, -17
  store i32 %and116, ptr %mDbFlags, align 4
  %118 = load ptr, ptr %db, align 8
  %call117 = call i32 @sqlite3Init(ptr noundef %118, ptr noundef %zErrDyn)
  store i32 %call117, ptr %rc, align 4
  %119 = load ptr, ptr %db, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %119)
  br label %if.end118

if.end118:                                        ; preds = %if.then115, %if.end112
  %120 = load i32, ptr %rc, align 4
  %tobool119 = icmp ne i32 %120, 0
  br i1 %tobool119, label %if.then120, label %if.end157

if.then120:                                       ; preds = %if.end118
  %121 = load ptr, ptr %db, align 8
  %nDb122 = getelementptr inbounds nuw %struct.sqlite3, ptr %121, i32 0, i32 5
  %122 = load i32, ptr %nDb122, align 8
  %sub = sub nsw i32 %122, 1
  store i32 %sub, ptr %iDb121, align 4
  %123 = load ptr, ptr %db, align 8
  %aDb123 = getelementptr inbounds nuw %struct.sqlite3, ptr %123, i32 0, i32 4
  %124 = load ptr, ptr %aDb123, align 8
  %125 = load i32, ptr %iDb121, align 4
  %idxprom124 = sext i32 %125 to i64
  %arrayidx125 = getelementptr inbounds %struct.Db, ptr %124, i64 %idxprom124
  %pBt126 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx125, i32 0, i32 1
  %126 = load ptr, ptr %pBt126, align 8
  %tobool127 = icmp ne ptr %126, null
  br i1 %tobool127, label %if.then128, label %if.end142

if.then128:                                       ; preds = %if.then120
  %127 = load ptr, ptr %db, align 8
  %aDb129 = getelementptr inbounds nuw %struct.sqlite3, ptr %127, i32 0, i32 4
  %128 = load ptr, ptr %aDb129, align 8
  %129 = load i32, ptr %iDb121, align 4
  %idxprom130 = sext i32 %129 to i64
  %arrayidx131 = getelementptr inbounds %struct.Db, ptr %128, i64 %idxprom130
  %pBt132 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx131, i32 0, i32 1
  %130 = load ptr, ptr %pBt132, align 8
  %call133 = call i32 @sqlite3BtreeClose(ptr noundef %130)
  %131 = load ptr, ptr %db, align 8
  %aDb134 = getelementptr inbounds nuw %struct.sqlite3, ptr %131, i32 0, i32 4
  %132 = load ptr, ptr %aDb134, align 8
  %133 = load i32, ptr %iDb121, align 4
  %idxprom135 = sext i32 %133 to i64
  %arrayidx136 = getelementptr inbounds %struct.Db, ptr %132, i64 %idxprom135
  %pBt137 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx136, i32 0, i32 1
  store ptr null, ptr %pBt137, align 8
  %134 = load ptr, ptr %db, align 8
  %aDb138 = getelementptr inbounds nuw %struct.sqlite3, ptr %134, i32 0, i32 4
  %135 = load ptr, ptr %aDb138, align 8
  %136 = load i32, ptr %iDb121, align 4
  %idxprom139 = sext i32 %136 to i64
  %arrayidx140 = getelementptr inbounds %struct.Db, ptr %135, i64 %idxprom139
  %pSchema141 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx140, i32 0, i32 4
  store ptr null, ptr %pSchema141, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.then128, %if.then120
  %137 = load ptr, ptr %db, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %137)
  %138 = load i32, ptr %iDb121, align 4
  %139 = load ptr, ptr %db, align 8
  %nDb143 = getelementptr inbounds nuw %struct.sqlite3, ptr %139, i32 0, i32 5
  store i32 %138, ptr %nDb143, align 8
  %140 = load i32, ptr %rc, align 4
  %cmp144 = icmp eq i32 %140, 7
  br i1 %cmp144, label %if.then148, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end142
  %141 = load i32, ptr %rc, align 4
  %cmp146 = icmp eq i32 %141, 3082
  br i1 %cmp146, label %if.then148, label %if.else150

if.then148:                                       ; preds = %lor.lhs.false, %if.end142
  %142 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %142)
  %143 = load ptr, ptr %db, align 8
  %144 = load ptr, ptr %zErrDyn, align 8
  call void @sqlite3DbFree(ptr noundef %143, ptr noundef %144)
  %145 = load ptr, ptr %db, align 8
  %call149 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %145, ptr noundef @.str.329)
  store ptr %call149, ptr %zErrDyn, align 8
  br label %if.end156

if.else150:                                       ; preds = %lor.lhs.false
  %146 = load ptr, ptr %zErrDyn, align 8
  %cmp151 = icmp eq ptr %146, null
  br i1 %cmp151, label %if.then153, label %if.end155

if.then153:                                       ; preds = %if.else150
  %147 = load ptr, ptr %db, align 8
  %148 = load ptr, ptr %zFile, align 8
  %call154 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %147, ptr noundef @.str.888, ptr noundef %148)
  store ptr %call154, ptr %zErrDyn, align 8
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %if.else150
  br label %if.end156

if.end156:                                        ; preds = %if.end155, %if.then148
  br label %attach_error

if.end157:                                        ; preds = %if.end118
  br label %if.end163

attach_error:                                     ; preds = %if.end156, %if.then19, %if.then9
  %149 = load ptr, ptr %zErrDyn, align 8
  %tobool158 = icmp ne ptr %149, null
  br i1 %tobool158, label %if.then159, label %if.end160

if.then159:                                       ; preds = %attach_error
  %150 = load ptr, ptr %context.addr, align 8
  %151 = load ptr, ptr %zErrDyn, align 8
  call void @sqlite3_result_error(ptr noundef %150, ptr noundef %151, i32 noundef -1)
  %152 = load ptr, ptr %db, align 8
  %153 = load ptr, ptr %zErrDyn, align 8
  call void @sqlite3DbFree(ptr noundef %152, ptr noundef %153)
  br label %if.end160

if.end160:                                        ; preds = %if.then159, %attach_error
  %154 = load i32, ptr %rc, align 4
  %tobool161 = icmp ne i32 %154, 0
  br i1 %tobool161, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.end160
  %155 = load ptr, ptr %context.addr, align 8
  %156 = load i32, ptr %rc, align 4
  call void @sqlite3_result_error_code(ptr noundef %155, i32 noundef %156)
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %if.end160, %if.end157, %if.end53, %if.then36, %if.then27
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ParseUri(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3SchemaGet(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
