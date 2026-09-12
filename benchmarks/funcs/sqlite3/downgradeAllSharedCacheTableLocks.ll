; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @downgradeAllSharedCacheTableLocks(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pBt = alloca ptr, align 8
  %pLock = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pBt1, align 8
  store ptr %1, ptr %pBt, align 8
  %2 = load ptr, ptr %pBt, align 8
  %pWriter = getelementptr inbounds nuw %struct.BtShared, ptr %2, i32 0, i32 26
  %3 = load ptr, ptr %pWriter, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %cmp = icmp eq ptr %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pBt, align 8
  %pWriter2 = getelementptr inbounds nuw %struct.BtShared, ptr %5, i32 0, i32 26
  store ptr null, ptr %pWriter2, align 8
  %6 = load ptr, ptr %pBt, align 8
  %btsFlags = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 10
  %7 = load i16, ptr %btsFlags, align 2
  %conv = zext i16 %7 to i32
  %and = and i32 %conv, -193
  %conv3 = trunc i32 %and to i16
  store i16 %conv3, ptr %btsFlags, align 2
  %8 = load ptr, ptr %pBt, align 8
  %pLock4 = getelementptr inbounds nuw %struct.BtShared, ptr %8, i32 0, i32 25
  %9 = load ptr, ptr %pLock4, align 8
  store ptr %9, ptr %pLock, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load ptr, ptr %pLock, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pLock, align 8
  %eLock = getelementptr inbounds nuw %struct.BtLock, ptr %11, i32 0, i32 2
  store i8 1, ptr %eLock, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %pLock, align 8
  %pNext = getelementptr inbounds nuw %struct.BtLock, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pNext, align 8
  store ptr %13, ptr %pLock, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
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
