; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsOpen(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_error(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsRead(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_wait_on_lock(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerLockDb(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @pager_unlock(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_playback(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @pager_reset(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerUnlockDb(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerSyncHotJournal(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerSharedLock(ptr noundef %pPager) #1 {
entry:
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %bHotJournal = alloca i32, align 4
  %pVfs = alloca ptr, align 8
  %bExists = alloca i32, align 4
  %fout = alloca i32, align 4
  %f = alloca i32, align 4
  %dbFileVers = alloca [16 x i8], align 16
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %pWal, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %if.end102, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %eState, align 4
  %conv = zext i8 %3 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br i1 %cmp1, label %if.then, label %if.end102

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %bHotJournal, align 4
  %4 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @pager_wait_on_lock(ptr noundef %4, i32 noundef 1)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  br label %failed

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %pPager.addr, align 8
  %eLock = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 14
  %7 = load i8, ptr %eLock, align 1
  %conv6 = zext i8 %7 to i32
  %cmp7 = icmp sle i32 %conv6, 1
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %8 = load ptr, ptr %pPager.addr, align 8
  %call10 = call i32 @hasHotJournal(ptr noundef %8, ptr noundef %bHotJournal)
  store i32 %call10, ptr %rc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end
  %9 = load i32, ptr %rc, align 4
  %cmp12 = icmp ne i32 %9, 0
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end11
  br label %failed

if.end15:                                         ; preds = %if.end11
  %10 = load i32, ptr %bHotJournal, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then16, label %if.end71

if.then16:                                        ; preds = %if.end15
  %11 = load ptr, ptr %pPager.addr, align 8
  %readOnly = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 11
  %12 = load i8, ptr %readOnly, align 2
  %tobool17 = icmp ne i8 %12, 0
  br i1 %tobool17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.then16
  store i32 776, ptr %rc, align 4
  br label %failed

if.end19:                                         ; preds = %if.then16
  %13 = load ptr, ptr %pPager.addr, align 8
  %call20 = call i32 @pagerLockDb(ptr noundef %13, i32 noundef 4)
  store i32 %call20, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp21 = icmp ne i32 %14, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.end19
  br label %failed

if.end24:                                         ; preds = %if.end19
  %15 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 31
  %16 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pMethods, align 8
  %cmp25 = icmp ne ptr %17, null
  br i1 %cmp25, label %if.end47, label %if.then27

if.then27:                                        ; preds = %if.end24
  %18 = load ptr, ptr %pPager.addr, align 8
  %pVfs28 = getelementptr inbounds nuw %struct.Pager, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVfs28, align 8
  store ptr %19, ptr %pVfs, align 8
  %20 = load ptr, ptr %pVfs, align 8
  %21 = load ptr, ptr %pPager.addr, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 51
  %22 = load ptr, ptr %zJournal, align 8
  %call29 = call i32 @sqlite3OsAccess(ptr noundef %20, ptr noundef %22, i32 noundef 0, ptr noundef %bExists)
  store i32 %call29, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp30 = icmp eq i32 %23, 0
  br i1 %cmp30, label %land.lhs.true32, label %if.end46

land.lhs.true32:                                  ; preds = %if.then27
  %24 = load i32, ptr %bExists, align 4
  %tobool33 = icmp ne i32 %24, 0
  br i1 %tobool33, label %if.then34, label %if.end46

if.then34:                                        ; preds = %land.lhs.true32
  store i32 0, ptr %fout, align 4
  store i32 2050, ptr %f, align 4
  %25 = load ptr, ptr %pVfs, align 8
  %26 = load ptr, ptr %pPager.addr, align 8
  %zJournal35 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 51
  %27 = load ptr, ptr %zJournal35, align 8
  %28 = load ptr, ptr %pPager.addr, align 8
  %jfd36 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 31
  %29 = load ptr, ptr %jfd36, align 8
  %30 = load i32, ptr %f, align 4
  %call37 = call i32 @sqlite3OsOpen(ptr noundef %25, ptr noundef %27, ptr noundef %29, i32 noundef %30, ptr noundef %fout)
  store i32 %call37, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp38 = icmp eq i32 %31, 0
  br i1 %cmp38, label %land.lhs.true40, label %if.end45

land.lhs.true40:                                  ; preds = %if.then34
  %32 = load i32, ptr %fout, align 4
  %and = and i32 %32, 1
  %tobool41 = icmp ne i32 %and, 0
  br i1 %tobool41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %land.lhs.true40
  %call43 = call i32 @sqlite3CantopenError(i32 noundef 56055)
  store i32 %call43, ptr %rc, align 4
  %33 = load ptr, ptr %pPager.addr, align 8
  %jfd44 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 31
  %34 = load ptr, ptr %jfd44, align 8
  call void @sqlite3OsClose(ptr noundef %34)
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %land.lhs.true40, %if.then34
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %land.lhs.true32, %if.then27
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end24
  %35 = load ptr, ptr %pPager.addr, align 8
  %jfd48 = getelementptr inbounds nuw %struct.Pager, ptr %35, i32 0, i32 31
  %36 = load ptr, ptr %jfd48, align 8
  %pMethods49 = getelementptr inbounds nuw %struct.sqlite3_file, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pMethods49, align 8
  %cmp50 = icmp ne ptr %37, null
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end47
  %38 = load ptr, ptr %pPager.addr, align 8
  %call53 = call i32 @pagerSyncHotJournal(ptr noundef %38)
  store i32 %call53, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp54 = icmp eq i32 %39, 0
  br i1 %cmp54, label %if.then56, label %if.end60

if.then56:                                        ; preds = %if.then52
  %40 = load ptr, ptr %pPager.addr, align 8
  %41 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %41, i32 0, i32 9
  %42 = load i8, ptr %tempFile, align 8
  %tobool57 = icmp ne i8 %42, 0
  %lnot = xor i1 %tobool57, true
  %lnot.ext = zext i1 %lnot to i32
  %call58 = call i32 @pager_playback(ptr noundef %40, i32 noundef %lnot.ext)
  store i32 %call58, ptr %rc, align 4
  %43 = load ptr, ptr %pPager.addr, align 8
  %eState59 = getelementptr inbounds nuw %struct.Pager, ptr %43, i32 0, i32 13
  store i8 0, ptr %eState59, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.then52
  br label %if.end65

if.else:                                          ; preds = %if.end47
  %44 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %44, i32 0, i32 1
  %45 = load i8, ptr %exclusiveMode, align 8
  %tobool61 = icmp ne i8 %45, 0
  br i1 %tobool61, label %if.end64, label %if.then62

if.then62:                                        ; preds = %if.else
  %46 = load ptr, ptr %pPager.addr, align 8
  %call63 = call i32 @pagerUnlockDb(ptr noundef %46, i32 noundef 1)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.else
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.end60
  %47 = load i32, ptr %rc, align 4
  %cmp66 = icmp ne i32 %47, 0
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  %48 = load ptr, ptr %pPager.addr, align 8
  %49 = load i32, ptr %rc, align 4
  %call69 = call i32 @pager_error(ptr noundef %48, i32 noundef %49)
  br label %failed

if.end70:                                         ; preds = %if.end65
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.end15
  %50 = load ptr, ptr %pPager.addr, align 8
  %tempFile72 = getelementptr inbounds nuw %struct.Pager, ptr %50, i32 0, i32 9
  %51 = load i8, ptr %tempFile72, align 8
  %tobool73 = icmp ne i8 %51, 0
  br i1 %tobool73, label %if.end100, label %land.lhs.true74

land.lhs.true74:                                  ; preds = %if.end71
  %52 = load ptr, ptr %pPager.addr, align 8
  %hasHeldSharedLock = getelementptr inbounds nuw %struct.Pager, ptr %52, i32 0, i32 20
  %53 = load i8, ptr %hasHeldSharedLock, align 1
  %conv75 = zext i8 %53 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  br i1 %tobool76, label %if.then77, label %if.end100

if.then77:                                        ; preds = %land.lhs.true74
  %54 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %54, i32 0, i32 30
  %55 = load ptr, ptr %fd, align 8
  %call78 = call i32 @sqlite3OsRead(ptr noundef %55, ptr noundef %dbFileVers, i32 noundef 16, i64 noundef 24)
  store i32 %call78, ptr %rc, align 4
  %56 = load i32, ptr %rc, align 4
  %cmp79 = icmp ne i32 %56, 0
  br i1 %cmp79, label %if.then81, label %if.end86

if.then81:                                        ; preds = %if.then77
  %57 = load i32, ptr %rc, align 4
  %cmp82 = icmp ne i32 %57, 522
  br i1 %cmp82, label %if.then84, label %if.end85

if.then84:                                        ; preds = %if.then81
  br label %failed

if.end85:                                         ; preds = %if.then81
  %arraydecay = getelementptr inbounds [16 x i8], ptr %dbFileVers, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %arraydecay, i8 0, i64 16, i1 false)
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then77
  %58 = load ptr, ptr %pPager.addr, align 8
  %dbFileVers87 = getelementptr inbounds nuw %struct.Pager, ptr %58, i32 0, i32 39
  %arraydecay88 = getelementptr inbounds [16 x i8], ptr %dbFileVers87, i64 0, i64 0
  %arraydecay89 = getelementptr inbounds [16 x i8], ptr %dbFileVers, i64 0, i64 0
  %call90 = call i32 @memcmp(ptr noundef %arraydecay88, ptr noundef %arraydecay89, i64 noundef 16) #3
  %cmp91 = icmp ne i32 %call90, 0
  br i1 %cmp91, label %if.then93, label %if.end99

if.then93:                                        ; preds = %if.end86
  %59 = load ptr, ptr %pPager.addr, align 8
  call void @pager_reset(ptr noundef %59)
  %60 = load ptr, ptr %pPager.addr, align 8
  %bUseFetch = getelementptr inbounds nuw %struct.Pager, ptr %60, i32 0, i32 19
  %61 = load i8, ptr %bUseFetch, align 2
  %tobool94 = icmp ne i8 %61, 0
  br i1 %tobool94, label %if.then95, label %if.end98

if.then95:                                        ; preds = %if.then93
  %62 = load ptr, ptr %pPager.addr, align 8
  %fd96 = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 30
  %63 = load ptr, ptr %fd96, align 8
  %call97 = call i32 @sqlite3OsUnfetch(ptr noundef %63, i64 noundef 0, ptr noundef null)
  br label %if.end98

if.end98:                                         ; preds = %if.then95, %if.then93
  br label %if.end99

if.end99:                                         ; preds = %if.end98, %if.end86
  br label %if.end100

if.end100:                                        ; preds = %if.end99, %land.lhs.true74, %if.end71
  %64 = load ptr, ptr %pPager.addr, align 8
  %call101 = call i32 @pagerOpenWalIfPresent(ptr noundef %64)
  store i32 %call101, ptr %rc, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.end100, %land.lhs.true, %entry
  %65 = load ptr, ptr %pPager.addr, align 8
  %pWal103 = getelementptr inbounds nuw %struct.Pager, ptr %65, i32 0, i32 59
  %66 = load ptr, ptr %pWal103, align 8
  %cmp104 = icmp ne ptr %66, null
  br i1 %cmp104, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.end102
  %67 = load ptr, ptr %pPager.addr, align 8
  %call107 = call i32 @pagerBeginReadTransaction(ptr noundef %67)
  store i32 %call107, ptr %rc, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.end102
  %68 = load ptr, ptr %pPager.addr, align 8
  %tempFile109 = getelementptr inbounds nuw %struct.Pager, ptr %68, i32 0, i32 9
  %69 = load i8, ptr %tempFile109, align 8
  %conv110 = zext i8 %69 to i32
  %cmp111 = icmp eq i32 %conv110, 0
  br i1 %cmp111, label %land.lhs.true113, label %if.end123

land.lhs.true113:                                 ; preds = %if.end108
  %70 = load ptr, ptr %pPager.addr, align 8
  %eState114 = getelementptr inbounds nuw %struct.Pager, ptr %70, i32 0, i32 13
  %71 = load i8, ptr %eState114, align 4
  %conv115 = zext i8 %71 to i32
  %cmp116 = icmp eq i32 %conv115, 0
  br i1 %cmp116, label %land.lhs.true118, label %if.end123

land.lhs.true118:                                 ; preds = %land.lhs.true113
  %72 = load i32, ptr %rc, align 4
  %cmp119 = icmp eq i32 %72, 0
  br i1 %cmp119, label %if.then121, label %if.end123

if.then121:                                       ; preds = %land.lhs.true118
  %73 = load ptr, ptr %pPager.addr, align 8
  %74 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %74, i32 0, i32 21
  %call122 = call i32 @pagerPagecount(ptr noundef %73, ptr noundef %dbSize)
  store i32 %call122, ptr %rc, align 4
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %land.lhs.true118, %land.lhs.true113, %if.end108
  br label %failed

failed:                                           ; preds = %if.end123, %if.then84, %if.then68, %if.then23, %if.then18, %if.then14, %if.then5
  %75 = load i32, ptr %rc, align 4
  %cmp124 = icmp ne i32 %75, 0
  br i1 %cmp124, label %if.then126, label %if.else127

if.then126:                                       ; preds = %failed
  %76 = load ptr, ptr %pPager.addr, align 8
  call void @pager_unlock(ptr noundef %76)
  br label %if.end130

if.else127:                                       ; preds = %failed
  %77 = load ptr, ptr %pPager.addr, align 8
  %eState128 = getelementptr inbounds nuw %struct.Pager, ptr %77, i32 0, i32 13
  store i8 1, ptr %eState128, align 4
  %78 = load ptr, ptr %pPager.addr, align 8
  %hasHeldSharedLock129 = getelementptr inbounds nuw %struct.Pager, ptr %78, i32 0, i32 20
  store i8 1, ptr %hasHeldSharedLock129, align 1
  br label %if.end130

if.end130:                                        ; preds = %if.else127, %if.then126
  %79 = load i32, ptr %rc, align 4
  ret i32 %79
}

; Function Attrs: nounwind uwtable
declare hidden i32 @hasHotJournal(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerOpenWalIfPresent(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerBeginReadTransaction(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerPagecount(ptr noundef, ptr noundef) #1

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
