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
%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }

@.str.11 = external hidden unnamed_addr constant [40 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_backup_init(ptr noundef %pDestDb, ptr noundef %zDestDb, ptr noundef %pSrcDb, ptr noundef %zSrcDb) #0 {
entry:
  %pDestDb.addr = alloca ptr, align 8
  %zDestDb.addr = alloca ptr, align 8
  %pSrcDb.addr = alloca ptr, align 8
  %zSrcDb.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pDestDb, ptr %pDestDb.addr, align 8
  store ptr %zDestDb, ptr %zDestDb.addr, align 8
  store ptr %pSrcDb, ptr %pSrcDb.addr, align 8
  store ptr %zSrcDb, ptr %zSrcDb.addr, align 8
  %0 = load ptr, ptr %pSrcDb.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %pDestDb.addr, align 8
  %mutex1 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex1, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %pSrcDb.addr, align 8
  %5 = load ptr, ptr %pDestDb.addr, align 8
  %cmp = icmp eq ptr %4, %5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pDestDb.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %6, i32 noundef 1, ptr noundef @.str.11)
  store ptr null, ptr %p, align 8
  br label %if.end3

if.else:                                          ; preds = %entry
  %call = call ptr @sqlite3MallocZero(i64 noundef 72)
  store ptr %call, ptr %p, align 8
  %7 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %pDestDb.addr, align 8
  call void @sqlite3Error(ptr noundef %8, i32 noundef 7)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %9 = load ptr, ptr %p, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %if.then5, label %if.end20

if.then5:                                         ; preds = %if.end3
  %10 = load ptr, ptr %pDestDb.addr, align 8
  %11 = load ptr, ptr %pSrcDb.addr, align 8
  %12 = load ptr, ptr %zSrcDb.addr, align 8
  %call6 = call ptr @findBtree(ptr noundef %10, ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %p, align 8
  %pSrc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %13, i32 0, i32 6
  store ptr %call6, ptr %pSrc, align 8
  %14 = load ptr, ptr %pDestDb.addr, align 8
  %15 = load ptr, ptr %pDestDb.addr, align 8
  %16 = load ptr, ptr %zDestDb.addr, align 8
  %call7 = call ptr @findBtree(ptr noundef %14, ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %p, align 8
  %pDest = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %17, i32 0, i32 1
  store ptr %call7, ptr %pDest, align 8
  %18 = load ptr, ptr %pDestDb.addr, align 8
  %19 = load ptr, ptr %p, align 8
  %pDestDb8 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %19, i32 0, i32 0
  store ptr %18, ptr %pDestDb8, align 8
  %20 = load ptr, ptr %pSrcDb.addr, align 8
  %21 = load ptr, ptr %p, align 8
  %pSrcDb9 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %21, i32 0, i32 5
  store ptr %20, ptr %pSrcDb9, align 8
  %22 = load ptr, ptr %p, align 8
  %iNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %22, i32 0, i32 4
  store i32 1, ptr %iNext, align 8
  %23 = load ptr, ptr %p, align 8
  %isAttached = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %23, i32 0, i32 10
  store i32 0, ptr %isAttached, align 4
  %24 = load ptr, ptr %p, align 8
  %pSrc10 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %pSrc10, align 8
  %cmp11 = icmp eq ptr null, %25
  br i1 %cmp11, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then5
  %26 = load ptr, ptr %p, align 8
  %pDest12 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pDest12, align 8
  %cmp13 = icmp eq ptr null, %27
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %28 = load ptr, ptr %pDestDb.addr, align 8
  %29 = load ptr, ptr %p, align 8
  %pDest15 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %29, i32 0, i32 1
  %30 = load ptr, ptr %pDest15, align 8
  %call16 = call i32 @checkReadTransaction(ptr noundef %28, ptr noundef %30)
  %cmp17 = icmp ne i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %if.then5
  %31 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %31)
  store ptr null, ptr %p, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %lor.lhs.false14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end3
  %32 = load ptr, ptr %p, align 8
  %tobool21 = icmp ne ptr %32, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %33 = load ptr, ptr %p, align 8
  %pSrc23 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %33, i32 0, i32 6
  %34 = load ptr, ptr %pSrc23, align 8
  %nBackup = getelementptr inbounds nuw %struct.Btree, ptr %34, i32 0, i32 7
  %35 = load i32, ptr %nBackup, align 8
  %inc = add nsw i32 %35, 1
  store i32 %inc, ptr %nBackup, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  %36 = load ptr, ptr %pDestDb.addr, align 8
  %mutex25 = getelementptr inbounds nuw %struct.sqlite3, ptr %36, i32 0, i32 3
  %37 = load ptr, ptr %mutex25, align 8
  call void @sqlite3_mutex_leave(ptr noundef %37)
  %38 = load ptr, ptr %pSrcDb.addr, align 8
  %mutex26 = getelementptr inbounds nuw %struct.sqlite3, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %mutex26, align 8
  call void @sqlite3_mutex_leave(ptr noundef %39)
  %40 = load ptr, ptr %p, align 8
  ret ptr %40
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @findBtree(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @checkReadTransaction(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
