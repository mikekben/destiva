; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @clearAllSharedCacheTableLocks(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %ppIter = alloca ptr, align 8
  %pLock2 = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pBt, align 8
  %pLock = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 25
  store ptr %pLock, ptr %ppIter, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end6, %entry
  %3 = load ptr, ptr %ppIter, align 8
  %4 = load ptr, ptr %3, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %ppIter, align 8
  %6 = load ptr, ptr %5, align 8
  store ptr %6, ptr %pLock2, align 8
  %7 = load ptr, ptr %pLock2, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtLock, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pBtree, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %pLock2, align 8
  %pNext = getelementptr inbounds nuw %struct.BtLock, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pNext, align 8
  %12 = load ptr, ptr %ppIter, align 8
  store ptr %11, ptr %12, align 8
  %13 = load ptr, ptr %pLock2, align 8
  %iTable = getelementptr inbounds nuw %struct.BtLock, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %iTable, align 8
  %cmp3 = icmp ne i32 %14, 1
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %15 = load ptr, ptr %pLock2, align 8
  call void @sqlite3_free(ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  br label %if.end6

if.else:                                          ; preds = %while.body
  %16 = load ptr, ptr %pLock2, align 8
  %pNext5 = getelementptr inbounds nuw %struct.BtLock, ptr %16, i32 0, i32 3
  store ptr %pNext5, ptr %ppIter, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %pBt, align 8
  %pWriter = getelementptr inbounds nuw %struct.BtShared, ptr %17, i32 0, i32 26
  %18 = load ptr, ptr %pWriter, align 8
  %19 = load ptr, ptr %p.addr, align 8
  %cmp7 = icmp eq ptr %18, %19
  br i1 %cmp7, label %if.then8, label %if.else11

if.then8:                                         ; preds = %while.end
  %20 = load ptr, ptr %pBt, align 8
  %pWriter9 = getelementptr inbounds nuw %struct.BtShared, ptr %20, i32 0, i32 26
  store ptr null, ptr %pWriter9, align 8
  %21 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %21, i32 0, i32 10
  %22 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %22 to i32
  %and = and i32 %conv, -193
  %conv10 = trunc i32 %and to i16
  store i16 %conv10, ptr %btsFlags, align 2
  br label %if.end20

if.else11:                                        ; preds = %while.end
  %23 = load ptr, ptr %pBt, align 8
  %nTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %23, i32 0, i32 17
  %24 = load i32, ptr %nTransaction, align 8
  %cmp12 = icmp eq i32 %24, 2
  br i1 %cmp12, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.else11
  %25 = load ptr, ptr %pBt, align 8
  %btsFlags15 = getelementptr inbounds nuw %struct.BtShared, ptr %25, i32 0, i32 10
  %26 = load i16, ptr %btsFlags15, align 2
  %conv16 = zext i16 %26 to i32
  %and17 = and i32 %conv16, -129
  %conv18 = trunc i32 %and17 to i16
  store i16 %conv18, ptr %btsFlags15, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %if.else11
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then8
  ret void
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
