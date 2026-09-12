; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.UnixUnusedFd = type { i32, i32, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@inodeList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixEnterMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @unixLeaveMutex() #0

; Function Attrs: nounwind uwtable
define hidden ptr @findReusableFd(ptr noundef %zPath, i32 noundef %flags) #0 {
entry:
  %zPath.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pUnused = alloca ptr, align 8
  %sStat = alloca %struct.stat, align 8
  %pInode = alloca ptr, align 8
  %pp = alloca ptr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr null, ptr %pUnused, align 8
  call void @unixEnterMutex()
  %0 = load ptr, ptr @inodeList, align 8
  %cmp = icmp ne ptr %0, null
  br i1 %cmp, label %land.lhs.true, label %if.end19

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 4), i32 0, i32 1), align 8
  %2 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 %1(ptr noundef %2, ptr noundef %sStat)
  %cmp1 = icmp eq i32 0, %call
  br i1 %cmp1, label %if.then, label %if.end19

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr @inodeList, align 8
  store ptr %3, ptr %pInode, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %4 = load ptr, ptr %pInode, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %pInode, align 8
  %fileId = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %5, i32 0, i32 0
  %dev = getelementptr inbounds nuw %struct.unixFileId, ptr %fileId, i32 0, i32 0
  %6 = load i64, ptr %dev, align 8
  %st_dev = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 0
  %7 = load i64, ptr %st_dev, align 8
  %cmp2 = icmp ne i64 %6, %7
  br i1 %cmp2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %8 = load ptr, ptr %pInode, align 8
  %fileId3 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %8, i32 0, i32 0
  %ino = getelementptr inbounds nuw %struct.unixFileId, ptr %fileId3, i32 0, i32 1
  %9 = load i64, ptr %ino, align 8
  %st_ino = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 1
  %10 = load i64, ptr %st_ino, align 8
  %cmp4 = icmp ne i64 %9, %10
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %11 = phi i1 [ true, %land.rhs ], [ %cmp4, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %11, %lor.end ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %pInode, align 8
  %pNext = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %pNext, align 8
  store ptr %14, ptr %pInode, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %pInode, align 8
  %tobool5 = icmp ne ptr %15, null
  br i1 %tobool5, label %if.then6, label %if.end18

if.then6:                                         ; preds = %while.end
  %16 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %16, i32 0, i32 1
  %17 = load ptr, ptr %pLockMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %17)
  %18 = load i32, ptr %flags.addr, align 4
  %and = and i32 %18, 3
  store i32 %and, ptr %flags.addr, align 4
  %19 = load ptr, ptr %pInode, align 8
  %pUnused7 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %19, i32 0, i32 6
  store ptr %pUnused7, ptr %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then6
  %20 = load ptr, ptr %pp, align 8
  %21 = load ptr, ptr %20, align 8
  %tobool8 = icmp ne ptr %21, null
  br i1 %tobool8, label %land.rhs9, label %land.end12

land.rhs9:                                        ; preds = %for.cond
  %22 = load ptr, ptr %pp, align 8
  %23 = load ptr, ptr %22, align 8
  %flags10 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %flags10, align 4
  %25 = load i32, ptr %flags.addr, align 4
  %cmp11 = icmp ne i32 %24, %25
  br label %land.end12

land.end12:                                       ; preds = %land.rhs9, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %cmp11, %land.rhs9 ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end12
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load ptr, ptr %pp, align 8
  %28 = load ptr, ptr %27, align 8
  %pNext13 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %28, i32 0, i32 2
  store ptr %pNext13, ptr %pp, align 8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.end12
  %29 = load ptr, ptr %pp, align 8
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %pUnused, align 8
  %31 = load ptr, ptr %pUnused, align 8
  %tobool14 = icmp ne ptr %31, null
  br i1 %tobool14, label %if.then15, label %if.end

if.then15:                                        ; preds = %for.end
  %32 = load ptr, ptr %pUnused, align 8
  %pNext16 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %32, i32 0, i32 2
  %33 = load ptr, ptr %pNext16, align 8
  %34 = load ptr, ptr %pp, align 8
  store ptr %33, ptr %34, align 8
  br label %if.end

if.end:                                           ; preds = %if.then15, %for.end
  %35 = load ptr, ptr %pInode, align 8
  %pLockMutex17 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %pLockMutex17, align 8
  call void @sqlite3_mutex_leave(ptr noundef %36)
  br label %if.end18

if.end18:                                         ; preds = %if.end, %while.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %land.lhs.true, %entry
  call void @unixLeaveMutex()
  %37 = load ptr, ptr %pUnused, align 8
  ret ptr %37
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
!8 = distinct !{!8, !7}
