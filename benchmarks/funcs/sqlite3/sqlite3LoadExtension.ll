; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_api_routines = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

@sqlite3UpperToLower = external hidden constant [256 x i8], align 16
@sqlite3CtypeMap = external hidden constant [256 x i8], align 16
@sqlite3LoadExtension.azEndings = external hidden global [1 x ptr], align 8
@.str.528 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.529 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.530 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.531 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.532 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.533 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.534 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.535 = external hidden unnamed_addr constant [43 x i8], align 1
@sqlite3Apis = external hidden constant %struct.sqlite3_api_routines, align 8
@.str.536 = external hidden unnamed_addr constant [32 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_strnicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3LoadExtension(ptr noundef %db, ptr noundef %zFile, ptr noundef %zProc, ptr noundef %pzErrMsg) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zFile.addr = alloca ptr, align 8
  %zProc.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %xInit = alloca ptr, align 8
  %zErrmsg = alloca ptr, align 8
  %zEntry = alloca ptr, align 8
  %zAltEntry = alloca ptr, align 8
  %aHandle = alloca ptr, align 8
  %nMsg = alloca i64, align 8
  %ii = alloca i32, align 4
  %rc = alloca i32, align 4
  %zAltFile = alloca ptr, align 8
  %iFile = alloca i32, align 4
  %iEntry = alloca i32, align 4
  %c = alloca i32, align 4
  %ncFile = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zFile, ptr %zFile.addr, align 8
  store ptr %zProc, ptr %zProc.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %pVfs1 = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs1, align 8
  store ptr %1, ptr %pVfs, align 8
  store ptr null, ptr %zErrmsg, align 8
  store ptr null, ptr %zAltEntry, align 8
  %2 = load ptr, ptr %zFile.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %2)
  %add = add nsw i32 300, %call
  %conv = sext i32 %add to i64
  store i64 %conv, ptr %nMsg, align 8
  %3 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr null, ptr %4, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 7
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 65536
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %if.then3, label %if.end8

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool4 = icmp ne ptr %7, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then3
  %call6 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.528)
  %8 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call6, ptr %8, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.then3
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %zProc.addr, align 8
  %tobool9 = icmp ne ptr %9, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end8
  %10 = load ptr, ptr %zProc.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ @.str.529, %cond.false ]
  store ptr %cond, ptr %zEntry, align 8
  %11 = load ptr, ptr %pVfs, align 8
  %12 = load ptr, ptr %zFile.addr, align 8
  %call10 = call ptr @sqlite3OsDlOpen(ptr noundef %11, ptr noundef %12)
  store ptr %call10, ptr %handle, align 8
  store i32 0, ptr %ii, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %13 = load i32, ptr %ii, align 4
  %cmp11 = icmp slt i32 %13, 1
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %14 = load ptr, ptr %handle, align 8
  %cmp13 = icmp eq ptr %14, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %15 = phi i1 [ false, %for.cond ], [ %cmp13, %land.rhs ]
  br i1 %15, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %16 = load ptr, ptr %zFile.addr, align 8
  %17 = load i32, ptr %ii, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds [1 x ptr], ptr @sqlite3LoadExtension.azEndings, i64 0, i64 %idxprom
  %18 = load ptr, ptr %arrayidx, align 8
  %call15 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.530, ptr noundef %16, ptr noundef %18)
  store ptr %call15, ptr %zAltFile, align 8
  %19 = load ptr, ptr %zAltFile, align 8
  %cmp16 = icmp eq ptr %19, null
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.body
  store i32 7, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %for.body
  %20 = load ptr, ptr %pVfs, align 8
  %21 = load ptr, ptr %zAltFile, align 8
  %call20 = call ptr @sqlite3OsDlOpen(ptr noundef %20, ptr noundef %21)
  store ptr %call20, ptr %handle, align 8
  %22 = load ptr, ptr %zAltFile, align 8
  call void @sqlite3_free(ptr noundef %22)
  br label %for.inc

for.inc:                                          ; preds = %if.end19
  %23 = load i32, ptr %ii, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, ptr %ii, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %24 = load ptr, ptr %handle, align 8
  %cmp21 = icmp eq ptr %24, null
  br i1 %cmp21, label %if.then23, label %if.end34

if.then23:                                        ; preds = %for.end
  %25 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool24 = icmp ne ptr %25, null
  br i1 %tobool24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.then23
  %26 = load i64, ptr %nMsg, align 8
  %call26 = call ptr @sqlite3_malloc64(i64 noundef %26)
  store ptr %call26, ptr %zErrmsg, align 8
  %27 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call26, ptr %27, align 8
  %28 = load ptr, ptr %zErrmsg, align 8
  %tobool27 = icmp ne ptr %28, null
  br i1 %tobool27, label %if.then28, label %if.end32

if.then28:                                        ; preds = %if.then25
  %29 = load i64, ptr %nMsg, align 8
  %conv29 = trunc i64 %29 to i32
  %30 = load ptr, ptr %zErrmsg, align 8
  %31 = load ptr, ptr %zFile.addr, align 8
  %call30 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %conv29, ptr noundef %30, ptr noundef @.str.531, ptr noundef %31)
  %32 = load ptr, ptr %pVfs, align 8
  %33 = load i64, ptr %nMsg, align 8
  %sub = sub i64 %33, 1
  %conv31 = trunc i64 %sub to i32
  %34 = load ptr, ptr %zErrmsg, align 8
  call void @sqlite3OsDlError(ptr noundef %32, i32 noundef %conv31, ptr noundef %34)
  br label %if.end32

if.end32:                                         ; preds = %if.then28, %if.then25
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then23
  store i32 1, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %for.end
  %35 = load ptr, ptr %pVfs, align 8
  %36 = load ptr, ptr %handle, align 8
  %37 = load ptr, ptr %zEntry, align 8
  %call35 = call ptr @sqlite3OsDlSym(ptr noundef %35, ptr noundef %36, ptr noundef %37)
  store ptr %call35, ptr %xInit, align 8
  %38 = load ptr, ptr %xInit, align 8
  %cmp36 = icmp eq ptr %38, null
  br i1 %cmp36, label %land.lhs.true, label %if.end100

land.lhs.true:                                    ; preds = %if.end34
  %39 = load ptr, ptr %zProc.addr, align 8
  %cmp38 = icmp eq ptr %39, null
  br i1 %cmp38, label %if.then40, label %if.end100

if.then40:                                        ; preds = %land.lhs.true
  %40 = load ptr, ptr %zFile.addr, align 8
  %call41 = call i32 @sqlite3Strlen30(ptr noundef %40)
  store i32 %call41, ptr %ncFile, align 4
  %41 = load i32, ptr %ncFile, align 4
  %add42 = add nsw i32 %41, 30
  %conv43 = sext i32 %add42 to i64
  %call44 = call ptr @sqlite3_malloc64(i64 noundef %conv43)
  store ptr %call44, ptr %zAltEntry, align 8
  %42 = load ptr, ptr %zAltEntry, align 8
  %cmp45 = icmp eq ptr %42, null
  br i1 %cmp45, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.then40
  %43 = load ptr, ptr %pVfs, align 8
  %44 = load ptr, ptr %handle, align 8
  call void @sqlite3OsDlClose(ptr noundef %43, ptr noundef %44)
  store i32 7, ptr %retval, align 4
  br label %return

if.end48:                                         ; preds = %if.then40
  %45 = load ptr, ptr %zAltEntry, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 @.str.532, i64 8, i1 false)
  %46 = load i32, ptr %ncFile, align 4
  %sub49 = sub nsw i32 %46, 1
  store i32 %sub49, ptr %iFile, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc61, %if.end48
  %47 = load i32, ptr %iFile, align 4
  %cmp51 = icmp sge i32 %47, 0
  br i1 %cmp51, label %land.rhs53, label %land.end59

land.rhs53:                                       ; preds = %for.cond50
  %48 = load ptr, ptr %zFile.addr, align 8
  %49 = load i32, ptr %iFile, align 4
  %idxprom54 = sext i32 %49 to i64
  %arrayidx55 = getelementptr inbounds i8, ptr %48, i64 %idxprom54
  %50 = load i8, ptr %arrayidx55, align 1
  %conv56 = sext i8 %50 to i32
  %cmp57 = icmp ne i32 %conv56, 47
  br label %land.end59

land.end59:                                       ; preds = %land.rhs53, %for.cond50
  %51 = phi i1 [ false, %for.cond50 ], [ %cmp57, %land.rhs53 ]
  br i1 %51, label %for.body60, label %for.end62

for.body60:                                       ; preds = %land.end59
  br label %for.inc61

for.inc61:                                        ; preds = %for.body60
  %52 = load i32, ptr %iFile, align 4
  %dec = add nsw i32 %52, -1
  store i32 %dec, ptr %iFile, align 4
  br label %for.cond50, !llvm.loop !8

for.end62:                                        ; preds = %land.end59
  %53 = load i32, ptr %iFile, align 4
  %inc63 = add nsw i32 %53, 1
  store i32 %inc63, ptr %iFile, align 4
  %54 = load ptr, ptr %zFile.addr, align 8
  %55 = load i32, ptr %iFile, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, ptr %54, i64 %idx.ext
  %call64 = call i32 @sqlite3_strnicmp(ptr noundef %add.ptr, ptr noundef @.str.533, i32 noundef 3)
  %cmp65 = icmp eq i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end62
  %56 = load i32, ptr %iFile, align 4
  %add68 = add nsw i32 %56, 3
  store i32 %add68, ptr %iFile, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.end62
  store i32 8, ptr %iEntry, align 4
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc94, %if.end69
  %57 = load ptr, ptr %zFile.addr, align 8
  %58 = load i32, ptr %iFile, align 4
  %idxprom71 = sext i32 %58 to i64
  %arrayidx72 = getelementptr inbounds i8, ptr %57, i64 %idxprom71
  %59 = load i8, ptr %arrayidx72, align 1
  %conv73 = sext i8 %59 to i32
  store i32 %conv73, ptr %c, align 4
  %cmp74 = icmp ne i32 %conv73, 0
  br i1 %cmp74, label %land.rhs76, label %land.end79

land.rhs76:                                       ; preds = %for.cond70
  %60 = load i32, ptr %c, align 4
  %cmp77 = icmp ne i32 %60, 46
  br label %land.end79

land.end79:                                       ; preds = %land.rhs76, %for.cond70
  %61 = phi i1 [ false, %for.cond70 ], [ %cmp77, %land.rhs76 ]
  br i1 %61, label %for.body80, label %for.end96

for.body80:                                       ; preds = %land.end79
  %62 = load i32, ptr %c, align 4
  %conv81 = trunc i32 %62 to i8
  %idxprom82 = zext i8 %conv81 to i64
  %arrayidx83 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3CtypeMap, i64 0, i64 %idxprom82
  %63 = load i8, ptr %arrayidx83, align 1
  %conv84 = zext i8 %63 to i32
  %and85 = and i32 %conv84, 2
  %tobool86 = icmp ne i32 %and85, 0
  br i1 %tobool86, label %if.then87, label %if.end93

if.then87:                                        ; preds = %for.body80
  %64 = load i32, ptr %c, align 4
  %idxprom88 = zext i32 %64 to i64
  %arrayidx89 = getelementptr inbounds nuw [256 x i8], ptr @sqlite3UpperToLower, i64 0, i64 %idxprom88
  %65 = load i8, ptr %arrayidx89, align 1
  %66 = load ptr, ptr %zAltEntry, align 8
  %67 = load i32, ptr %iEntry, align 4
  %inc90 = add nsw i32 %67, 1
  store i32 %inc90, ptr %iEntry, align 4
  %idxprom91 = sext i32 %67 to i64
  %arrayidx92 = getelementptr inbounds i8, ptr %66, i64 %idxprom91
  store i8 %65, ptr %arrayidx92, align 1
  br label %if.end93

if.end93:                                         ; preds = %if.then87, %for.body80
  br label %for.inc94

for.inc94:                                        ; preds = %if.end93
  %68 = load i32, ptr %iFile, align 4
  %inc95 = add nsw i32 %68, 1
  store i32 %inc95, ptr %iFile, align 4
  br label %for.cond70, !llvm.loop !9

for.end96:                                        ; preds = %land.end79
  %69 = load ptr, ptr %zAltEntry, align 8
  %70 = load i32, ptr %iEntry, align 4
  %idx.ext97 = sext i32 %70 to i64
  %add.ptr98 = getelementptr inbounds i8, ptr %69, i64 %idx.ext97
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr98, ptr align 1 @.str.534, i64 6, i1 false)
  %71 = load ptr, ptr %zAltEntry, align 8
  store ptr %71, ptr %zEntry, align 8
  %72 = load ptr, ptr %pVfs, align 8
  %73 = load ptr, ptr %handle, align 8
  %74 = load ptr, ptr %zEntry, align 8
  %call99 = call ptr @sqlite3OsDlSym(ptr noundef %72, ptr noundef %73, ptr noundef %74)
  store ptr %call99, ptr %xInit, align 8
  br label %if.end100

if.end100:                                        ; preds = %for.end96, %land.lhs.true, %if.end34
  %75 = load ptr, ptr %xInit, align 8
  %cmp101 = icmp eq ptr %75, null
  br i1 %cmp101, label %if.then103, label %if.end118

if.then103:                                       ; preds = %if.end100
  %76 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool104 = icmp ne ptr %76, null
  br i1 %tobool104, label %if.then105, label %if.end117

if.then105:                                       ; preds = %if.then103
  %77 = load ptr, ptr %zEntry, align 8
  %call106 = call i32 @sqlite3Strlen30(ptr noundef %77)
  %conv107 = sext i32 %call106 to i64
  %78 = load i64, ptr %nMsg, align 8
  %add108 = add i64 %78, %conv107
  store i64 %add108, ptr %nMsg, align 8
  %79 = load i64, ptr %nMsg, align 8
  %call109 = call ptr @sqlite3_malloc64(i64 noundef %79)
  store ptr %call109, ptr %zErrmsg, align 8
  %80 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call109, ptr %80, align 8
  %81 = load ptr, ptr %zErrmsg, align 8
  %tobool110 = icmp ne ptr %81, null
  br i1 %tobool110, label %if.then111, label %if.end116

if.then111:                                       ; preds = %if.then105
  %82 = load i64, ptr %nMsg, align 8
  %conv112 = trunc i64 %82 to i32
  %83 = load ptr, ptr %zErrmsg, align 8
  %84 = load ptr, ptr %zEntry, align 8
  %85 = load ptr, ptr %zFile.addr, align 8
  %call113 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %conv112, ptr noundef %83, ptr noundef @.str.535, ptr noundef %84, ptr noundef %85)
  %86 = load ptr, ptr %pVfs, align 8
  %87 = load i64, ptr %nMsg, align 8
  %sub114 = sub i64 %87, 1
  %conv115 = trunc i64 %sub114 to i32
  %88 = load ptr, ptr %zErrmsg, align 8
  call void @sqlite3OsDlError(ptr noundef %86, i32 noundef %conv115, ptr noundef %88)
  br label %if.end116

if.end116:                                        ; preds = %if.then111, %if.then105
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %if.then103
  %89 = load ptr, ptr %pVfs, align 8
  %90 = load ptr, ptr %handle, align 8
  call void @sqlite3OsDlClose(ptr noundef %89, ptr noundef %90)
  %91 = load ptr, ptr %zAltEntry, align 8
  call void @sqlite3_free(ptr noundef %91)
  store i32 1, ptr %retval, align 4
  br label %return

if.end118:                                        ; preds = %if.end100
  %92 = load ptr, ptr %zAltEntry, align 8
  call void @sqlite3_free(ptr noundef %92)
  %93 = load ptr, ptr %xInit, align 8
  %94 = load ptr, ptr %db.addr, align 8
  %call119 = call i32 %93(ptr noundef %94, ptr noundef %zErrmsg, ptr noundef @sqlite3Apis)
  store i32 %call119, ptr %rc, align 4
  %95 = load i32, ptr %rc, align 4
  %tobool120 = icmp ne i32 %95, 0
  br i1 %tobool120, label %if.then121, label %if.end130

if.then121:                                       ; preds = %if.end118
  %96 = load i32, ptr %rc, align 4
  %cmp122 = icmp eq i32 %96, 256
  br i1 %cmp122, label %if.then124, label %if.end125

if.then124:                                       ; preds = %if.then121
  store i32 0, ptr %retval, align 4
  br label %return

if.end125:                                        ; preds = %if.then121
  %97 = load ptr, ptr %pzErrMsg.addr, align 8
  %tobool126 = icmp ne ptr %97, null
  br i1 %tobool126, label %if.then127, label %if.end129

if.then127:                                       ; preds = %if.end125
  %98 = load ptr, ptr %zErrmsg, align 8
  %call128 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.536, ptr noundef %98)
  %99 = load ptr, ptr %pzErrMsg.addr, align 8
  store ptr %call128, ptr %99, align 8
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %if.end125
  %100 = load ptr, ptr %zErrmsg, align 8
  call void @sqlite3_free(ptr noundef %100)
  %101 = load ptr, ptr %pVfs, align 8
  %102 = load ptr, ptr %handle, align 8
  call void @sqlite3OsDlClose(ptr noundef %101, ptr noundef %102)
  store i32 1, ptr %retval, align 4
  br label %return

if.end130:                                        ; preds = %if.end118
  %103 = load ptr, ptr %db.addr, align 8
  %104 = load ptr, ptr %db.addr, align 8
  %nExtension = getelementptr inbounds nuw %struct.sqlite3, ptr %104, i32 0, i32 41
  %105 = load i32, ptr %nExtension, align 4
  %add131 = add nsw i32 %105, 1
  %conv132 = sext i32 %add131 to i64
  %mul = mul i64 8, %conv132
  %call133 = call ptr @sqlite3DbMallocZero(ptr noundef %103, i64 noundef %mul)
  store ptr %call133, ptr %aHandle, align 8
  %106 = load ptr, ptr %aHandle, align 8
  %cmp134 = icmp eq ptr %106, null
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end130
  store i32 7, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end130
  %107 = load ptr, ptr %db.addr, align 8
  %nExtension138 = getelementptr inbounds nuw %struct.sqlite3, ptr %107, i32 0, i32 41
  %108 = load i32, ptr %nExtension138, align 4
  %cmp139 = icmp sgt i32 %108, 0
  br i1 %cmp139, label %if.then141, label %if.end145

if.then141:                                       ; preds = %if.end137
  %109 = load ptr, ptr %aHandle, align 8
  %110 = load ptr, ptr %db.addr, align 8
  %aExtension = getelementptr inbounds nuw %struct.sqlite3, ptr %110, i32 0, i32 42
  %111 = load ptr, ptr %aExtension, align 8
  %112 = load ptr, ptr %db.addr, align 8
  %nExtension142 = getelementptr inbounds nuw %struct.sqlite3, ptr %112, i32 0, i32 41
  %113 = load i32, ptr %nExtension142, align 4
  %conv143 = sext i32 %113 to i64
  %mul144 = mul i64 8, %conv143
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %109, ptr align 8 %111, i64 %mul144, i1 false)
  br label %if.end145

if.end145:                                        ; preds = %if.then141, %if.end137
  %114 = load ptr, ptr %db.addr, align 8
  %115 = load ptr, ptr %db.addr, align 8
  %aExtension146 = getelementptr inbounds nuw %struct.sqlite3, ptr %115, i32 0, i32 42
  %116 = load ptr, ptr %aExtension146, align 8
  call void @sqlite3DbFree(ptr noundef %114, ptr noundef %116)
  %117 = load ptr, ptr %aHandle, align 8
  %118 = load ptr, ptr %db.addr, align 8
  %aExtension147 = getelementptr inbounds nuw %struct.sqlite3, ptr %118, i32 0, i32 42
  store ptr %117, ptr %aExtension147, align 8
  %119 = load ptr, ptr %handle, align 8
  %120 = load ptr, ptr %db.addr, align 8
  %aExtension148 = getelementptr inbounds nuw %struct.sqlite3, ptr %120, i32 0, i32 42
  %121 = load ptr, ptr %aExtension148, align 8
  %122 = load ptr, ptr %db.addr, align 8
  %nExtension149 = getelementptr inbounds nuw %struct.sqlite3, ptr %122, i32 0, i32 41
  %123 = load i32, ptr %nExtension149, align 4
  %inc150 = add nsw i32 %123, 1
  store i32 %inc150, ptr %nExtension149, align 4
  %idxprom151 = sext i32 %123 to i64
  %arrayidx152 = getelementptr inbounds ptr, ptr %121, i64 %idxprom151
  store ptr %119, ptr %arrayidx152, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end145, %if.then136, %if.end129, %if.then124, %if.end117, %if.then47, %if.end33, %if.then18, %if.end7
  %124 = load i32, ptr %retval, align 4
  ret i32 %124
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3OsDlOpen(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsDlError(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3OsDlSym(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsDlClose(ptr noundef, ptr noundef) #0

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
