; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.sqlite3_file = type { ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerClose(ptr noundef %pPager, ptr noundef %db) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %a = alloca ptr, align 8
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 57
  %1 = load ptr, ptr %pTmpSpace, align 8
  store ptr %1, ptr %pTmp, align 8
  call void @sqlite3BeginBenignMalloc()
  %2 = load ptr, ptr %pPager.addr, align 8
  call void @pagerFreeMapHdrs(ptr noundef %2)
  %3 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %3, i32 0, i32 1
  store i8 0, ptr %exclusiveMode, align 8
  store ptr null, ptr %a, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 7
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 2048
  %cmp = icmp eq i64 0, %and
  br i1 %cmp, label %land.lhs.true1, label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @databaseIsUnmoved(ptr noundef %7)
  %cmp2 = icmp eq i32 0, %call
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true1
  %8 = load ptr, ptr %pTmp, align 8
  store ptr %8, ptr %a, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true1, %land.lhs.true, %entry
  %9 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 59
  %10 = load ptr, ptr %pWal, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 8
  %13 = load i8, ptr %walSyncFlags, align 1
  %conv = zext i8 %13 to i32
  %14 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %14, i32 0, i32 47
  %15 = load i32, ptr %pageSize, align 4
  %16 = load ptr, ptr %a, align 8
  %call3 = call i32 @sqlite3WalClose(ptr noundef %10, ptr noundef %11, i32 noundef %conv, i32 noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %pPager.addr, align 8
  %pWal4 = getelementptr inbounds nuw %struct.Pager, ptr %17, i32 0, i32 59
  store ptr null, ptr %pWal4, align 8
  %18 = load ptr, ptr %pPager.addr, align 8
  call void @pager_reset(ptr noundef %18)
  %19 = load ptr, ptr %pPager.addr, align 8
  %memDb = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 12
  %20 = load i8, ptr %memDb, align 1
  %tobool5 = icmp ne i8 %20, 0
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %21 = load ptr, ptr %pPager.addr, align 8
  call void @pager_unlock(ptr noundef %21)
  br label %if.end13

if.else:                                          ; preds = %if.end
  %22 = load ptr, ptr %pPager.addr, align 8
  %jfd = getelementptr inbounds nuw %struct.Pager, ptr %22, i32 0, i32 31
  %23 = load ptr, ptr %jfd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pMethods, align 8
  %cmp7 = icmp ne ptr %24, null
  br i1 %cmp7, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.else
  %25 = load ptr, ptr %pPager.addr, align 8
  %26 = load ptr, ptr %pPager.addr, align 8
  %call10 = call i32 @pagerSyncHotJournal(ptr noundef %26)
  %call11 = call i32 @pager_error(ptr noundef %25, i32 noundef %call10)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.else
  %27 = load ptr, ptr %pPager.addr, align 8
  call void @pagerUnlockAndRollback(ptr noundef %27)
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then6
  call void @sqlite3EndBenignMalloc()
  %28 = load ptr, ptr %pPager.addr, align 8
  %jfd14 = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 31
  %29 = load ptr, ptr %jfd14, align 8
  call void @sqlite3OsClose(ptr noundef %29)
  %30 = load ptr, ptr %pPager.addr, align 8
  %fd = getelementptr inbounds nuw %struct.Pager, ptr %30, i32 0, i32 30
  %31 = load ptr, ptr %fd, align 8
  call void @sqlite3OsClose(ptr noundef %31)
  %32 = load ptr, ptr %pTmp, align 8
  call void @sqlite3PageFree(ptr noundef %32)
  %33 = load ptr, ptr %pPager.addr, align 8
  %pPCache = getelementptr inbounds nuw %struct.Pager, ptr %33, i32 0, i32 58
  %34 = load ptr, ptr %pPCache, align 8
  call void @sqlite3PcacheClose(ptr noundef %34)
  %35 = load ptr, ptr %pPager.addr, align 8
  call void @sqlite3_free(ptr noundef %35)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PageFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pager_error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @pagerUnlockAndRollback(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_unlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pager_reset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pagerFreeMapHdrs(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @databaseIsUnmoved(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalClose(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerSyncHotJournal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3PcacheClose(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
