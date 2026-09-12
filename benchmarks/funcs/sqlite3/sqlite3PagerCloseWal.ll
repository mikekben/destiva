; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerLockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsAccess(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerUnlockDb(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @pagerFixMaplimit(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalClose(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerOpenWal(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @pagerExclusiveLock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerCloseWal(ptr noundef %pPager, ptr noundef %db) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %logexists = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %pWal, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %logexists, align 4
  %2 = load ptr, ptr %pPager.addr, align 8
  %call = call i32 @pagerLockDb(ptr noundef %2, i32 noundef 1)
  store i32 %call, ptr %rc, align 4
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pPager.addr, align 8
  %pVfs = getelementptr inbounds nuw %struct.Pager, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVfs, align 8
  %6 = load ptr, ptr %pPager.addr, align 8
  %zWal = getelementptr inbounds nuw %struct.Pager, ptr %6, i32 0, i32 60
  %7 = load ptr, ptr %zWal, align 8
  %call2 = call i32 @sqlite3OsAccess(ptr noundef %5, ptr noundef %7, i32 noundef 0, ptr noundef %logexists)
  store i32 %call2, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %8 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %8, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, ptr %logexists, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %land.lhs.true
  %10 = load ptr, ptr %pPager.addr, align 8
  %call6 = call i32 @pagerOpenWal(ptr noundef %10)
  store i32 %call6, ptr %rc, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %entry
  %11 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %11, 0
  br i1 %cmp9, label %land.lhs.true10, label %if.end27

land.lhs.true10:                                  ; preds = %if.end8
  %12 = load ptr, ptr %pPager.addr, align 8
  %pWal11 = getelementptr inbounds nuw %struct.Pager, ptr %12, i32 0, i32 59
  %13 = load ptr, ptr %pWal11, align 8
  %tobool12 = icmp ne ptr %13, null
  br i1 %tobool12, label %if.then13, label %if.end27

if.then13:                                        ; preds = %land.lhs.true10
  %14 = load ptr, ptr %pPager.addr, align 8
  %call14 = call i32 @pagerExclusiveLock(ptr noundef %14)
  store i32 %call14, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %if.then16, label %if.end26

if.then16:                                        ; preds = %if.then13
  %16 = load ptr, ptr %pPager.addr, align 8
  %pWal17 = getelementptr inbounds nuw %struct.Pager, ptr %16, i32 0, i32 59
  %17 = load ptr, ptr %pWal17, align 8
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags = getelementptr inbounds nuw %struct.Pager, ptr %19, i32 0, i32 8
  %20 = load i8, ptr %walSyncFlags, align 1
  %conv = zext i8 %20 to i32
  %21 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %21, i32 0, i32 47
  %22 = load i32, ptr %pageSize, align 4
  %23 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %23, i32 0, i32 57
  %24 = load ptr, ptr %pTmpSpace, align 8
  %call18 = call i32 @sqlite3WalClose(ptr noundef %17, ptr noundef %18, i32 noundef %conv, i32 noundef %22, ptr noundef %24)
  store i32 %call18, ptr %rc, align 4
  %25 = load ptr, ptr %pPager.addr, align 8
  %pWal19 = getelementptr inbounds nuw %struct.Pager, ptr %25, i32 0, i32 59
  store ptr null, ptr %pWal19, align 8
  %26 = load ptr, ptr %pPager.addr, align 8
  call void @pagerFixMaplimit(ptr noundef %26)
  %27 = load i32, ptr %rc, align 4
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %land.lhs.true21, label %if.end25

land.lhs.true21:                                  ; preds = %if.then16
  %28 = load ptr, ptr %pPager.addr, align 8
  %exclusiveMode = getelementptr inbounds nuw %struct.Pager, ptr %28, i32 0, i32 1
  %29 = load i8, ptr %exclusiveMode, align 8
  %tobool22 = icmp ne i8 %29, 0
  br i1 %tobool22, label %if.end25, label %if.then23

if.then23:                                        ; preds = %land.lhs.true21
  %30 = load ptr, ptr %pPager.addr, align 8
  %call24 = call i32 @pagerUnlockDb(ptr noundef %30, i32 noundef 1)
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %land.lhs.true21, %if.then16
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then13
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %land.lhs.true10, %if.end8
  %31 = load i32, ptr %rc, align 4
  ret i32 %31
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
