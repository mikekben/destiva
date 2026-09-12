; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFileControl(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsSync(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalEndWriteTransaction(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsTruncate(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @pager_end_transaction(ptr noundef %pPager, i32 noundef %hasMaster, i32 noundef %bCommit) #0 {
entry:
  %retval = alloca i32, align 4
  %pPager.addr = alloca ptr, align 8
  %hasMaster.addr = alloca i32, align 4
  %bCommit.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %rc2 = alloca i32, align 4
  %bDelete = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store i32 %hasMaster, ptr %hasMaster.addr, align 4
  store i32 %bCommit, ptr %bCommit.addr, align 4
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %rc2, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %eState = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 13
  %1 = load i8, ptr %eState, align 4
  %conv = zext i8 %1 to i32
  %cmp = icmp slt i32 %conv, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %eLock = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 14
  %3 = load i8, ptr %eLock, align 1
  %conv2 = zext i8 %3 to i32
  %cmp3 = icmp slt i32 %conv2, 2
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %pPager.addr, align 8
  call void @releaseAllSavepoints(ptr noundef %4)
  %5 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %5, i32 0, i32 31
  %6 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pMethods, align 8
  %cmp5 = icmp ne ptr %7, null
  br i1 %cmp5, label %if.then7, label %if.end63

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %pPager.addr, align 8
  %jfd8 = getelementptr inbounds nuw %struct.Pager, ptr %8, i32 0, i32 31
  %9 = load ptr, ptr %jfd8, align 8
  %call = call i32 @sqlite3JournalIsInMemory(ptr noundef %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %10 = load ptr, ptr %pPager.addr, align 8
  %jfd10 = getelementptr inbounds nuw %struct.Pager, ptr %10, i32 0, i32 31
  %11 = load ptr, ptr %jfd10, align 8
  call void @sqlite3OsClose(ptr noundef %11)
  br label %if.end62

if.else:                                          ; preds = %if.then7
  %12 = load ptr, ptr %pPager.addr, align 8
  %journalMode = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 2
  %13 = load i8, ptr %journalMode, align 1
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp eq i32 %conv11, 3
  br i1 %cmp12, label %if.then14, label %if.else33

if.then14:                                        ; preds = %if.else
  %14 = load ptr, ptr %pPager.addr, align 8
  %journalOff = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 33
  %15 = load i64, ptr %journalOff, align 8
  %cmp15 = icmp eq i64 %15, 0
  br i1 %cmp15, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.then14
  store i32 0, ptr %rc, align 4
  br label %if.end31

if.else18:                                        ; preds = %if.then14
  %16 = load ptr, ptr %pPager.addr, align 8
  %jfd19 = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 31
  %17 = load ptr, ptr %jfd19, align 8
  %call20 = call i32 @sqlite3OsTruncate(ptr noundef %17, i64 noundef 0)
  store i32 %call20, ptr %rc, align 4
  %18 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %18, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.end30

land.lhs.true23:                                  ; preds = %if.else18
  %19 = load ptr, ptr %pPager.addr, align 8
  %fullSync = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 5
  %20 = load i8, ptr %fullSync, align 4
  %conv24 = zext i8 %20 to i32
  %tobool25 = icmp ne i32 %conv24, 0
  br i1 %tobool25, label %if.then26, label %if.end30

if.then26:                                        ; preds = %land.lhs.true23
  %21 = load ptr, ptr %pPager.addr, align 8
  %jfd27 = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 31
  %22 = load ptr, ptr %jfd27, align 8
  %23 = load ptr, ptr %pPager.addr, align 8
  %syncFlags = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 7
  %24 = load i8, ptr %syncFlags, align 2
  %conv28 = zext i8 %24 to i32
  %call29 = call i32 @sqlite3OsSync(ptr noundef %22, i32 noundef %conv28)
  store i32 %call29, ptr %rc, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %land.lhs.true23, %if.else18
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then17
  %25 = load ptr, ptr %pPager.addr, align 8
  %journalOff32 = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 33
  store i64 0, ptr %journalOff32, align 8
  br label %if.end61

if.else33:                                        ; preds = %if.else
  %26 = load ptr, ptr %pPager.addr, align 8
  %journalMode34 = getelementptr inbounds nuw %struct.Pager, ptr %26, i32 0, i32 2
  %27 = load i8, ptr %journalMode34, align 1
  %conv35 = zext i8 %27 to i32
  %cmp36 = icmp eq i32 %conv35, 1
  br i1 %cmp36, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else33
  %28 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 1
  %29 = load i8, ptr %exclusiveMode, align 8
  %conv38 = zext i8 %29 to i32
  %tobool39 = icmp ne i32 %conv38, 0
  br i1 %tobool39, label %land.lhs.true40, label %if.else51

land.lhs.true40:                                  ; preds = %lor.lhs.false
  %30 = load ptr, ptr %pPager.addr, align 8
  %journalMode41 = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 2
  %31 = load i8, ptr %journalMode41, align 1
  %conv42 = zext i8 %31 to i32
  %cmp43 = icmp ne i32 %conv42, 5
  br i1 %cmp43, label %if.then45, label %if.else51

if.then45:                                        ; preds = %land.lhs.true40, %if.else33
  %32 = load ptr, ptr %pPager.addr, align 8
  %33 = load i32, ptr %hasMaster.addr, align 4
  %tobool46 = icmp ne i32 %33, 0
  br i1 %tobool46, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then45
  %34 = load ptr, ptr %pPager.addr, align 8
  %tempFile = getelementptr inbounds nuw %struct.Pager, ptr %34, i32 0, i32 9
  %35 = load i8, ptr %tempFile, align 8
  %conv47 = zext i8 %35 to i32
  %tobool48 = icmp ne i32 %conv47, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then45
  %36 = phi i1 [ true, %if.then45 ], [ %tobool48, %lor.rhs ]
  %lor.ext = zext i1 %36 to i32
  %call49 = call i32 @zeroJournalHdr(ptr noundef %32, i32 noundef %lor.ext)
  store i32 %call49, ptr %rc, align 4
  %37 = load ptr, ptr %pPager.addr, align 8
  %journalOff50 = getelementptr inbounds nuw %struct.Pager, ptr %37, i32 0, i32 33
  store i64 0, ptr %journalOff50, align 8
  br label %if.end60

if.else51:                                        ; preds = %land.lhs.true40, %lor.lhs.false
  %38 = load ptr, ptr %pPager.addr, align 8
  %tempFile52 = getelementptr inbounds nuw %struct.Pager, ptr %38, i32 0, i32 9
  %39 = load i8, ptr %tempFile52, align 8
  %tobool53 = icmp ne i8 %39, 0
  %lnot = xor i1 %tobool53, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %bDelete, align 4
  %40 = load ptr, ptr %pPager.addr, align 8
  %jfd54 = getelementptr inbounds nuw %struct.Pager, ptr %40, i32 0, i32 31
  %41 = load ptr, ptr %jfd54, align 8
  call void @sqlite3OsClose(ptr noundef %41)
  %42 = load i32, ptr %bDelete, align 4
  %tobool55 = icmp ne i32 %42, 0
  br i1 %tobool55, label %if.then56, label %if.end59

if.then56:                                        ; preds = %if.else51
  %43 = load ptr, ptr %pPager.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Pager, ptr %43, i32 0, i32 0
  %44 = load ptr, ptr %pVfs, align 8
  %45 = load ptr, ptr %pPager.addr, align 8
  %zJournal = getelementptr inbounds nuw %struct.Pager, ptr %45, i32 0, i32 51
  %46 = load ptr, ptr %zJournal, align 8
  %47 = load ptr, ptr %pPager.addr, align 8
  %extraSync = getelementptr inbounds nuw %struct.Pager, ptr %47, i32 0, i32 6
  %48 = load i8, ptr %extraSync, align 1
  %conv57 = zext i8 %48 to i32
  %call58 = call i32 @sqlite3OsDelete(ptr noundef %44, ptr noundef %46, i32 noundef %conv57)
  store i32 %call58, ptr %rc, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then56, %if.else51
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %lor.end
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.end31
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then9
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end
  %49 = load ptr, ptr %pPager.addr, align 8
  %pInJournal = getelementptr inbounds nuw %struct.Pager, ptr %49, i32 0, i32 29
  %50 = load ptr, ptr %pInJournal, align 8
  call void @sqlite3BitvecDestroy(ptr noundef %50)
  %51 = load ptr, ptr %pPager.addr, align 8
  %pInJournal64 = getelementptr inbounds nuw %struct.Pager, ptr %51, i32 0, i32 29
  store ptr null, ptr %pInJournal64, align 8
  %52 = load ptr, ptr %pPager.addr, align 8
  %nRec = getelementptr inbounds nuw %struct.Pager, ptr %52, i32 0, i32 26
  store i32 0, ptr %nRec, align 8
  %53 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %53, 0
  br i1 %cmp65, label %if.then67, label %if.end78

if.then67:                                        ; preds = %if.end63
  %54 = load ptr, ptr %pPager.addr, align 8
  %memDb = getelementptr inbounds nuw %struct.Pager, ptr %54, i32 0, i32 12
  %55 = load i8, ptr %memDb, align 1
  %conv68 = zext i8 %55 to i32
  %tobool69 = icmp ne i32 %conv68, 0
  br i1 %tobool69, label %if.then73, label %lor.lhs.false70

lor.lhs.false70:                                  ; preds = %if.then67
  %56 = load ptr, ptr %pPager.addr, align 8
  %57 = load i32, ptr %bCommit.addr, align 4
  %call71 = call i32 @pagerFlushOnCommit(ptr noundef %56, i32 noundef %57)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.then73, label %if.else74

if.then73:                                        ; preds = %lor.lhs.false70, %if.then67
  %58 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %58, i32 0, i32 58
  %59 = load ptr, ptr %pPCache, align 8
  call void @sqlite3PcacheCleanAll(ptr noundef %59)
  br label %if.end76

if.else74:                                        ; preds = %lor.lhs.false70
  %60 = load ptr, ptr %pPager.addr, align 8
  %pPCache75 = getelementptr inbounds nuw %struct.Pager, ptr %60, i32 0, i32 58
  %61 = load ptr, ptr %pPCache75, align 8
  call void @sqlite3PcacheClearWritable(ptr noundef %61)
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then73
  %62 = load ptr, ptr %pPager.addr, align 8
  %pPCache77 = getelementptr inbounds nuw %struct.Pager, ptr %62, i32 0, i32 58
  %63 = load ptr, ptr %pPCache77, align 8
  %64 = load ptr, ptr %pPager.addr, align 8
  %dbSize = getelementptr inbounds nuw %struct.Pager, ptr %64, i32 0, i32 21
  %65 = load i32, ptr %dbSize, align 4
  call void @sqlite3PcacheTruncate(ptr noundef %63, i32 noundef %65)
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %if.end63
  %66 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %66, i32 0, i32 59
  %67 = load ptr, ptr %pWal, align 8
  %cmp79 = icmp ne ptr %67, null
  br i1 %cmp79, label %if.then81, label %if.else84

if.then81:                                        ; preds = %if.end78
  %68 = load ptr, ptr %pPager.addr, align 8
  %pWal82 = getelementptr inbounds nuw %struct.Pager, ptr %68, i32 0, i32 59
  %69 = load ptr, ptr %pWal82, align 8
  %call83 = call i32 @sqlite3WalEndWriteTransaction(ptr noundef %69)
  store i32 %call83, ptr %rc2, align 4
  br label %if.end97

if.else84:                                        ; preds = %if.end78
  %70 = load i32, ptr %rc, align 4
  %cmp85 = icmp eq i32 %70, 0
  br i1 %cmp85, label %land.lhs.true87, label %if.end96

land.lhs.true87:                                  ; preds = %if.else84
  %71 = load i32, ptr %bCommit.addr, align 4
  %tobool88 = icmp ne i32 %71, 0
  br i1 %tobool88, label %land.lhs.true89, label %if.end96

land.lhs.true89:                                  ; preds = %land.lhs.true87
  %72 = load ptr, ptr %pPager.addr, align 8
  %dbFileSize = getelementptr inbounds nuw %struct.Pager, ptr %72, i32 0, i32 23
  %73 = load i32, ptr %dbFileSize, align 4
  %74 = load ptr, ptr %pPager.addr, align 8
  %dbSize90 = getelementptr inbounds nuw %struct.Pager, ptr %74, i32 0, i32 21
  %75 = load i32, ptr %dbSize90, align 4
  %cmp91 = icmp ugt i32 %73, %75
  br i1 %cmp91, label %if.then93, label %if.end96

if.then93:                                        ; preds = %land.lhs.true89
  %76 = load ptr, ptr %pPager.addr, align 8
  %77 = load ptr, ptr %pPager.addr, align 8
  %dbSize94 = getelementptr inbounds nuw %struct.Pager, ptr %77, i32 0, i32 21
  %78 = load i32, ptr %dbSize94, align 4
  %call95 = call i32 @pager_truncate(ptr noundef %76, i32 noundef %78)
  store i32 %call95, ptr %rc, align 4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %land.lhs.true89, %land.lhs.true87, %if.else84
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.then81
  %79 = load i32, ptr %rc, align 4
  %cmp98 = icmp eq i32 %79, 0
  br i1 %cmp98, label %land.lhs.true100, label %if.end108

land.lhs.true100:                                 ; preds = %if.end97
  %80 = load i32, ptr %bCommit.addr, align 4
  %tobool101 = icmp ne i32 %80, 0
  br i1 %tobool101, label %if.then102, label %if.end108

if.then102:                                       ; preds = %land.lhs.true100
  %81 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %81, i32 0, i32 30
  %82 = load ptr, ptr %fd, align 8
  %call103 = call i32 @sqlite3OsFileControl(ptr noundef %82, i32 noundef 22, ptr noundef null)
  store i32 %call103, ptr %rc, align 4
  %83 = load i32, ptr %rc, align 4
  %cmp104 = icmp eq i32 %83, 12
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %if.then102
  store i32 0, ptr %rc, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %if.then102
  br label %if.end108

if.end108:                                        ; preds = %if.end107, %land.lhs.true100, %if.end97
  %84 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode109 = getelementptr inbounds nuw %struct.Pager, ptr %84, i32 0, i32 1
  %85 = load i8, ptr %exclusiveMode109, align 8
  %tobool110 = icmp ne i8 %85, 0
  br i1 %tobool110, label %if.end121, label %land.lhs.true111

land.lhs.true111:                                 ; preds = %if.end108
  %86 = load ptr, ptr %pPager.addr, align 8
  %pWal112 = getelementptr inbounds nuw %struct.Pager, ptr %86, i32 0, i32 59
  %87 = load ptr, ptr %pWal112, align 8
  %cmp113 = icmp ne ptr %87, null
  br i1 %cmp113, label %lor.lhs.false115, label %if.then119

lor.lhs.false115:                                 ; preds = %land.lhs.true111
  %88 = load ptr, ptr %pPager.addr, align 8
  %pWal116 = getelementptr inbounds nuw %struct.Pager, ptr %88, i32 0, i32 59
  %89 = load ptr, ptr %pWal116, align 8
  %call117 = call i32 @sqlite3WalExclusiveMode(ptr noundef %89, i32 noundef 0)
  %tobool118 = icmp ne i32 %call117, 0
  br i1 %tobool118, label %if.then119, label %if.end121

if.then119:                                       ; preds = %lor.lhs.false115, %land.lhs.true111
  %90 = load ptr, ptr %pPager.addr, align 8
  %call120 = call i32 @pagerUnlockDb(ptr noundef %90, i32 noundef 1)
  store i32 %call120, ptr %rc2, align 4
  %91 = load ptr, ptr %pPager.addr, align 8
  %changeCountDone = getelementptr inbounds nuw %struct.Pager, ptr %91, i32 0, i32 15
  store i8 0, ptr %changeCountDone, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %lor.lhs.false115, %if.end108
  %92 = load ptr, ptr %pPager.addr, align 8
  %eState122 = getelementptr inbounds nuw %struct.Pager, ptr %92, i32 0, i32 13
  store i8 1, ptr %eState122, align 4
  %93 = load ptr, ptr %pPager.addr, align 8
  %setMaster = getelementptr inbounds nuw %struct.Pager, ptr %93, i32 0, i32 16
  store i8 0, ptr %setMaster, align 1
  %94 = load i32, ptr %rc, align 4
  %cmp123 = icmp eq i32 %94, 0
  br i1 %cmp123, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end121
  %95 = load i32, ptr %rc2, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end121
  %96 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %95, %cond.true ], [ %96, %cond.false ]
  store i32 %cond, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cond.end, %if.then
  %97 = load i32, ptr %retval, align 4
  ret i32 %97
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BitvecDestroy(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3JournalIsInMemory(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_truncate(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheTruncate(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsDelete(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseAllSavepoints(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @zeroJournalHdr(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerFlushOnCommit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheCleanAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheClearWritable(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalExclusiveMode(ptr noundef, i32 noundef) #0

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
