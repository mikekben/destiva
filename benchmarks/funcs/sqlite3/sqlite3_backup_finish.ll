; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_backup_finish(ptr noundef %p) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %pSrcDb = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %pSrcDb1 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %1, i32 0, i32 5
  %2 = load ptr, ptr %pSrcDb1, align 8
  store ptr %2, ptr %pSrcDb, align 8
  %3 = load ptr, ptr %pSrcDb, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %4)
  %5 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %pSrc, align 8
  call void @sqlite3BtreeEnter(ptr noundef %6)
  %7 = load ptr, ptr %p.addr, align 8
  %pDestDb = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pDestDb, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %p.addr, align 8
  %pDestDb3 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pDestDb3, align 8
  %mutex4 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %mutex4, align 8
  call void @sqlite3_mutex_enter(ptr noundef %11)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %12 = load ptr, ptr %p.addr, align 8
  %pDestDb6 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pDestDb6, align 8
  %tobool7 = icmp ne ptr %13, null
  br i1 %tobool7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %p.addr, align 8
  %pSrc9 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %14, i32 0, i32 6
  %15 = load ptr, ptr %pSrc9, align 8
  %nBackup = getelementptr inbounds nuw %struct.Btree, ptr %15, i32 0, i32 7
  %16 = load i32, ptr %nBackup, align 8
  %dec = add nsw i32 %16, -1
  store i32 %dec, ptr %nBackup, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end5
  %17 = load ptr, ptr %p.addr, align 8
  %isAttached = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %17, i32 0, i32 10
  %18 = load i32, ptr %isAttached, align 4
  %tobool11 = icmp ne i32 %18, 0
  br i1 %tobool11, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end10
  %19 = load ptr, ptr %p.addr, align 8
  %pSrc13 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %19, i32 0, i32 6
  %20 = load ptr, ptr %pSrc13, align 8
  %call = call ptr @sqlite3BtreePager(ptr noundef %20)
  %call14 = call ptr @sqlite3PagerBackupPtr(ptr noundef %call)
  store ptr %call14, ptr %pp, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then12
  %21 = load ptr, ptr %pp, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %p.addr, align 8
  %cmp15 = icmp ne ptr %22, %23
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr %pp, align 8
  %25 = load ptr, ptr %24, align 8
  %pNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %25, i32 0, i32 11
  store ptr %pNext, ptr %pp, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %p.addr, align 8
  %pNext16 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %26, i32 0, i32 11
  %27 = load ptr, ptr %pNext16, align 8
  %28 = load ptr, ptr %pp, align 8
  store ptr %27, ptr %28, align 8
  br label %if.end17

if.end17:                                         ; preds = %while.end, %if.end10
  %29 = load ptr, ptr %p.addr, align 8
  %pDest = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %pDest, align 8
  %call18 = call i32 @sqlite3BtreeRollback(ptr noundef %30, i32 noundef 0, i32 noundef 0)
  %31 = load ptr, ptr %p.addr, align 8
  %rc19 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %31, i32 0, i32 7
  %32 = load i32, ptr %rc19, align 8
  %cmp20 = icmp eq i32 %32, 101
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end17
  br label %cond.end

cond.false:                                       ; preds = %if.end17
  %33 = load ptr, ptr %p.addr, align 8
  %rc21 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %33, i32 0, i32 7
  %34 = load i32, ptr %rc21, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %34, %cond.false ]
  store i32 %cond, ptr %rc, align 4
  %35 = load ptr, ptr %p.addr, align 8
  %pDestDb22 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pDestDb22, align 8
  %tobool23 = icmp ne ptr %36, null
  br i1 %tobool23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %cond.end
  %37 = load ptr, ptr %p.addr, align 8
  %pDestDb25 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %pDestDb25, align 8
  %39 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %38, i32 noundef %39)
  %40 = load ptr, ptr %p.addr, align 8
  %pDestDb26 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pDestDb26, align 8
  call void @sqlite3LeaveMutexAndCloseZombie(ptr noundef %41)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %cond.end
  %42 = load ptr, ptr %p.addr, align 8
  %pSrc28 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %42, i32 0, i32 6
  %43 = load ptr, ptr %pSrc28, align 8
  call void @sqlite3BtreeLeave(ptr noundef %43)
  %44 = load ptr, ptr %p.addr, align 8
  %pDestDb29 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %pDestDb29, align 8
  %tobool30 = icmp ne ptr %45, null
  br i1 %tobool30, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end27
  %46 = load ptr, ptr %p.addr, align 8
  call void @sqlite3_free(ptr noundef %46)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end27
  %47 = load ptr, ptr %pSrcDb, align 8
  call void @sqlite3LeaveMutexAndCloseZombie(ptr noundef %47)
  %48 = load i32, ptr %rc, align 4
  store i32 %48, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerBackupPtr(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeRollback(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3LeaveMutexAndCloseZombie(ptr noundef) #0

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
