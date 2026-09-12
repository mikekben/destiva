; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @setSharedCacheTableLock(ptr noundef %p, i32 noundef %iTable, i8 noundef zeroext %eLock) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iTable.addr = alloca i32, align 4
  %eLock.addr = alloca i8, align 1
  %pBt = alloca ptr, align 8
  %pLock = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTable, ptr %iTable.addr, align 4
  store i8 %eLock, ptr %eLock.addr, align 1
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  store ptr null, ptr %pLock, align 8
  %2 = load ptr, ptr %pBt, align 8
  %pLock2 = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 25
  %3 = load ptr, ptr %pLock2, align 8
  store ptr %3, ptr %pIter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %pIter, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %pIter, align 8
  %iTable3 = getelementptr inbounds nuw %struct.BtLock, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %iTable3, align 8
  %7 = load i32, ptr %iTable.addr, align 4
  %cmp = icmp eq i32 %6, %7
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %pIter, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtLock, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pBtree, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %cmp4 = icmp eq ptr %9, %10
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %pIter, align 8
  store ptr %11, ptr %pLock, align 8
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load ptr, ptr %pIter, align 8
  %pNext = getelementptr inbounds nuw %struct.BtLock, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pNext, align 8
  store ptr %13, ptr %pIter, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then, %for.cond
  %14 = load ptr, ptr %pLock, align 8
  %tobool5 = icmp ne ptr %14, null
  br i1 %tobool5, label %if.end15, label %if.then6

if.then6:                                         ; preds = %for.end
  %call = call ptr @sqlite3MallocZero(i64 noundef 24)
  store ptr %call, ptr %pLock, align 8
  %15 = load ptr, ptr %pLock, align 8
  %tobool7 = icmp ne ptr %15, null
  br i1 %tobool7, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.then6
  store i32 7, ptr %retval, align 4
  br label %return

if.end9:                                          ; preds = %if.then6
  %16 = load i32, ptr %iTable.addr, align 4
  %17 = load ptr, ptr %pLock, align 8
  %iTable10 = getelementptr inbounds nuw %struct.BtLock, ptr %17, i32 0, i32 1
  store i32 %16, ptr %iTable10, align 8
  %18 = load ptr, ptr %p.addr, align 8
  %19 = load ptr, ptr %pLock, align 8
  %pBtree11 = getelementptr inbounds nuw %struct.BtLock, ptr %19, i32 0, i32 0
  store ptr %18, ptr %pBtree11, align 8
  %20 = load ptr, ptr %pBt, align 8
  %pLock12 = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 25
  %21 = load ptr, ptr %pLock12, align 8
  %22 = load ptr, ptr %pLock, align 8
  %pNext13 = getelementptr inbounds nuw %struct.BtLock, ptr %22, i32 0, i32 3
  store ptr %21, ptr %pNext13, align 8
  %23 = load ptr, ptr %pLock, align 8
  %24 = load ptr, ptr %pBt, align 8
  %pLock14 = getelementptr inbounds nuw %struct.BtShared, ptr %24, i32 0, i32 25
  store ptr %23, ptr %pLock14, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.end9, %for.end
  %25 = load i8, ptr %eLock.addr, align 1
  %conv = zext i8 %25 to i32
  %26 = load ptr, ptr %pLock, align 8
  %eLock16 = getelementptr inbounds nuw %struct.BtLock, ptr %26, i32 0, i32 2
  %27 = load i8, ptr %eLock16, align 4
  %conv17 = zext i8 %27 to i32
  %cmp18 = icmp sgt i32 %conv, %conv17
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end15
  %28 = load i8, ptr %eLock.addr, align 1
  %29 = load ptr, ptr %pLock, align 8
  %eLock21 = getelementptr inbounds nuw %struct.BtLock, ptr %29, i32 0, i32 2
  store i8 %28, ptr %eLock21, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end22, %if.then8
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
