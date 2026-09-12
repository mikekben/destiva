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

@vdbeCommit.aMJNeeded = external hidden constant [6 x i8], align 1
@.str.107 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.108 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.109 = external hidden unnamed_addr constant [15 x i8], align 1
@.str.110 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGetJournalMode(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsWrite(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommitPhaseOne(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeGetFilename(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDeviceCharacteristics(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerExclusiveLock(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerIsMemdb(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeCommit(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %nTrans = alloca i32, align 4
  %rc = alloca i32, align 4
  %needXcommit = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  %pBt56 = alloca ptr, align 8
  %pBt77 = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %zMaster = alloca ptr, align 8
  %zMainFile = alloca ptr, align 8
  %pMaster = alloca ptr, align 8
  %offset = alloca i64, align 8
  %res = alloca i32, align 4
  %retryCount = alloca i32, align 4
  %nMainFile = alloca i32, align 4
  %iRandom = alloca i32, align 4
  %pBt143 = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %pBt191 = alloca ptr, align 8
  %pBt216 = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 0, ptr %nTrans, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %needXcommit, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %p.addr, align 8
  %call = call i32 @sqlite3VtabSync(ptr noundef %0, ptr noundef %1)
  store i32 %call, ptr %rc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %4 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %nDb, align 8
  %cmp1 = icmp slt i32 %3, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %7 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb, align 8
  %9 = load i32, ptr %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %8, i64 %idxprom
  %pBt2 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %10 = load ptr, ptr %pBt2, align 8
  store ptr %10, ptr %pBt, align 8
  %11 = load ptr, ptr %pBt, align 8
  %call3 = call i32 @sqlite3BtreeIsInTrans(ptr noundef %11)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end21

if.then:                                          ; preds = %for.body
  store i32 1, ptr %needXcommit, align 4
  %12 = load ptr, ptr %pBt, align 8
  call void @sqlite3BtreeEnter(ptr noundef %12)
  %13 = load ptr, ptr %pBt, align 8
  %call4 = call ptr @sqlite3BtreePager(ptr noundef %13)
  store ptr %call4, ptr %pPager, align 8
  %14 = load ptr, ptr %db.addr, align 8
  %aDb5 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %aDb5, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds %struct.Db, ptr %15, i64 %idxprom6
  %safety_level = getelementptr inbounds nuw %struct.Db, ptr %arrayidx7, i32 0, i32 2
  %17 = load i8, ptr %safety_level, align 8
  %conv = zext i8 %17 to i32
  %cmp8 = icmp ne i32 %conv, 1
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %18 = load ptr, ptr %pPager, align 8
  %call10 = call i32 @sqlite3PagerGetJournalMode(ptr noundef %18)
  %idxprom11 = sext i32 %call10 to i64
  %arrayidx12 = getelementptr inbounds [6 x i8], ptr @vdbeCommit.aMJNeeded, i64 0, i64 %idxprom11
  %19 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %19 to i32
  %tobool14 = icmp ne i32 %conv13, 0
  br i1 %tobool14, label %land.lhs.true15, label %if.end

land.lhs.true15:                                  ; preds = %land.lhs.true
  %20 = load ptr, ptr %pPager, align 8
  %call16 = call i32 @sqlite3PagerIsMemdb(ptr noundef %20)
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then19, label %if.end

if.then19:                                        ; preds = %land.lhs.true15
  %21 = load i32, ptr %nTrans, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %nTrans, align 4
  br label %if.end

if.end:                                           ; preds = %if.then19, %land.lhs.true15, %land.lhs.true, %if.then
  %22 = load ptr, ptr %pPager, align 8
  %call20 = call i32 @sqlite3PagerExclusiveLock(ptr noundef %22)
  store i32 %call20, ptr %rc, align 4
  %23 = load ptr, ptr %pBt, align 8
  call void @sqlite3BtreeLeave(ptr noundef %23)
  br label %if.end21

if.end21:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end21
  %24 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %24, 1
  store i32 %inc22, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %25 = load i32, ptr %rc, align 4
  %cmp23 = icmp ne i32 %25, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %for.end
  %27 = load i32, ptr %needXcommit, align 4
  %tobool27 = icmp ne i32 %27, 0
  br i1 %tobool27, label %land.lhs.true28, label %if.end36

land.lhs.true28:                                  ; preds = %if.end26
  %28 = load ptr, ptr %db.addr, align 8
  %xCommitCallback = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 48
  %29 = load ptr, ptr %xCommitCallback, align 8
  %tobool29 = icmp ne ptr %29, null
  br i1 %tobool29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %land.lhs.true28
  %30 = load ptr, ptr %db.addr, align 8
  %xCommitCallback31 = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 48
  %31 = load ptr, ptr %xCommitCallback31, align 8
  %32 = load ptr, ptr %db.addr, align 8
  %pCommitArg = getelementptr inbounds nuw %struct.sqlite3, ptr %32, i32 0, i32 47
  %33 = load ptr, ptr %pCommitArg, align 8
  %call32 = call i32 %31(ptr noundef %33)
  store i32 %call32, ptr %rc, align 4
  %34 = load i32, ptr %rc, align 4
  %tobool33 = icmp ne i32 %34, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.then30
  store i32 531, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.then30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %land.lhs.true28, %if.end26
  %35 = load ptr, ptr %db.addr, align 8
  %aDb37 = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 4
  %36 = load ptr, ptr %aDb37, align 8
  %arrayidx38 = getelementptr inbounds %struct.Db, ptr %36, i64 0
  %pBt39 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx38, i32 0, i32 1
  %37 = load ptr, ptr %pBt39, align 8
  %call40 = call ptr @sqlite3BtreeGetFilename(ptr noundef %37)
  %call41 = call i32 @sqlite3Strlen30(ptr noundef %call40)
  %cmp42 = icmp eq i32 0, %call41
  br i1 %cmp42, label %if.then46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end36
  %38 = load i32, ptr %nTrans, align 4
  %cmp44 = icmp sle i32 %38, 1
  br i1 %cmp44, label %if.then46, label %if.else

if.then46:                                        ; preds = %lor.lhs.false, %if.end36
  store i32 0, ptr %i, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc65, %if.then46
  %39 = load i32, ptr %rc, align 4
  %cmp48 = icmp eq i32 %39, 0
  br i1 %cmp48, label %land.rhs50, label %land.end54

land.rhs50:                                       ; preds = %for.cond47
  %40 = load i32, ptr %i, align 4
  %41 = load ptr, ptr %db.addr, align 8
  %nDb51 = getelementptr inbounds nuw %struct.sqlite3, ptr %41, i32 0, i32 5
  %42 = load i32, ptr %nDb51, align 8
  %cmp52 = icmp slt i32 %40, %42
  br label %land.end54

land.end54:                                       ; preds = %land.rhs50, %for.cond47
  %43 = phi i1 [ false, %for.cond47 ], [ %cmp52, %land.rhs50 ]
  br i1 %43, label %for.body55, label %for.end67

for.body55:                                       ; preds = %land.end54
  %44 = load ptr, ptr %db.addr, align 8
  %aDb57 = getelementptr inbounds nuw %struct.sqlite3, ptr %44, i32 0, i32 4
  %45 = load ptr, ptr %aDb57, align 8
  %46 = load i32, ptr %i, align 4
  %idxprom58 = sext i32 %46 to i64
  %arrayidx59 = getelementptr inbounds %struct.Db, ptr %45, i64 %idxprom58
  %pBt60 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx59, i32 0, i32 1
  %47 = load ptr, ptr %pBt60, align 8
  store ptr %47, ptr %pBt56, align 8
  %48 = load ptr, ptr %pBt56, align 8
  %tobool61 = icmp ne ptr %48, null
  br i1 %tobool61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %for.body55
  %49 = load ptr, ptr %pBt56, align 8
  %call63 = call i32 @sqlite3BtreeCommitPhaseOne(ptr noundef %49, ptr noundef null)
  store i32 %call63, ptr %rc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %for.body55
  br label %for.inc65

for.inc65:                                        ; preds = %if.end64
  %50 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %50, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond47, !llvm.loop !8

for.end67:                                        ; preds = %land.end54
  store i32 0, ptr %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc86, %for.end67
  %51 = load i32, ptr %rc, align 4
  %cmp69 = icmp eq i32 %51, 0
  br i1 %cmp69, label %land.rhs71, label %land.end75

land.rhs71:                                       ; preds = %for.cond68
  %52 = load i32, ptr %i, align 4
  %53 = load ptr, ptr %db.addr, align 8
  %nDb72 = getelementptr inbounds nuw %struct.sqlite3, ptr %53, i32 0, i32 5
  %54 = load i32, ptr %nDb72, align 8
  %cmp73 = icmp slt i32 %52, %54
  br label %land.end75

land.end75:                                       ; preds = %land.rhs71, %for.cond68
  %55 = phi i1 [ false, %for.cond68 ], [ %cmp73, %land.rhs71 ]
  br i1 %55, label %for.body76, label %for.end88

for.body76:                                       ; preds = %land.end75
  %56 = load ptr, ptr %db.addr, align 8
  %aDb78 = getelementptr inbounds nuw %struct.sqlite3, ptr %56, i32 0, i32 4
  %57 = load ptr, ptr %aDb78, align 8
  %58 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %58 to i64
  %arrayidx80 = getelementptr inbounds %struct.Db, ptr %57, i64 %idxprom79
  %pBt81 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx80, i32 0, i32 1
  %59 = load ptr, ptr %pBt81, align 8
  store ptr %59, ptr %pBt77, align 8
  %60 = load ptr, ptr %pBt77, align 8
  %tobool82 = icmp ne ptr %60, null
  br i1 %tobool82, label %if.then83, label %if.end85

if.then83:                                        ; preds = %for.body76
  %61 = load ptr, ptr %pBt77, align 8
  %call84 = call i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef %61, i32 noundef 0)
  store i32 %call84, ptr %rc, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %for.body76
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %62 = load i32, ptr %i, align 4
  %inc87 = add nsw i32 %62, 1
  store i32 %inc87, ptr %i, align 4
  br label %for.cond68, !llvm.loop !9

for.end88:                                        ; preds = %land.end75
  %63 = load i32, ptr %rc, align 4
  %cmp89 = icmp eq i32 %63, 0
  br i1 %cmp89, label %if.then91, label %if.end93

if.then91:                                        ; preds = %for.end88
  %64 = load ptr, ptr %db.addr, align 8
  %call92 = call i32 @sqlite3VtabCommit(ptr noundef %64)
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %for.end88
  br label %if.end229

if.else:                                          ; preds = %lor.lhs.false
  %65 = load ptr, ptr %db.addr, align 8
  %pVfs94 = getelementptr inbounds nuw %struct.sqlite3, ptr %65, i32 0, i32 0
  %66 = load ptr, ptr %pVfs94, align 8
  store ptr %66, ptr %pVfs, align 8
  store ptr null, ptr %zMaster, align 8
  %67 = load ptr, ptr %db.addr, align 8
  %aDb95 = getelementptr inbounds nuw %struct.sqlite3, ptr %67, i32 0, i32 4
  %68 = load ptr, ptr %aDb95, align 8
  %arrayidx96 = getelementptr inbounds %struct.Db, ptr %68, i64 0
  %pBt97 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx96, i32 0, i32 1
  %69 = load ptr, ptr %pBt97, align 8
  %call98 = call ptr @sqlite3BtreeGetFilename(ptr noundef %69)
  store ptr %call98, ptr %zMainFile, align 8
  store ptr null, ptr %pMaster, align 8
  store i64 0, ptr %offset, align 8
  store i32 0, ptr %retryCount, align 4
  %70 = load ptr, ptr %zMainFile, align 8
  %call99 = call i32 @sqlite3Strlen30(ptr noundef %70)
  store i32 %call99, ptr %nMainFile, align 4
  %71 = load ptr, ptr %db.addr, align 8
  %72 = load ptr, ptr %zMainFile, align 8
  %call100 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %71, ptr noundef @.str.107, ptr noundef %72)
  store ptr %call100, ptr %zMaster, align 8
  %73 = load ptr, ptr %zMaster, align 8
  %cmp101 = icmp eq ptr %73, null
  br i1 %cmp101, label %if.then103, label %if.end104

if.then103:                                       ; preds = %if.else
  store i32 7, ptr %retval, align 4
  br label %return

if.end104:                                        ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %land.end128, %if.end104
  %74 = load i32, ptr %retryCount, align 4
  %tobool105 = icmp ne i32 %74, 0
  br i1 %tobool105, label %if.then106, label %if.end117

if.then106:                                       ; preds = %do.body
  %75 = load i32, ptr %retryCount, align 4
  %cmp107 = icmp sgt i32 %75, 100
  br i1 %cmp107, label %if.then109, label %if.else111

if.then109:                                       ; preds = %if.then106
  %76 = load ptr, ptr %zMaster, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 13, ptr noundef @.str.108, ptr noundef %76)
  %77 = load ptr, ptr %pVfs, align 8
  %78 = load ptr, ptr %zMaster, align 8
  %call110 = call i32 @sqlite3OsDelete(ptr noundef %77, ptr noundef %78, i32 noundef 0)
  br label %do.end

if.else111:                                       ; preds = %if.then106
  %79 = load i32, ptr %retryCount, align 4
  %cmp112 = icmp eq i32 %79, 1
  br i1 %cmp112, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.else111
  %80 = load ptr, ptr %zMaster, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 13, ptr noundef @.str.109, ptr noundef %80)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.else111
  br label %if.end116

if.end116:                                        ; preds = %if.end115
  br label %if.end117

if.end117:                                        ; preds = %if.end116, %do.body
  %81 = load i32, ptr %retryCount, align 4
  %inc118 = add nsw i32 %81, 1
  store i32 %inc118, ptr %retryCount, align 4
  call void @sqlite3_randomness(i32 noundef 4, ptr noundef %iRandom)
  %82 = load ptr, ptr %zMaster, align 8
  %83 = load i32, ptr %nMainFile, align 4
  %idxprom119 = sext i32 %83 to i64
  %arrayidx120 = getelementptr inbounds i8, ptr %82, i64 %idxprom119
  %84 = load i32, ptr %iRandom, align 4
  %shr = lshr i32 %84, 8
  %and = and i32 %shr, 16777215
  %85 = load i32, ptr %iRandom, align 4
  %and121 = and i32 %85, 255
  %call122 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 13, ptr noundef %arrayidx120, ptr noundef @.str.110, i32 noundef %and, i32 noundef %and121)
  %86 = load ptr, ptr %pVfs, align 8
  %87 = load ptr, ptr %zMaster, align 8
  %call123 = call i32 @sqlite3OsAccess(ptr noundef %86, ptr noundef %87, i32 noundef 0, ptr noundef %res)
  store i32 %call123, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end117
  %88 = load i32, ptr %rc, align 4
  %cmp124 = icmp eq i32 %88, 0
  br i1 %cmp124, label %land.rhs126, label %land.end128

land.rhs126:                                      ; preds = %do.cond
  %89 = load i32, ptr %res, align 4
  %tobool127 = icmp ne i32 %89, 0
  br label %land.end128

land.end128:                                      ; preds = %land.rhs126, %do.cond
  %90 = phi i1 [ false, %do.cond ], [ %tobool127, %land.rhs126 ]
  br i1 %90, label %do.body, label %do.end, !llvm.loop !10

do.end:                                           ; preds = %land.end128, %if.then109
  %91 = load i32, ptr %rc, align 4
  %cmp129 = icmp eq i32 %91, 0
  br i1 %cmp129, label %if.then131, label %if.end133

if.then131:                                       ; preds = %do.end
  %92 = load ptr, ptr %pVfs, align 8
  %93 = load ptr, ptr %zMaster, align 8
  %call132 = call i32 @sqlite3OsOpenMalloc(ptr noundef %92, ptr noundef %93, ptr noundef %pMaster, i32 noundef 16406, ptr noundef null)
  store i32 %call132, ptr %rc, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %do.end
  %94 = load i32, ptr %rc, align 4
  %cmp134 = icmp ne i32 %94, 0
  br i1 %cmp134, label %if.then136, label %if.end137

if.then136:                                       ; preds = %if.end133
  %95 = load ptr, ptr %db.addr, align 8
  %96 = load ptr, ptr %zMaster, align 8
  call void @sqlite3DbFree(ptr noundef %95, ptr noundef %96)
  %97 = load i32, ptr %rc, align 4
  store i32 %97, ptr %retval, align 4
  br label %return

if.end137:                                        ; preds = %if.end133
  store i32 0, ptr %i, align 4
  br label %for.cond138

for.cond138:                                      ; preds = %for.inc168, %if.end137
  %98 = load i32, ptr %i, align 4
  %99 = load ptr, ptr %db.addr, align 8
  %nDb139 = getelementptr inbounds nuw %struct.sqlite3, ptr %99, i32 0, i32 5
  %100 = load i32, ptr %nDb139, align 8
  %cmp140 = icmp slt i32 %98, %100
  br i1 %cmp140, label %for.body142, label %for.end170

for.body142:                                      ; preds = %for.cond138
  %101 = load ptr, ptr %db.addr, align 8
  %aDb144 = getelementptr inbounds nuw %struct.sqlite3, ptr %101, i32 0, i32 4
  %102 = load ptr, ptr %aDb144, align 8
  %103 = load i32, ptr %i, align 4
  %idxprom145 = sext i32 %103 to i64
  %arrayidx146 = getelementptr inbounds %struct.Db, ptr %102, i64 %idxprom145
  %pBt147 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx146, i32 0, i32 1
  %104 = load ptr, ptr %pBt147, align 8
  store ptr %104, ptr %pBt143, align 8
  %105 = load ptr, ptr %pBt143, align 8
  %call148 = call i32 @sqlite3BtreeIsInTrans(ptr noundef %105)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then150, label %if.end167

if.then150:                                       ; preds = %for.body142
  %106 = load ptr, ptr %pBt143, align 8
  %call151 = call ptr @sqlite3BtreeGetJournalname(ptr noundef %106)
  store ptr %call151, ptr %zFile, align 8
  %107 = load ptr, ptr %zFile, align 8
  %cmp152 = icmp eq ptr %107, null
  br i1 %cmp152, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.then150
  br label %for.inc168

if.end155:                                        ; preds = %if.then150
  %108 = load ptr, ptr %pMaster, align 8
  %109 = load ptr, ptr %zFile, align 8
  %110 = load ptr, ptr %zFile, align 8
  %call156 = call i32 @sqlite3Strlen30(ptr noundef %110)
  %add = add nsw i32 %call156, 1
  %111 = load i64, ptr %offset, align 8
  %call157 = call i32 @sqlite3OsWrite(ptr noundef %108, ptr noundef %109, i32 noundef %add, i64 noundef %111)
  store i32 %call157, ptr %rc, align 4
  %112 = load ptr, ptr %zFile, align 8
  %call158 = call i32 @sqlite3Strlen30(ptr noundef %112)
  %add159 = add nsw i32 %call158, 1
  %conv160 = sext i32 %add159 to i64
  %113 = load i64, ptr %offset, align 8
  %add161 = add nsw i64 %113, %conv160
  store i64 %add161, ptr %offset, align 8
  %114 = load i32, ptr %rc, align 4
  %cmp162 = icmp ne i32 %114, 0
  br i1 %cmp162, label %if.then164, label %if.end166

if.then164:                                       ; preds = %if.end155
  %115 = load ptr, ptr %pMaster, align 8
  call void @sqlite3OsCloseFree(ptr noundef %115)
  %116 = load ptr, ptr %pVfs, align 8
  %117 = load ptr, ptr %zMaster, align 8
  %call165 = call i32 @sqlite3OsDelete(ptr noundef %116, ptr noundef %117, i32 noundef 0)
  %118 = load ptr, ptr %db.addr, align 8
  %119 = load ptr, ptr %zMaster, align 8
  call void @sqlite3DbFree(ptr noundef %118, ptr noundef %119)
  %120 = load i32, ptr %rc, align 4
  store i32 %120, ptr %retval, align 4
  br label %return

if.end166:                                        ; preds = %if.end155
  br label %if.end167

if.end167:                                        ; preds = %if.end166, %for.body142
  br label %for.inc168

for.inc168:                                       ; preds = %if.end167, %if.then154
  %121 = load i32, ptr %i, align 4
  %inc169 = add nsw i32 %121, 1
  store i32 %inc169, ptr %i, align 4
  br label %for.cond138, !llvm.loop !11

for.end170:                                       ; preds = %for.cond138
  %122 = load ptr, ptr %pMaster, align 8
  %call171 = call i32 @sqlite3OsDeviceCharacteristics(ptr noundef %122)
  %and172 = and i32 %call171, 1024
  %cmp173 = icmp eq i32 0, %and172
  br i1 %cmp173, label %land.lhs.true175, label %if.end181

land.lhs.true175:                                 ; preds = %for.end170
  %123 = load ptr, ptr %pMaster, align 8
  %call176 = call i32 @sqlite3OsSync(ptr noundef %123, i32 noundef 2)
  store i32 %call176, ptr %rc, align 4
  %cmp177 = icmp ne i32 0, %call176
  br i1 %cmp177, label %if.then179, label %if.end181

if.then179:                                       ; preds = %land.lhs.true175
  %124 = load ptr, ptr %pMaster, align 8
  call void @sqlite3OsCloseFree(ptr noundef %124)
  %125 = load ptr, ptr %pVfs, align 8
  %126 = load ptr, ptr %zMaster, align 8
  %call180 = call i32 @sqlite3OsDelete(ptr noundef %125, ptr noundef %126, i32 noundef 0)
  %127 = load ptr, ptr %db.addr, align 8
  %128 = load ptr, ptr %zMaster, align 8
  call void @sqlite3DbFree(ptr noundef %127, ptr noundef %128)
  %129 = load i32, ptr %rc, align 4
  store i32 %129, ptr %retval, align 4
  br label %return

if.end181:                                        ; preds = %land.lhs.true175, %for.end170
  store i32 0, ptr %i, align 4
  br label %for.cond182

for.cond182:                                      ; preds = %for.inc200, %if.end181
  %130 = load i32, ptr %rc, align 4
  %cmp183 = icmp eq i32 %130, 0
  br i1 %cmp183, label %land.rhs185, label %land.end189

land.rhs185:                                      ; preds = %for.cond182
  %131 = load i32, ptr %i, align 4
  %132 = load ptr, ptr %db.addr, align 8
  %nDb186 = getelementptr inbounds nuw %struct.sqlite3, ptr %132, i32 0, i32 5
  %133 = load i32, ptr %nDb186, align 8
  %cmp187 = icmp slt i32 %131, %133
  br label %land.end189

land.end189:                                      ; preds = %land.rhs185, %for.cond182
  %134 = phi i1 [ false, %for.cond182 ], [ %cmp187, %land.rhs185 ]
  br i1 %134, label %for.body190, label %for.end202

for.body190:                                      ; preds = %land.end189
  %135 = load ptr, ptr %db.addr, align 8
  %aDb192 = getelementptr inbounds nuw %struct.sqlite3, ptr %135, i32 0, i32 4
  %136 = load ptr, ptr %aDb192, align 8
  %137 = load i32, ptr %i, align 4
  %idxprom193 = sext i32 %137 to i64
  %arrayidx194 = getelementptr inbounds %struct.Db, ptr %136, i64 %idxprom193
  %pBt195 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx194, i32 0, i32 1
  %138 = load ptr, ptr %pBt195, align 8
  store ptr %138, ptr %pBt191, align 8
  %139 = load ptr, ptr %pBt191, align 8
  %tobool196 = icmp ne ptr %139, null
  br i1 %tobool196, label %if.then197, label %if.end199

if.then197:                                       ; preds = %for.body190
  %140 = load ptr, ptr %pBt191, align 8
  %141 = load ptr, ptr %zMaster, align 8
  %call198 = call i32 @sqlite3BtreeCommitPhaseOne(ptr noundef %140, ptr noundef %141)
  store i32 %call198, ptr %rc, align 4
  br label %if.end199

if.end199:                                        ; preds = %if.then197, %for.body190
  br label %for.inc200

for.inc200:                                       ; preds = %if.end199
  %142 = load i32, ptr %i, align 4
  %inc201 = add nsw i32 %142, 1
  store i32 %inc201, ptr %i, align 4
  br label %for.cond182, !llvm.loop !12

for.end202:                                       ; preds = %land.end189
  %143 = load ptr, ptr %pMaster, align 8
  call void @sqlite3OsCloseFree(ptr noundef %143)
  %144 = load i32, ptr %rc, align 4
  %cmp203 = icmp ne i32 %144, 0
  br i1 %cmp203, label %if.then205, label %if.end206

if.then205:                                       ; preds = %for.end202
  %145 = load ptr, ptr %db.addr, align 8
  %146 = load ptr, ptr %zMaster, align 8
  call void @sqlite3DbFree(ptr noundef %145, ptr noundef %146)
  %147 = load i32, ptr %rc, align 4
  store i32 %147, ptr %retval, align 4
  br label %return

if.end206:                                        ; preds = %for.end202
  %148 = load ptr, ptr %pVfs, align 8
  %149 = load ptr, ptr %zMaster, align 8
  %call207 = call i32 @sqlite3OsDelete(ptr noundef %148, ptr noundef %149, i32 noundef 1)
  store i32 %call207, ptr %rc, align 4
  %150 = load ptr, ptr %db.addr, align 8
  %151 = load ptr, ptr %zMaster, align 8
  call void @sqlite3DbFree(ptr noundef %150, ptr noundef %151)
  store ptr null, ptr %zMaster, align 8
  %152 = load i32, ptr %rc, align 4
  %tobool208 = icmp ne i32 %152, 0
  br i1 %tobool208, label %if.then209, label %if.end210

if.then209:                                       ; preds = %if.end206
  %153 = load i32, ptr %rc, align 4
  store i32 %153, ptr %retval, align 4
  br label %return

if.end210:                                        ; preds = %if.end206
  call void @sqlite3BeginBenignMalloc()
  store i32 0, ptr %i, align 4
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc225, %if.end210
  %154 = load i32, ptr %i, align 4
  %155 = load ptr, ptr %db.addr, align 8
  %nDb212 = getelementptr inbounds nuw %struct.sqlite3, ptr %155, i32 0, i32 5
  %156 = load i32, ptr %nDb212, align 8
  %cmp213 = icmp slt i32 %154, %156
  br i1 %cmp213, label %for.body215, label %for.end227

for.body215:                                      ; preds = %for.cond211
  %157 = load ptr, ptr %db.addr, align 8
  %aDb217 = getelementptr inbounds nuw %struct.sqlite3, ptr %157, i32 0, i32 4
  %158 = load ptr, ptr %aDb217, align 8
  %159 = load i32, ptr %i, align 4
  %idxprom218 = sext i32 %159 to i64
  %arrayidx219 = getelementptr inbounds %struct.Db, ptr %158, i64 %idxprom218
  %pBt220 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx219, i32 0, i32 1
  %160 = load ptr, ptr %pBt220, align 8
  store ptr %160, ptr %pBt216, align 8
  %161 = load ptr, ptr %pBt216, align 8
  %tobool221 = icmp ne ptr %161, null
  br i1 %tobool221, label %if.then222, label %if.end224

if.then222:                                       ; preds = %for.body215
  %162 = load ptr, ptr %pBt216, align 8
  %call223 = call i32 @sqlite3BtreeCommitPhaseTwo(ptr noundef %162, i32 noundef 1)
  br label %if.end224

if.end224:                                        ; preds = %if.then222, %for.body215
  br label %for.inc225

for.inc225:                                       ; preds = %if.end224
  %163 = load i32, ptr %i, align 4
  %inc226 = add nsw i32 %163, 1
  store i32 %inc226, ptr %i, align 4
  br label %for.cond211, !llvm.loop !13

for.end227:                                       ; preds = %for.cond211
  call void @sqlite3EndBenignMalloc()
  %164 = load ptr, ptr %db.addr, align 8
  %call228 = call i32 @sqlite3VtabCommit(ptr noundef %164)
  br label %if.end229

if.end229:                                        ; preds = %for.end227, %if.end93
  %165 = load i32, ptr %rc, align 4
  store i32 %165, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end229, %if.then209, %if.then205, %if.then179, %if.then164, %if.then136, %if.then103, %if.then34, %if.then25
  %166 = load i32, ptr %retval, align 4
  ret i32 %166
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsCloseFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabSync(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabCommit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpenMalloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreeGetJournalname(ptr noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
