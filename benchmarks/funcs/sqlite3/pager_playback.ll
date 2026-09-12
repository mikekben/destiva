; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.102 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSync(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSetPagesize(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setSectorSize(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_end_transaction(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pager_playback(ptr noundef %pPager, i32 noundef %isHot) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %isHot.addr = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %szJ = alloca i64, align 8
  %nRec = alloca i32, align 4
  %u = alloca i32, align 4
  %mxPg = alloca i32, align 4
  %rc = alloca i32, align 4
  %res = alloca i32, align 4
  %zMaster = alloca ptr, align 8
  %needPagerReset = alloca i32, align 4
  %nPlayback = alloca i32, align 4
  %savedPageSize = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %isHot, ptr %isHot.addr, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pVfs1 = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVfs1, align 8
  store ptr %1, ptr %pVfs, align 8
  store i32 0, ptr %mxPg, align 4
  store i32 1, ptr %res, align 4
  store ptr null, ptr %zMaster, align 8
  store i32 0, ptr %nPlayback, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 47
  %3 = load i32, ptr %pageSize, align 4
  store i32 %3, ptr %savedPageSize, align 4
  %4 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 31
  %5 = load ptr, ptr %jfd, align 8
  %call = call i32 @sqlite3OsFileSize(ptr noundef %5, ptr noundef %szJ)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %end_playback

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 57
  %8 = load ptr, ptr %pTmpSpace, align 8
  store ptr %8, ptr %zMaster, align 8
  %9 = load ptr, ptr %pPager.addr, align 8
  %jfd2 = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 31
  %10 = load ptr, ptr %jfd2, align 8
  %11 = load ptr, ptr %zMaster, align 8
  %12 = load ptr, ptr %pPager.addr, align 8
  %pVfs3 = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVfs3, align 8
  %mxPathname = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %mxPathname, align 8
  %add = add nsw i32 %14, 1
  %call4 = call i32 @readMasterJournal(ptr noundef %10, ptr noundef %11, i32 noundef %add)
  store i32 %call4, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp5 = icmp eq i32 %15, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %16 = load ptr, ptr %zMaster, align 8
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 0
  %17 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %17 to i32
  %tobool = icmp ne i32 %conv, 0
  br i1 %tobool, label %if.then6, label %if.end8

if.then6:                                         ; preds = %land.lhs.true
  %18 = load ptr, ptr %pVfs, align 8
  %19 = load ptr, ptr %zMaster, align 8
  %call7 = call i32 @sqlite3OsAccess(ptr noundef %18, ptr noundef %19, i32 noundef 0, ptr noundef %res)
  store i32 %call7, ptr %rc, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  store ptr null, ptr %zMaster, align 8
  %20 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %20, 0
  br i1 %cmp9, label %if.then12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end8
  %21 = load i32, ptr %res, align 4
  %tobool11 = icmp ne i32 %21, 0
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %lor.lhs.false, %if.end8
  br label %end_playback

if.end13:                                         ; preds = %lor.lhs.false
  %22 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 33
  store i64 0, ptr %journalOff, align 8
  %23 = load i32, ptr %isHot.addr, align 4
  store i32 %23, ptr %needPagerReset, align 4
  br label %while.body

while.body:                                       ; preds = %for.end, %if.end13
  %24 = load ptr, ptr %pPager.addr, align 8
  %25 = load i32, ptr %isHot.addr, align 4
  %26 = load i64, ptr %szJ, align 8
  %call14 = call i32 @readJournalHdr(ptr noundef %24, i32 noundef %25, i64 noundef %26, ptr noundef %nRec, ptr noundef %mxPg)
  store i32 %call14, ptr %rc, align 4
  %27 = load i32, ptr %rc, align 4
  %cmp15 = icmp ne i32 %27, 0
  br i1 %cmp15, label %if.then17, label %if.end22

if.then17:                                        ; preds = %while.body
  %28 = load i32, ptr %rc, align 4
  %cmp18 = icmp eq i32 %28, 101
  br i1 %cmp18, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.then17
  store i32 0, ptr %rc, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.then17
  br label %end_playback

if.end22:                                         ; preds = %while.body
  %29 = load i32, ptr %nRec, align 4
  %cmp23 = icmp eq i32 %29, -1
  br i1 %cmp23, label %if.then25, label %if.end31

if.then25:                                        ; preds = %if.end22
  %30 = load i64, ptr %szJ, align 8
  %31 = load ptr, ptr %pPager.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.Pager, ptr %31, i32 0, i32 46
  %32 = load i32, ptr %sectorSize, align 8
  %conv26 = zext i32 %32 to i64
  %sub = sub nsw i64 %30, %conv26
  %33 = load ptr, ptr %pPager.addr, align 8
  %pageSize27 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 47
  %34 = load i32, ptr %pageSize27, align 4
  %add28 = add nsw i32 %34, 8
  %conv29 = sext i32 %add28 to i64
  %div = sdiv i64 %sub, %conv29
  %conv30 = trunc i64 %div to i32
  store i32 %conv30, ptr %nRec, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end22
  %35 = load i32, ptr %nRec, align 4
  %cmp32 = icmp eq i32 %35, 0
  br i1 %cmp32, label %land.lhs.true34, label %if.end51

land.lhs.true34:                                  ; preds = %if.end31
  %36 = load i32, ptr %isHot.addr, align 4
  %tobool35 = icmp ne i32 %36, 0
  br i1 %tobool35, label %if.end51, label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true34
  %37 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 34
  %38 = load i64, ptr %journalHdr, align 8
  %39 = load ptr, ptr %pPager.addr, align 8
  %sectorSize37 = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 46
  %40 = load i32, ptr %sectorSize37, align 8
  %conv38 = zext i32 %40 to i64
  %add39 = add nsw i64 %38, %conv38
  %41 = load ptr, ptr %pPager.addr, align 8
  %journalOff40 = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 33
  %42 = load i64, ptr %journalOff40, align 8
  %cmp41 = icmp eq i64 %add39, %42
  br i1 %cmp41, label %if.then43, label %if.end51

if.then43:                                        ; preds = %land.lhs.true36
  %43 = load i64, ptr %szJ, align 8
  %44 = load ptr, ptr %pPager.addr, align 8
  %journalOff44 = getelementptr inbounds nuw %struct.Pager, ptr %44, i32 0, i32 33
  %45 = load i64, ptr %journalOff44, align 8
  %sub45 = sub nsw i64 %43, %45
  %46 = load ptr, ptr %pPager.addr, align 8
  %pageSize46 = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 47
  %47 = load i32, ptr %pageSize46, align 4
  %add47 = add nsw i32 %47, 8
  %conv48 = sext i32 %add47 to i64
  %div49 = sdiv i64 %sub45, %conv48
  %conv50 = trunc i64 %div49 to i32
  store i32 %conv50, ptr %nRec, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then43, %land.lhs.true36, %land.lhs.true34, %if.end31
  %48 = load ptr, ptr %pPager.addr, align 8
  %journalOff52 = getelementptr inbounds nuw %struct.Pager, ptr %48, i32 0, i32 33
  %49 = load i64, ptr %journalOff52, align 8
  %50 = load ptr, ptr %pPager.addr, align 8
  %sectorSize53 = getelementptr inbounds nuw %struct.Pager, ptr %50, i32 0, i32 46
  %51 = load i32, ptr %sectorSize53, align 8
  %conv54 = zext i32 %51 to i64
  %cmp55 = icmp eq i64 %49, %conv54
  br i1 %cmp55, label %if.then57, label %if.end63

if.then57:                                        ; preds = %if.end51
  %52 = load ptr, ptr %pPager.addr, align 8
  %53 = load i32, ptr %mxPg, align 4
  %call58 = call i32 @pager_truncate(ptr noundef %52, i32 noundef %53)
  store i32 %call58, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp59 = icmp ne i32 %54, 0
  br i1 %cmp59, label %if.then61, label %if.end62

if.then61:                                        ; preds = %if.then57
  br label %end_playback

if.end62:                                         ; preds = %if.then57
  %55 = load i32, ptr %mxPg, align 4
  %56 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %56, i32 0, i32 21
  store i32 %55, ptr %dbSize, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end51
  store i32 0, ptr %u, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end63
  %57 = load i32, ptr %u, align 4
  %58 = load i32, ptr %nRec, align 4
  %cmp64 = icmp ult i32 %57, %58
  br i1 %cmp64, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load i32, ptr %needPagerReset, align 4
  %tobool66 = icmp ne i32 %59, 0
  br i1 %tobool66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %for.body
  %60 = load ptr, ptr %pPager.addr, align 8
  call void @pager_reset(ptr noundef %60)
  store i32 0, ptr %needPagerReset, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %for.body
  %61 = load ptr, ptr %pPager.addr, align 8
  %62 = load ptr, ptr %pPager.addr, align 8
  %journalOff69 = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 33
  %call70 = call i32 @pager_playback_one_page(ptr noundef %61, ptr noundef %journalOff69, ptr noundef null, i32 noundef 1, i32 noundef 0)
  store i32 %call70, ptr %rc, align 4
  %63 = load i32, ptr %rc, align 4
  %cmp71 = icmp eq i32 %63, 0
  br i1 %cmp71, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end68
  %64 = load i32, ptr %nPlayback, align 4
  %inc = add nsw i32 %64, 1
  store i32 %inc, ptr %nPlayback, align 4
  br label %if.end83

if.else:                                          ; preds = %if.end68
  %65 = load i32, ptr %rc, align 4
  %cmp74 = icmp eq i32 %65, 101
  br i1 %cmp74, label %if.then76, label %if.else78

if.then76:                                        ; preds = %if.else
  %66 = load i64, ptr %szJ, align 8
  %67 = load ptr, ptr %pPager.addr, align 8
  %journalOff77 = getelementptr inbounds nuw %struct.Pager, ptr %67, i32 0, i32 33
  store i64 %66, ptr %journalOff77, align 8
  br label %for.end

if.else78:                                        ; preds = %if.else
  %68 = load i32, ptr %rc, align 4
  %cmp79 = icmp eq i32 %68, 522
  br i1 %cmp79, label %if.then81, label %if.else82

if.then81:                                        ; preds = %if.else78
  store i32 0, ptr %rc, align 4
  br label %end_playback

if.else82:                                        ; preds = %if.else78
  br label %end_playback

if.end83:                                         ; preds = %if.then73
  br label %for.inc

for.inc:                                          ; preds = %if.end83
  %69 = load i32, ptr %u, align 4
  %inc84 = add i32 %69, 1
  store i32 %inc84, ptr %u, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then76, %for.cond
  br label %while.body

end_playback:                                     ; preds = %if.else82, %if.then81, %if.then61, %if.end21, %if.then12, %if.then
  %70 = load i32, ptr %rc, align 4
  %cmp85 = icmp eq i32 %70, 0
  br i1 %cmp85, label %if.then87, label %if.end89

if.then87:                                        ; preds = %end_playback
  %71 = load ptr, ptr %pPager.addr, align 8
  %call88 = call i32 @sqlite3PagerSetPagesize(ptr noundef %71, ptr noundef %savedPageSize, i32 noundef -1)
  store i32 %call88, ptr %rc, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %end_playback
  %72 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %72, i32 0, i32 9
  %73 = load i8, ptr %tempFile, align 8
  %74 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone = getelementptr inbounds nuw %struct.Pager, ptr %74, i32 0, i32 15
  store i8 %73, ptr %changeCountDone, align 2
  %75 = load i32, ptr %rc, align 4
  %cmp90 = icmp eq i32 %75, 0
  br i1 %cmp90, label %if.then92, label %if.end99

if.then92:                                        ; preds = %if.end89
  %76 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace93 = getelementptr inbounds nuw %struct.Pager, ptr %76, i32 0, i32 57
  %77 = load ptr, ptr %pTmpSpace93, align 8
  store ptr %77, ptr %zMaster, align 8
  %78 = load ptr, ptr %pPager.addr, align 8
  %jfd94 = getelementptr inbounds nuw %struct.Pager, ptr %78, i32 0, i32 31
  %79 = load ptr, ptr %jfd94, align 8
  %80 = load ptr, ptr %zMaster, align 8
  %81 = load ptr, ptr %pPager.addr, align 8
  %pVfs95 = getelementptr inbounds nuw %struct.Pager, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %pVfs95, align 8
  %mxPathname96 = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %82, i32 0, i32 2
  %83 = load i32, ptr %mxPathname96, align 8
  %add97 = add nsw i32 %83, 1
  %call98 = call i32 @readMasterJournal(ptr noundef %79, ptr noundef %80, i32 noundef %add97)
  store i32 %call98, ptr %rc, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then92, %if.end89
  %84 = load i32, ptr %rc, align 4
  %cmp100 = icmp eq i32 %84, 0
  br i1 %cmp100, label %land.lhs.true102, label %if.end113

land.lhs.true102:                                 ; preds = %if.end99
  %85 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %85, i32 0, i32 13
  %86 = load i8, ptr %eState, align 4
  %conv103 = zext i8 %86 to i32
  %cmp104 = icmp sge i32 %conv103, 4
  br i1 %cmp104, label %if.then111, label %lor.lhs.false106

lor.lhs.false106:                                 ; preds = %land.lhs.true102
  %87 = load ptr, ptr %pPager.addr, align 8
  %eState107 = getelementptr inbounds nuw %struct.Pager, ptr %87, i32 0, i32 13
  %88 = load i8, ptr %eState107, align 4
  %conv108 = zext i8 %88 to i32
  %cmp109 = icmp eq i32 %conv108, 0
  br i1 %cmp109, label %if.then111, label %if.end113

if.then111:                                       ; preds = %lor.lhs.false106, %land.lhs.true102
  %89 = load ptr, ptr %pPager.addr, align 8
  %call112 = call i32 @sqlite3PagerSync(ptr noundef %89, ptr noundef null)
  store i32 %call112, ptr %rc, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %lor.lhs.false106, %if.end99
  %90 = load i32, ptr %rc, align 4
  %cmp114 = icmp eq i32 %90, 0
  br i1 %cmp114, label %if.then116, label %if.end122

if.then116:                                       ; preds = %if.end113
  %91 = load ptr, ptr %pPager.addr, align 8
  %92 = load ptr, ptr %zMaster, align 8
  %arrayidx117 = getelementptr inbounds i8, ptr %92, i64 0
  %93 = load i8, ptr %arrayidx117, align 1
  %conv118 = sext i8 %93 to i32
  %cmp119 = icmp ne i32 %conv118, 0
  %conv120 = zext i1 %cmp119 to i32
  %call121 = call i32 @pager_end_transaction(ptr noundef %91, i32 noundef %conv120, i32 noundef 0)
  store i32 %call121, ptr %rc, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then116, %if.end113
  %94 = load i32, ptr %rc, align 4
  %cmp123 = icmp eq i32 %94, 0
  br i1 %cmp123, label %land.lhs.true125, label %if.end133

land.lhs.true125:                                 ; preds = %if.end122
  %95 = load ptr, ptr %zMaster, align 8
  %arrayidx126 = getelementptr inbounds i8, ptr %95, i64 0
  %96 = load i8, ptr %arrayidx126, align 1
  %conv127 = sext i8 %96 to i32
  %tobool128 = icmp ne i32 %conv127, 0
  br i1 %tobool128, label %land.lhs.true129, label %if.end133

land.lhs.true129:                                 ; preds = %land.lhs.true125
  %97 = load i32, ptr %res, align 4
  %tobool130 = icmp ne i32 %97, 0
  br i1 %tobool130, label %if.then131, label %if.end133

if.then131:                                       ; preds = %land.lhs.true129
  %98 = load ptr, ptr %pPager.addr, align 8
  %99 = load ptr, ptr %zMaster, align 8
  %call132 = call i32 @pager_delmaster(ptr noundef %98, ptr noundef %99)
  store i32 %call132, ptr %rc, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %land.lhs.true129, %land.lhs.true125, %if.end122
  %100 = load i32, ptr %isHot.addr, align 4
  %tobool134 = icmp ne i32 %100, 0
  br i1 %tobool134, label %land.lhs.true135, label %if.end138

land.lhs.true135:                                 ; preds = %if.end133
  %101 = load i32, ptr %nPlayback, align 4
  %tobool136 = icmp ne i32 %101, 0
  br i1 %tobool136, label %if.then137, label %if.end138

if.then137:                                       ; preds = %land.lhs.true135
  %102 = load i32, ptr %nPlayback, align 4
  %103 = load ptr, ptr %pPager.addr, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %103, i32 0, i32 51
  %104 = load ptr, ptr %zJournal, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 539, ptr noundef @.str.102, i32 noundef %102, ptr noundef %104)
  br label %if.end138

if.end138:                                        ; preds = %if.then137, %land.lhs.true135, %if.end133
  %105 = load ptr, ptr %pPager.addr, align 8
  call void @setSectorSize(ptr noundef %105)
  %106 = load i32, ptr %rc, align 4
  ret i32 %106
}

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_playback_one_page(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @readJournalHdr(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @readMasterJournal(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_truncate(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_delmaster(ptr noundef, ptr noundef) #0

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
