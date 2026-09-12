; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @querySharedCacheTableLock(ptr noundef %p, i32 noundef %iTab, i8 noundef zeroext %eLock) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %eLock.addr = alloca i8, align 1
  %pBt = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  store i8 %eLock, ptr %eLock.addr, align 1
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %sharable = getelementptr inbounds nuw %struct.Btree, ptr %2, i32 0, i32 3
  %3 = load i8, ptr %sharable, align 1
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pBt, align 8
  %pWriter = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 26
  %5 = load ptr, ptr %pWriter, align 8
  %6 = load ptr, ptr %p.addr, align 8
  %cmp = icmp ne ptr %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %7, i32 0, i32 10
  %8 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 64
  %cmp2 = icmp ne i32 %and, 0
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.lhs.true
  store i32 262, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %9 = load ptr, ptr %pBt, align 8
  %pLock = getelementptr inbounds nuw %struct.BtShared, ptr %9, i32 0, i32 25
  %10 = load ptr, ptr %pLock, align 8
  store ptr %10, ptr %pIter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end5
  %11 = load ptr, ptr %pIter, align 8
  %tobool6 = icmp ne ptr %11, null
  br i1 %tobool6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load ptr, ptr %pIter, align 8
  %pBtree = getelementptr inbounds nuw %struct.BtLock, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pBtree, align 8
  %14 = load ptr, ptr %p.addr, align 8
  %cmp7 = icmp ne ptr %13, %14
  br i1 %cmp7, label %land.lhs.true9, label %if.end27

land.lhs.true9:                                   ; preds = %for.body
  %15 = load ptr, ptr %pIter, align 8
  %iTable = getelementptr inbounds nuw %struct.BtLock, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %iTable, align 8
  %17 = load i32, ptr %iTab.addr, align 4
  %cmp10 = icmp eq i32 %16, %17
  br i1 %cmp10, label %land.lhs.true12, label %if.end27

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %18 = load ptr, ptr %pIter, align 8
  %eLock13 = getelementptr inbounds nuw %struct.BtLock, ptr %18, i32 0, i32 2
  %19 = load i8, ptr %eLock13, align 4
  %conv14 = zext i8 %19 to i32
  %20 = load i8, ptr %eLock.addr, align 1
  %conv15 = zext i8 %20 to i32
  %cmp16 = icmp ne i32 %conv14, %conv15
  br i1 %cmp16, label %if.then18, label %if.end27

if.then18:                                        ; preds = %land.lhs.true12
  %21 = load i8, ptr %eLock.addr, align 1
  %conv19 = zext i8 %21 to i32
  %cmp20 = icmp eq i32 %conv19, 2
  br i1 %cmp20, label %if.then22, label %if.end26

if.then22:                                        ; preds = %if.then18
  %22 = load ptr, ptr %pBt, align 8
  %btsFlags23 = getelementptr inbounds nuw %struct.BtShared, ptr %22, i32 0, i32 10
  %23 = load i16, ptr %btsFlags23, align 2
  %conv24 = zext i16 %23 to i32
  %or = or i32 %conv24, 128
  %conv25 = trunc i32 %or to i16
  store i16 %conv25, ptr %btsFlags23, align 2
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %if.then18
  store i32 262, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %land.lhs.true12, %land.lhs.true9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %24 = load ptr, ptr %pIter, align 8
  %pNext = getelementptr inbounds nuw %struct.BtLock, ptr %24, i32 0, i32 3
  %25 = load ptr, ptr %pNext, align 8
  store ptr %25, ptr %pIter, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end26, %if.then4, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
