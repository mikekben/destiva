; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IntegrityCk = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, %struct.sqlite3_str, ptr }
%struct.sqlite3_str = type { ptr, ptr, i32, i32, i32, i8, i8 }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.MemPage = type { i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i16, i16, i16, i32, i16, i16, [4 x i16], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4
@.str.348 = external hidden unnamed_addr constant [16 x i8], align 1
@.str.349 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.350 = external hidden unnamed_addr constant [55 x i8], align 1
@.str.351 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.352 = external hidden unnamed_addr constant [34 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3StrAccumFinish(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_str_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3StrAccumInit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Get4byte(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PageFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PageMalloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @btreePagecount(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @ptrmapPageno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3BtreeIntegrityCheck(ptr noundef %p, ptr noundef %aRoot, i32 noundef %nRoot, i32 noundef %mxErr, ptr noundef %pnErr) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %aRoot.addr = alloca ptr, align 8
  %nRoot.addr = alloca i32, align 4
  %mxErr.addr = alloca i32, align 4
  %pnErr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %sCheck = alloca %struct.IntegrityCk, align 8
  %pBt = alloca ptr, align 8
  %savedDbFlags = alloca i64, align 8
  %zErr = alloca [100 x i8], align 16
  %mx = alloca i32, align 4
  %mxInHdr = alloca i32, align 4
  %notUsed = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr %aRoot, ptr %aRoot.addr, align 8
  store i32 %nRoot, ptr %nRoot.addr, align 4
  store i32 %mxErr, ptr %mxErr.addr, align 4
  store ptr %pnErr, ptr %pnErr.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pBt, align 8
  %db = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 7
  %4 = load i64, ptr %flags, align 8
  store i64 %4, ptr %savedDbFlags, align 8
  %5 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %5)
  %6 = load ptr, ptr %pBt, align 8
  %pBt2 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 0
  store ptr %6, ptr %pBt2, align 8
  %7 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pPager, align 8
  %pPager3 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 1
  store ptr %8, ptr %pPager3, align 8
  %pBt4 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 0
  %9 = load ptr, ptr %pBt4, align 8
  %call = call i32 @btreePagecount(ptr noundef %9)
  %nPage = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 3
  store i32 %call, ptr %nPage, align 8
  %10 = load i32, ptr %mxErr.addr, align 4
  %mxErr5 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 4
  store i32 %10, ptr %mxErr5, align 4
  %nErr = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 5
  store i32 0, ptr %nErr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 6
  store i32 0, ptr %mallocFailed, align 4
  %zPfx = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 7
  store ptr null, ptr %zPfx, align 8
  %v1 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 8
  store i32 0, ptr %v1, align 8
  %v2 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 9
  store i32 0, ptr %v2, align 4
  %aPgRef = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 2
  store ptr null, ptr %aPgRef, align 8
  %heap = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 11
  store ptr null, ptr %heap, align 8
  %errMsg = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 10
  %arraydecay = getelementptr inbounds [100 x i8], ptr %zErr, i64 0, i64 0
  call void @sqlite3StrAccumInit(ptr noundef %errMsg, ptr noundef null, ptr noundef %arraydecay, i32 noundef 100, i32 noundef 1000000000)
  %errMsg6 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 10
  %printfFlags = getelementptr inbounds nuw %struct.sqlite3_str, ptr %errMsg6, i32 0, i32 6
  store i8 1, ptr %printfFlags, align 1
  %nPage7 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 3
  %11 = load i32, ptr %nPage7, align 8
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %integrity_ck_cleanup

if.end:                                           ; preds = %entry
  %nPage8 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 3
  %12 = load i32, ptr %nPage8, align 8
  %div = udiv i32 %12, 8
  %add = add i32 %div, 1
  %conv = zext i32 %add to i64
  %call9 = call ptr @sqlite3MallocZero(i64 noundef %conv)
  %aPgRef10 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 2
  store ptr %call9, ptr %aPgRef10, align 8
  %aPgRef11 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 2
  %13 = load ptr, ptr %aPgRef11, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  %mallocFailed13 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 6
  store i32 1, ptr %mallocFailed13, align 4
  br label %integrity_ck_cleanup

if.end14:                                         ; preds = %if.end
  %14 = load ptr, ptr %pBt, align 8
  %pageSize = getelementptr inbounds nuw %struct.BtShared, ptr %14, i32 0, i32 15
  %15 = load i32, ptr %pageSize, align 8
  %call15 = call ptr @sqlite3PageMalloc(i32 noundef %15)
  %heap16 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 11
  store ptr %call15, ptr %heap16, align 8
  %heap17 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 11
  %16 = load ptr, ptr %heap17, align 8
  %cmp18 = icmp eq ptr %16, null
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end14
  %mallocFailed21 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 6
  store i32 1, ptr %mallocFailed21, align 4
  br label %integrity_ck_cleanup

if.end22:                                         ; preds = %if.end14
  %17 = load i32, ptr @sqlite3PendingByte, align 4
  %18 = load ptr, ptr %pBt, align 8
  %pageSize23 = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 15
  %19 = load i32, ptr %pageSize23, align 8
  %div24 = udiv i32 %17, %19
  %add25 = add i32 %div24, 1
  store i32 %add25, ptr %i, align 4
  %20 = load i32, ptr %i, align 4
  %nPage26 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 3
  %21 = load i32, ptr %nPage26, align 8
  %cmp27 = icmp ule i32 %20, %21
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end22
  %22 = load i32, ptr %i, align 4
  call void @setPageReferenced(ptr noundef %sCheck, i32 noundef %22)
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.end22
  %zPfx31 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 7
  store ptr @.str.348, ptr %zPfx31, align 8
  %23 = load ptr, ptr %pBt, align 8
  %pPage1 = getelementptr inbounds nuw %struct.BtShared, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pPage1, align 8
  %aData = getelementptr inbounds nuw %struct.MemPage, ptr %24, i32 0, i32 19
  %25 = load ptr, ptr %aData, align 8
  %arrayidx = getelementptr inbounds i8, ptr %25, i64 32
  %call32 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx)
  %26 = load ptr, ptr %pBt, align 8
  %pPage133 = getelementptr inbounds nuw %struct.BtShared, ptr %26, i32 0, i32 3
  %27 = load ptr, ptr %pPage133, align 8
  %aData34 = getelementptr inbounds nuw %struct.MemPage, ptr %27, i32 0, i32 19
  %28 = load ptr, ptr %aData34, align 8
  %arrayidx35 = getelementptr inbounds i8, ptr %28, i64 36
  %call36 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx35)
  call void @checkList(ptr noundef %sCheck, i32 noundef 1, i32 noundef %call32, i32 noundef %call36)
  %zPfx37 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 7
  store ptr null, ptr %zPfx37, align 8
  %29 = load ptr, ptr %pBt, align 8
  %autoVacuum = getelementptr inbounds nuw %struct.BtShared, ptr %29, i32 0, i32 5
  %30 = load i8, ptr %autoVacuum, align 1
  %tobool38 = icmp ne i8 %30, 0
  br i1 %tobool38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.end30
  store i32 0, ptr %mx, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then39
  %31 = load i32, ptr %i, align 4
  %32 = load i32, ptr %nRoot.addr, align 4
  %cmp40 = icmp slt i32 %31, %32
  br i1 %cmp40, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, ptr %mx, align 4
  %34 = load ptr, ptr %aRoot.addr, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom = zext i32 %35 to i64
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %34, i64 %idxprom
  %36 = load i32, ptr %arrayidx42, align 4
  %cmp43 = icmp slt i32 %33, %36
  br i1 %cmp43, label %if.then45, label %if.end48

if.then45:                                        ; preds = %for.body
  %37 = load ptr, ptr %aRoot.addr, align 8
  %38 = load i32, ptr %i, align 4
  %idxprom46 = zext i32 %38 to i64
  %arrayidx47 = getelementptr inbounds nuw i32, ptr %37, i64 %idxprom46
  %39 = load i32, ptr %arrayidx47, align 4
  store i32 %39, ptr %mx, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then45, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %40 = load i32, ptr %i, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %41 = load ptr, ptr %pBt, align 8
  %pPage149 = getelementptr inbounds nuw %struct.BtShared, ptr %41, i32 0, i32 3
  %42 = load ptr, ptr %pPage149, align 8
  %aData50 = getelementptr inbounds nuw %struct.MemPage, ptr %42, i32 0, i32 19
  %43 = load ptr, ptr %aData50, align 8
  %arrayidx51 = getelementptr inbounds i8, ptr %43, i64 52
  %call52 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx51)
  store i32 %call52, ptr %mxInHdr, align 4
  %44 = load i32, ptr %mx, align 4
  %45 = load i32, ptr %mxInHdr, align 4
  %cmp53 = icmp ne i32 %44, %45
  br i1 %cmp53, label %if.then55, label %if.end56

if.then55:                                        ; preds = %for.end
  %46 = load i32, ptr %mx, align 4
  %47 = load i32, ptr %mxInHdr, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %sCheck, ptr noundef @.str.349, i32 noundef %46, i32 noundef %47)
  br label %if.end56

if.end56:                                         ; preds = %if.then55, %for.end
  br label %if.end65

if.else:                                          ; preds = %if.end30
  %48 = load ptr, ptr %pBt, align 8
  %pPage157 = getelementptr inbounds nuw %struct.BtShared, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %pPage157, align 8
  %aData58 = getelementptr inbounds nuw %struct.MemPage, ptr %49, i32 0, i32 19
  %50 = load ptr, ptr %aData58, align 8
  %arrayidx59 = getelementptr inbounds i8, ptr %50, i64 64
  %call60 = call i32 @sqlite3Get4byte(ptr noundef %arrayidx59)
  %cmp61 = icmp ne i32 %call60, 0
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.else
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %sCheck, ptr noundef @.str.350)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.else
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end56
  %51 = load ptr, ptr %pBt, align 8
  %db66 = getelementptr inbounds nuw %struct.BtShared, ptr %51, i32 0, i32 1
  %52 = load ptr, ptr %db66, align 8
  %flags67 = getelementptr inbounds nuw %struct.sqlite3, ptr %52, i32 0, i32 7
  %53 = load i64, ptr %flags67, align 8
  %and = and i64 %53, -2097153
  store i64 %and, ptr %flags67, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc94, %if.end65
  %54 = load i32, ptr %i, align 4
  %55 = load i32, ptr %nRoot.addr, align 4
  %cmp69 = icmp slt i32 %54, %55
  br i1 %cmp69, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond68
  %mxErr71 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 4
  %56 = load i32, ptr %mxErr71, align 4
  %tobool72 = icmp ne i32 %56, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond68
  %57 = phi i1 [ false, %for.cond68 ], [ %tobool72, %land.rhs ]
  br i1 %57, label %for.body73, label %for.end96

for.body73:                                       ; preds = %land.end
  %58 = load ptr, ptr %aRoot.addr, align 8
  %59 = load i32, ptr %i, align 4
  %idxprom74 = zext i32 %59 to i64
  %arrayidx75 = getelementptr inbounds nuw i32, ptr %58, i64 %idxprom74
  %60 = load i32, ptr %arrayidx75, align 4
  %cmp76 = icmp eq i32 %60, 0
  br i1 %cmp76, label %if.then78, label %if.end79

if.then78:                                        ; preds = %for.body73
  br label %for.inc94

if.end79:                                         ; preds = %for.body73
  %61 = load ptr, ptr %pBt, align 8
  %autoVacuum80 = getelementptr inbounds nuw %struct.BtShared, ptr %61, i32 0, i32 5
  %62 = load i8, ptr %autoVacuum80, align 1
  %conv81 = zext i8 %62 to i32
  %tobool82 = icmp ne i32 %conv81, 0
  br i1 %tobool82, label %land.lhs.true, label %if.end90

land.lhs.true:                                    ; preds = %if.end79
  %63 = load ptr, ptr %aRoot.addr, align 8
  %64 = load i32, ptr %i, align 4
  %idxprom83 = zext i32 %64 to i64
  %arrayidx84 = getelementptr inbounds nuw i32, ptr %63, i64 %idxprom83
  %65 = load i32, ptr %arrayidx84, align 4
  %cmp85 = icmp sgt i32 %65, 1
  br i1 %cmp85, label %if.then87, label %if.end90

if.then87:                                        ; preds = %land.lhs.true
  %66 = load ptr, ptr %aRoot.addr, align 8
  %67 = load i32, ptr %i, align 4
  %idxprom88 = zext i32 %67 to i64
  %arrayidx89 = getelementptr inbounds nuw i32, ptr %66, i64 %idxprom88
  %68 = load i32, ptr %arrayidx89, align 4
  call void @checkPtrmap(ptr noundef %sCheck, i32 noundef %68, i8 noundef zeroext 1, i32 noundef 0)
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %land.lhs.true, %if.end79
  %69 = load ptr, ptr %aRoot.addr, align 8
  %70 = load i32, ptr %i, align 4
  %idxprom91 = zext i32 %70 to i64
  %arrayidx92 = getelementptr inbounds nuw i32, ptr %69, i64 %idxprom91
  %71 = load i32, ptr %arrayidx92, align 4
  %call93 = call i32 @checkTreePage(ptr noundef %sCheck, i32 noundef %71, ptr noundef %notUsed, i64 noundef 9223372036854775807)
  br label %for.inc94

for.inc94:                                        ; preds = %if.end90, %if.then78
  %72 = load i32, ptr %i, align 4
  %inc95 = add i32 %72, 1
  store i32 %inc95, ptr %i, align 4
  br label %for.cond68, !llvm.loop !8

for.end96:                                        ; preds = %land.end
  %73 = load i64, ptr %savedDbFlags, align 8
  %74 = load ptr, ptr %pBt, align 8
  %db97 = getelementptr inbounds nuw %struct.BtShared, ptr %74, i32 0, i32 1
  %75 = load ptr, ptr %db97, align 8
  %flags98 = getelementptr inbounds nuw %struct.sqlite3, ptr %75, i32 0, i32 7
  store i64 %73, ptr %flags98, align 8
  store i32 1, ptr %i, align 4
  br label %for.cond99

for.cond99:                                       ; preds = %for.inc132, %for.end96
  %76 = load i32, ptr %i, align 4
  %nPage100 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 3
  %77 = load i32, ptr %nPage100, align 8
  %cmp101 = icmp ule i32 %76, %77
  br i1 %cmp101, label %land.rhs103, label %land.end106

land.rhs103:                                      ; preds = %for.cond99
  %mxErr104 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 4
  %78 = load i32, ptr %mxErr104, align 4
  %tobool105 = icmp ne i32 %78, 0
  br label %land.end106

land.end106:                                      ; preds = %land.rhs103, %for.cond99
  %79 = phi i1 [ false, %for.cond99 ], [ %tobool105, %land.rhs103 ]
  br i1 %79, label %for.body107, label %for.end134

for.body107:                                      ; preds = %land.end106
  %80 = load i32, ptr %i, align 4
  %call108 = call i32 @getPageReferenced(ptr noundef %sCheck, i32 noundef %80)
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %land.lhs.true111, label %if.end118

land.lhs.true111:                                 ; preds = %for.body107
  %81 = load ptr, ptr %pBt, align 8
  %82 = load i32, ptr %i, align 4
  %call112 = call i32 @ptrmapPageno(ptr noundef %81, i32 noundef %82)
  %83 = load i32, ptr %i, align 4
  %cmp113 = icmp ne i32 %call112, %83
  br i1 %cmp113, label %if.then117, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true111
  %84 = load ptr, ptr %pBt, align 8
  %autoVacuum115 = getelementptr inbounds nuw %struct.BtShared, ptr %84, i32 0, i32 5
  %85 = load i8, ptr %autoVacuum115, align 1
  %tobool116 = icmp ne i8 %85, 0
  br i1 %tobool116, label %if.end118, label %if.then117

if.then117:                                       ; preds = %lor.lhs.false, %land.lhs.true111
  %86 = load i32, ptr %i, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %sCheck, ptr noundef @.str.351, i32 noundef %86)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %lor.lhs.false, %for.body107
  %87 = load i32, ptr %i, align 4
  %call119 = call i32 @getPageReferenced(ptr noundef %sCheck, i32 noundef %87)
  %cmp120 = icmp ne i32 %call119, 0
  br i1 %cmp120, label %land.lhs.true122, label %if.end131

land.lhs.true122:                                 ; preds = %if.end118
  %88 = load ptr, ptr %pBt, align 8
  %89 = load i32, ptr %i, align 4
  %call123 = call i32 @ptrmapPageno(ptr noundef %88, i32 noundef %89)
  %90 = load i32, ptr %i, align 4
  %cmp124 = icmp eq i32 %call123, %90
  br i1 %cmp124, label %land.lhs.true126, label %if.end131

land.lhs.true126:                                 ; preds = %land.lhs.true122
  %91 = load ptr, ptr %pBt, align 8
  %autoVacuum127 = getelementptr inbounds nuw %struct.BtShared, ptr %91, i32 0, i32 5
  %92 = load i8, ptr %autoVacuum127, align 1
  %conv128 = zext i8 %92 to i32
  %tobool129 = icmp ne i32 %conv128, 0
  br i1 %tobool129, label %if.then130, label %if.end131

if.then130:                                       ; preds = %land.lhs.true126
  %93 = load i32, ptr %i, align 4
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %sCheck, ptr noundef @.str.352, i32 noundef %93)
  br label %if.end131

if.end131:                                        ; preds = %if.then130, %land.lhs.true126, %land.lhs.true122, %if.end118
  br label %for.inc132

for.inc132:                                       ; preds = %if.end131
  %94 = load i32, ptr %i, align 4
  %inc133 = add i32 %94, 1
  store i32 %inc133, ptr %i, align 4
  br label %for.cond99, !llvm.loop !9

for.end134:                                       ; preds = %land.end106
  br label %integrity_ck_cleanup

integrity_ck_cleanup:                             ; preds = %for.end134, %if.then20, %if.then12, %if.then
  %heap135 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 11
  %95 = load ptr, ptr %heap135, align 8
  call void @sqlite3PageFree(ptr noundef %95)
  %aPgRef136 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 2
  %96 = load ptr, ptr %aPgRef136, align 8
  call void @sqlite3_free(ptr noundef %96)
  %mallocFailed137 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 6
  %97 = load i32, ptr %mallocFailed137, align 4
  %tobool138 = icmp ne i32 %97, 0
  br i1 %tobool138, label %if.then139, label %if.end143

if.then139:                                       ; preds = %integrity_ck_cleanup
  %errMsg140 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 10
  call void @sqlite3_str_reset(ptr noundef %errMsg140)
  %nErr141 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 5
  %98 = load i32, ptr %nErr141, align 8
  %inc142 = add nsw i32 %98, 1
  store i32 %inc142, ptr %nErr141, align 8
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %integrity_ck_cleanup
  %nErr144 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 5
  %99 = load i32, ptr %nErr144, align 8
  %100 = load ptr, ptr %pnErr.addr, align 8
  store i32 %99, ptr %100, align 4
  %nErr145 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 5
  %101 = load i32, ptr %nErr145, align 8
  %cmp146 = icmp eq i32 %101, 0
  br i1 %cmp146, label %if.then148, label %if.end150

if.then148:                                       ; preds = %if.end143
  %errMsg149 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 10
  call void @sqlite3_str_reset(ptr noundef %errMsg149)
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %if.end143
  %102 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %102)
  %errMsg151 = getelementptr inbounds nuw %struct.IntegrityCk, ptr %sCheck, i32 0, i32 10
  %call152 = call ptr @sqlite3StrAccumFinish(ptr noundef %errMsg151)
  ret ptr %call152
}

; Function Attrs: nounwind uwtable
declare hidden void @setPageReferenced(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkList(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkAppendMsg(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @checkPtrmap(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @checkTreePage(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @getPageReferenced(ptr noundef, i32 noundef) #0

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
