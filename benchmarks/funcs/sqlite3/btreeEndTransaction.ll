; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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

; Function Attrs: nounwind uwtable
declare hidden void @unlockBtreeIfUnused(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @btreeEndTransaction(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Btree, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pBt, align 8
  %bDoTruncate = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 7
  store i8 0, ptr %bDoTruncate, align 1
  %5 = load ptr, ptr %p.addr, align 8
  %inTrans = getelementptr inbounds nuw %struct.Btree, ptr %5, i32 0, i32 2
  %6 = load i8, ptr %inTrans, align 8
  %conv = zext i8 %6 to i32
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %7 = load ptr, ptr %db, align 8
  %nVdbeRead = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 37
  %8 = load i32, ptr %nVdbeRead, align 4
  %cmp4 = icmp sgt i32 %8, 1
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %p.addr, align 8
  call void @downgradeAllSharedCacheTableLocks(ptr noundef %9)
  %10 = load ptr, ptr %p.addr, align 8
  %inTrans6 = getelementptr inbounds nuw %struct.Btree, ptr %10, i32 0, i32 2
  store i8 1, ptr %inTrans6, align 8
  br label %if.end18

if.else:                                          ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %p.addr, align 8
  %inTrans7 = getelementptr inbounds nuw %struct.Btree, ptr %11, i32 0, i32 2
  %12 = load i8, ptr %inTrans7, align 8
  %conv8 = zext i8 %12 to i32
  %cmp9 = icmp ne i32 %conv8, 0
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.else
  %13 = load ptr, ptr %p.addr, align 8
  call void @clearAllSharedCacheTableLocks(ptr noundef %13)
  %14 = load ptr, ptr %pBt, align 8
  %nTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %14, i32 0, i32 17
  %15 = load i32, ptr %nTransaction, align 8
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %nTransaction, align 8
  %16 = load ptr, ptr %pBt, align 8
  %nTransaction12 = getelementptr inbounds nuw %struct.BtShared, ptr %16, i32 0, i32 17
  %17 = load i32, ptr %nTransaction12, align 8
  %cmp13 = icmp eq i32 0, %17
  br i1 %cmp13, label %if.then15, label %if.end

if.then15:                                        ; preds = %if.then11
  %18 = load ptr, ptr %pBt, align 8
  %inTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %18, i32 0, i32 8
  store i8 0, ptr %inTransaction, align 4
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end, %if.else
  %19 = load ptr, ptr %p.addr, align 8
  %inTrans17 = getelementptr inbounds nuw %struct.Btree, ptr %19, i32 0, i32 2
  store i8 0, ptr %inTrans17, align 8
  %20 = load ptr, ptr %pBt, align 8
  call void @unlockBtreeIfUnused(ptr noundef %20)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @downgradeAllSharedCacheTableLocks(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @clearAllSharedCacheTableLocks(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
