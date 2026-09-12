; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @querySharedCacheTableLock(ptr noundef, i32 noundef, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeLockTable(ptr noundef %p, i32 noundef %iTab, i8 noundef zeroext %isWriteLock) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iTab.addr = alloca i32, align 4
  %isWriteLock.addr = alloca i8, align 1
  %rc = alloca i32, align 4
  %lockType = alloca i8, align 1
  store ptr %p, ptr %p.addr, align 8
  store i32 %iTab, ptr %iTab.addr, align 4
  store i8 %isWriteLock, ptr %isWriteLock.addr, align 1
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %sharable = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 3
  %1 = load i8, ptr %sharable, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %isWriteLock.addr, align 1
  %conv = zext i8 %2 to i32
  %add = add nsw i32 1, %conv
  %conv1 = trunc i32 %add to i8
  store i8 %conv1, ptr %lockType, align 1
  %3 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %3)
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load i32, ptr %iTab.addr, align 4
  %6 = load i8, ptr %lockType, align 1
  %call = call i32 @querySharedCacheTableLock(ptr noundef %4, i32 noundef %5, i8 noundef zeroext %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %iTab.addr, align 4
  %10 = load i8, ptr %lockType, align 1
  %call4 = call i32 @setSharedCacheTableLock(ptr noundef %8, i32 noundef %9, i8 noundef zeroext %10)
  store i32 %call4, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then
  %11 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %11)
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %12 = load i32, ptr %rc, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @setSharedCacheTableLock(ptr noundef, i32 noundef, i8 noundef zeroext) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
