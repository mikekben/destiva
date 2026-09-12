; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDeviceCharacteristics(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @setGetterMethod(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3WalEndReadTransaction(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsUnfetch(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @pager_unlock(ptr noundef %pPager) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iDc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 29
  %1 = load ptr, ptr %pInJournal, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %1)
  %2 = load ptr, ptr %pPager.addr, align 8
  %pInJournal1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 29
  store ptr null, ptr %pInJournal1, align 8
  %3 = load ptr, ptr %pPager.addr, align 8
  call void @releaseAllSavepoints(ptr noundef %3)
  %4 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 59
  %5 = load ptr, ptr %pWal, align 8
  %cmp = icmp ne ptr %5, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pPager.addr, align 8
  %pWal2 = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 59
  %7 = load ptr, ptr %pWal2, align 8
  call void @sqlite3WalEndReadTransaction(ptr noundef %7)
  %8 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 13
  store i8 0, ptr %eState, align 4
  br label %if.end22

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 1
  %10 = load i8, ptr %exclusiveMode, align 8
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.end21, label %if.then3

if.then3:                                         ; preds = %if.else
  %11 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 30
  %12 = load ptr, ptr %fd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pMethods, align 8
  %cmp4 = icmp ne ptr %13, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then3
  %14 = load ptr, ptr %pPager.addr, align 8
  %fd5 = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 30
  %15 = load ptr, ptr %fd5, align 8
  %call = call i32 @sqlite3OsDeviceCharacteristics(ptr noundef %15)
  br label %cond.end

cond.false:                                       ; preds = %if.then3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %iDc, align 4
  %16 = load i32, ptr %iDc, align 4
  %and = and i32 %16, 2048
  %cmp6 = icmp eq i32 0, %and
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %17 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 2
  %18 = load i8, ptr %journalMode, align 1
  %conv = zext i8 %18 to i32
  %and7 = and i32 %conv, 5
  %cmp8 = icmp ne i32 1, %and7
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %lor.lhs.false, %cond.end
  %19 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 31
  %20 = load ptr, ptr %jfd, align 8
  call void @sqlite3OsClose(ptr noundef %20)
  br label %if.end

if.end:                                           ; preds = %if.then10, %lor.lhs.false
  %21 = load ptr, ptr %pPager.addr, align 8
  %call11 = call i32 @pagerUnlockDb(ptr noundef %21, i32 noundef 0)
  store i32 %call11, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp12 = icmp ne i32 %22, 0
  br i1 %cmp12, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %if.end
  %23 = load ptr, ptr %pPager.addr, align 8
  %eState14 = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 13
  %24 = load i8, ptr %eState14, align 4
  %conv15 = zext i8 %24 to i32
  %cmp16 = icmp eq i32 %conv15, 6
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %pPager.addr, align 8
  %eLock = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 14
  store i8 5, ptr %eLock, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true, %if.end
  %26 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 15
  store i8 0, ptr %changeCountDone, align 2
  %27 = load ptr, ptr %pPager.addr, align 8
  %eState20 = getelementptr inbounds nuw %struct.Pager, ptr %27, i32 0, i32 13
  store i8 0, ptr %eState20, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then
  %28 = load ptr, ptr %pPager.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 25
  %29 = load i32, ptr %errCode, align 4
  %tobool23 = icmp ne i32 %29, 0
  br i1 %tobool23, label %if.then24, label %if.end46

if.then24:                                        ; preds = %if.end22
  %30 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 9
  %31 = load i8, ptr %tempFile, align 8
  %conv25 = zext i8 %31 to i32
  %cmp26 = icmp eq i32 %conv25, 0
  br i1 %cmp26, label %if.then28, label %if.else31

if.then28:                                        ; preds = %if.then24
  %32 = load ptr, ptr %pPager.addr, align 8
  call void @pager_reset(ptr noundef %32)
  %33 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone29 = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 15
  store i8 0, ptr %changeCountDone29, align 2
  %34 = load ptr, ptr %pPager.addr, align 8
  %eState30 = getelementptr inbounds nuw %struct.Pager, ptr %34, i32 0, i32 13
  store i8 0, ptr %eState30, align 4
  br label %if.end39

if.else31:                                        ; preds = %if.then24
  %35 = load ptr, ptr %pPager.addr, align 8
  %jfd32 = getelementptr inbounds nuw %struct.Pager, ptr %35, i32 0, i32 31
  %36 = load ptr, ptr %jfd32, align 8
  %pMethods33 = getelementptr inbounds nuw %struct.sqlite3_file, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pMethods33, align 8
  %cmp34 = icmp ne ptr %37, null
  %38 = zext i1 %cmp34 to i64
  %cond36 = select i1 %cmp34, i32 0, i32 1
  %conv37 = trunc i32 %cond36 to i8
  %39 = load ptr, ptr %pPager.addr, align 8
  %eState38 = getelementptr inbounds nuw %struct.Pager, ptr %39, i32 0, i32 13
  store i8 %conv37, ptr %eState38, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else31, %if.then28
  %40 = load ptr, ptr %pPager.addr, align 8
  %bUseFetch = getelementptr inbounds nuw %struct.Pager, ptr %40, i32 0, i32 19
  %41 = load i8, ptr %bUseFetch, align 2
  %tobool40 = icmp ne i8 %41, 0
  br i1 %tobool40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end39
  %42 = load ptr, ptr %pPager.addr, align 8
  %fd42 = getelementptr inbounds nuw %struct.Pager, ptr %42, i32 0, i32 30
  %43 = load ptr, ptr %fd42, align 8
  %call43 = call i32 @sqlite3OsUnfetch(ptr noundef %43, i64 noundef 0, ptr noundef null)
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end39
  %44 = load ptr, ptr %pPager.addr, align 8
  %errCode45 = getelementptr inbounds nuw %struct.Pager, ptr %44, i32 0, i32 25
  store i32 0, ptr %errCode45, align 4
  %45 = load ptr, ptr %pPager.addr, align 8
  call void @setGetterMethod(ptr noundef %45)
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %if.end22
  %46 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %46, i32 0, i32 33
  store i64 0, ptr %journalOff, align 8
  %47 = load ptr, ptr %pPager.addr, align 8
  %journalHdr = getelementptr inbounds nuw %struct.Pager, ptr %47, i32 0, i32 34
  store i64 0, ptr %journalHdr, align 8
  %48 = load ptr, ptr %pPager.addr, align 8
  %setMaster = getelementptr inbounds nuw %struct.Pager, ptr %48, i32 0, i32 16
  store i8 0, ptr %setMaster, align 1
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseAllSavepoints(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerUnlockDb(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
