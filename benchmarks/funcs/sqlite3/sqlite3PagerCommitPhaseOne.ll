; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.PgHdr = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, ptr }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerGet(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PagerUnref(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerCommitPhaseOne(ptr noundef %pPager, ptr noundef %zMaster, i32 noundef %noSync) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %zMaster.addr = alloca ptr, align 8
  %noSync.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pList = alloca ptr, align 8
  %pPageOne = alloca ptr, align 8
  %nNew = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %zMaster, ptr %zMaster.addr, align 8
  store i32 %noSync, ptr %noSync.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 25
  %1 = load i32, ptr %errCode, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %errCode1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 25
  %3 = load i32, ptr %errCode1, align 4
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call = call i32 @sqlite3FaultSim(i32 noundef 400)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 10, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 13
  %5 = load i8, ptr %eState, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp slt i32 %conv, 3
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end4
  %6 = load ptr, ptr %pPager.addr, align 8
  %call8 = call i32 @pagerFlushOnCommit(ptr noundef %6, i32 noundef 1)
  %cmp9 = icmp eq i32 0, %call8
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  %7 = load ptr, ptr %pPager.addr, align 8
  %pBackup = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 35
  %8 = load ptr, ptr %pBackup, align 8
  call void @sqlite3BackupRestart(ptr noundef %8)
  br label %if.end73

if.else:                                          ; preds = %if.end7
  %9 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 59
  %10 = load ptr, ptr %pWal, align 8
  %cmp12 = icmp ne ptr %10, null
  br i1 %cmp12, label %if.then14, label %if.else30

if.then14:                                        ; preds = %if.else
  store ptr null, ptr %pPageOne, align 8
  %11 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 58
  %12 = load ptr, ptr %pPCache, align 8
  %call15 = call ptr @sqlite3PcacheDirtyList(ptr noundef %12)
  store ptr %call15, ptr %pList, align 8
  %13 = load ptr, ptr %pList, align 8
  %cmp16 = icmp eq ptr %13, null
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then14
  %14 = load ptr, ptr %pPager.addr, align 8
  %call19 = call i32 @sqlite3PagerGet(ptr noundef %14, i32 noundef 1, ptr noundef %pPageOne, i32 noundef 0)
  store i32 %call19, ptr %rc, align 4
  %15 = load ptr, ptr %pPageOne, align 8
  store ptr %15, ptr %pList, align 8
  %16 = load ptr, ptr %pList, align 8
  %pDirty = getelementptr inbounds nuw %struct.PgHdr, ptr %16, i32 0, i32 4
  store ptr null, ptr %pDirty, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then14
  %17 = load ptr, ptr %pList, align 8
  %tobool21 = icmp ne ptr %17, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %18 = load ptr, ptr %pPager.addr, align 8
  %19 = load ptr, ptr %pList, align 8
  %20 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %20, i32 0, i32 21
  %21 = load i32, ptr %dbSize, align 4
  %call23 = call i32 @pagerWalFrames(ptr noundef %18, ptr noundef %19, i32 noundef %21, i32 noundef 1)
  store i32 %call23, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %22 = load ptr, ptr %pPageOne, align 8
  call void @sqlite3PagerUnref(ptr noundef %22)
  %23 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %23, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %24 = load ptr, ptr %pPager.addr, align 8
  %pPCache28 = getelementptr inbounds nuw %struct.Pager, ptr %24, i32 0, i32 58
  %25 = load ptr, ptr %pPCache28, align 8
  call void @sqlite3PcacheCleanAll(ptr noundef %25)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  br label %if.end72

if.else30:                                        ; preds = %if.else
  %26 = load ptr, ptr %pPager.addr, align 8
  %call31 = call i32 @pager_incr_changecounter(ptr noundef %26, i32 noundef 0)
  store i32 %call31, ptr %rc, align 4
  %27 = load i32, ptr %rc, align 4
  %cmp32 = icmp ne i32 %27, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.else30
  br label %commit_phase_one_exit

if.end35:                                         ; preds = %if.else30
  %28 = load ptr, ptr %pPager.addr, align 8
  %29 = load ptr, ptr %zMaster.addr, align 8
  %call36 = call i32 @writeMasterJournal(ptr noundef %28, ptr noundef %29)
  store i32 %call36, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp37 = icmp ne i32 %30, 0
  br i1 %cmp37, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end35
  br label %commit_phase_one_exit

if.end40:                                         ; preds = %if.end35
  %31 = load ptr, ptr %pPager.addr, align 8
  %call41 = call i32 @syncJournal(ptr noundef %31, i32 noundef 0)
  store i32 %call41, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp42 = icmp ne i32 %32, 0
  br i1 %cmp42, label %if.then44, label %if.end45

if.then44:                                        ; preds = %if.end40
  br label %commit_phase_one_exit

if.end45:                                         ; preds = %if.end40
  %33 = load ptr, ptr %pPager.addr, align 8
  %pPCache46 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 58
  %34 = load ptr, ptr %pPCache46, align 8
  %call47 = call ptr @sqlite3PcacheDirtyList(ptr noundef %34)
  store ptr %call47, ptr %pList, align 8
  %35 = load ptr, ptr %pPager.addr, align 8
  %36 = load ptr, ptr %pList, align 8
  %call48 = call i32 @pager_write_pagelist(ptr noundef %35, ptr noundef %36)
  store i32 %call48, ptr %rc, align 4
  %37 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %37, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end45
  br label %commit_phase_one_exit

if.end52:                                         ; preds = %if.end45
  %38 = load ptr, ptr %pPager.addr, align 8
  %pPCache53 = getelementptr inbounds nuw %struct.Pager, ptr %38, i32 0, i32 58
  %39 = load ptr, ptr %pPCache53, align 8
  call void @sqlite3PcacheCleanAll(ptr noundef %39)
  %40 = load ptr, ptr %pPager.addr, align 8
  %dbSize54 = getelementptr inbounds nuw %struct.Pager, ptr %40, i32 0, i32 21
  %41 = load i32, ptr %dbSize54, align 4
  %42 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize = getelementptr inbounds nuw %struct.Pager, ptr %42, i32 0, i32 23
  %43 = load i32, ptr %dbFileSize, align 4
  %cmp55 = icmp ugt i32 %41, %43
  br i1 %cmp55, label %if.then57, label %if.end67

if.then57:                                        ; preds = %if.end52
  %44 = load ptr, ptr %pPager.addr, align 8
  %dbSize58 = getelementptr inbounds nuw %struct.Pager, ptr %44, i32 0, i32 21
  %45 = load i32, ptr %dbSize58, align 4
  %46 = load ptr, ptr %pPager.addr, align 8
  %dbSize59 = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 21
  %47 = load i32, ptr %dbSize59, align 4
  %48 = load i32, ptr @sqlite3PendingByte, align 4
  %49 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %49, i32 0, i32 47
  %50 = load i32, ptr %pageSize, align 4
  %div = sdiv i32 %48, %50
  %add = add nsw i32 %div, 1
  %cmp60 = icmp eq i32 %47, %add
  %conv61 = zext i1 %cmp60 to i32
  %sub = sub i32 %45, %conv61
  store i32 %sub, ptr %nNew, align 4
  %51 = load ptr, ptr %pPager.addr, align 8
  %52 = load i32, ptr %nNew, align 4
  %call62 = call i32 @pager_truncate(ptr noundef %51, i32 noundef %52)
  store i32 %call62, ptr %rc, align 4
  %53 = load i32, ptr %rc, align 4
  %cmp63 = icmp ne i32 %53, 0
  br i1 %cmp63, label %if.then65, label %if.end66

if.then65:                                        ; preds = %if.then57
  br label %commit_phase_one_exit

if.end66:                                         ; preds = %if.then57
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.end52
  %54 = load i32, ptr %noSync.addr, align 4
  %tobool68 = icmp ne i32 %54, 0
  br i1 %tobool68, label %if.end71, label %if.then69

if.then69:                                        ; preds = %if.end67
  %55 = load ptr, ptr %pPager.addr, align 8
  %56 = load ptr, ptr %zMaster.addr, align 8
  %call70 = call i32 @sqlite3PagerSync(ptr noundef %55, ptr noundef %56)
  store i32 %call70, ptr %rc, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end67
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end29
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then11
  br label %commit_phase_one_exit

commit_phase_one_exit:                            ; preds = %if.end73, %if.then65, %if.then51, %if.then44, %if.then39, %if.then34
  %57 = load i32, ptr %rc, align 4
  %cmp74 = icmp eq i32 %57, 0
  br i1 %cmp74, label %land.lhs.true, label %if.end81

land.lhs.true:                                    ; preds = %commit_phase_one_exit
  %58 = load ptr, ptr %pPager.addr, align 8
  %pWal76 = getelementptr inbounds nuw %struct.Pager, ptr %58, i32 0, i32 59
  %59 = load ptr, ptr %pWal76, align 8
  %cmp77 = icmp ne ptr %59, null
  br i1 %cmp77, label %if.end81, label %if.then79

if.then79:                                        ; preds = %land.lhs.true
  %60 = load ptr, ptr %pPager.addr, align 8
  %eState80 = getelementptr inbounds nuw %struct.Pager, ptr %60, i32 0, i32 13
  store i8 5, ptr %eState80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.lhs.true, %commit_phase_one_exit
  %61 = load i32, ptr %rc, align 4
  store i32 %61, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end81, %if.then6, %if.then3, %if.then
  %62 = load i32, ptr %retval, align 4
  ret i32 %62
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerSync(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerWalFrames(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @syncJournal(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_write_pagelist(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PcacheDirtyList(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BackupRestart(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_truncate(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerFlushOnCommit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheCleanAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_incr_changecounter(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @writeMasterJournal(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
