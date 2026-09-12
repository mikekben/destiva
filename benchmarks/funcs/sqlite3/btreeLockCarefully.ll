; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_mutex_try(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @btreeLockCarefully(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pLater = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt, align 8
  %mutex = getelementptr inbounds nuw %struct.BtShared, ptr %1, i32 0, i32 21
  %2 = load ptr, ptr %mutex, align 8
  %call = call i32 @sqlite3_mutex_try(ptr noundef %2)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Btree, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pBt1, align 8
  %db2 = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 1
  store ptr %4, ptr %db2, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %locked = getelementptr inbounds nuw %struct.Btree, ptr %7, i32 0, i32 4
  store i8 1, ptr %locked, align 2
  br label %for.end17

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.Btree, ptr %8, i32 0, i32 9
  %9 = load ptr, ptr %pNext, align 8
  store ptr %9, ptr %pLater, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %pLater, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pLater, align 8
  %locked3 = getelementptr inbounds nuw %struct.Btree, ptr %11, i32 0, i32 4
  %12 = load i8, ptr %locked3, align 2
  %tobool4 = icmp ne i8 %12, 0
  br i1 %tobool4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  %13 = load ptr, ptr %pLater, align 8
  call void @unlockBtreeMutex(ptr noundef %13)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %14 = load ptr, ptr %pLater, align 8
  %pNext7 = getelementptr inbounds nuw %struct.Btree, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %pNext7, align 8
  store ptr %15, ptr %pLater, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %16 = load ptr, ptr %p.addr, align 8
  call void @lockBtreeMutex(ptr noundef %16)
  %17 = load ptr, ptr %p.addr, align 8
  %pNext8 = getelementptr inbounds nuw %struct.Btree, ptr %17, i32 0, i32 9
  %18 = load ptr, ptr %pNext8, align 8
  store ptr %18, ptr %pLater, align 8
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc15, %for.end
  %19 = load ptr, ptr %pLater, align 8
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %for.body11, label %for.end17

for.body11:                                       ; preds = %for.cond9
  %20 = load ptr, ptr %pLater, align 8
  %wantToLock = getelementptr inbounds nuw %struct.Btree, ptr %20, i32 0, i32 6
  %21 = load i32, ptr %wantToLock, align 4
  %tobool12 = icmp ne i32 %21, 0
  br i1 %tobool12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body11
  %22 = load ptr, ptr %pLater, align 8
  call void @lockBtreeMutex(ptr noundef %22)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.body11
  br label %for.inc15

for.inc15:                                        ; preds = %if.end14
  %23 = load ptr, ptr %pLater, align 8
  %pNext16 = getelementptr inbounds nuw %struct.Btree, ptr %23, i32 0, i32 9
  %24 = load ptr, ptr %pNext16, align 8
  store ptr %24, ptr %pLater, align 8
  br label %for.cond9, !llvm.loop !8

for.end17:                                        ; preds = %for.cond9, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @unlockBtreeMutex(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @lockBtreeMutex(ptr noundef) #0

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
!8 = distinct !{!8, !7}
