; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixShm = type { ptr, ptr, i8, i8, i16, i16 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixShmUnmap(ptr noundef %fd, i32 noundef %deleteFlag) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca ptr, align 8
  %deleteFlag.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %pShmNode = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %pDbFd = alloca ptr, align 8
  store ptr %fd, ptr %fd.addr, align 8
  store i32 %deleteFlag, ptr %deleteFlag.addr, align 4
  %0 = load ptr, ptr %fd.addr, align 8
  store ptr %0, ptr %pDbFd, align 8
  %1 = load ptr, ptr %pDbFd, align 8
  %pShm = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 10
  %2 = load ptr, ptr %pShm, align 8
  store ptr %2, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %pShmNode1 = getelementptr inbounds nuw %struct.unixShm, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pShmNode1, align 8
  store ptr %5, ptr %pShmNode, align 8
  %6 = load ptr, ptr %pShmNode, align 8
  %pShmMutex = getelementptr inbounds nuw %struct.unixShmNode, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pShmMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %7)
  %8 = load ptr, ptr %pShmNode, align 8
  %pFirst = getelementptr inbounds nuw %struct.unixShmNode, ptr %8, i32 0, i32 10
  store ptr %pFirst, ptr %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load ptr, ptr %pp, align 8
  %10 = load ptr, ptr %9, align 8
  %11 = load ptr, ptr %p, align 8
  %cmp2 = icmp ne ptr %10, %11
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %pp, align 8
  %13 = load ptr, ptr %12, align 8
  %pNext = getelementptr inbounds nuw %struct.unixShm, ptr %13, i32 0, i32 1
  store ptr %pNext, ptr %pp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load ptr, ptr %p, align 8
  %pNext3 = getelementptr inbounds nuw %struct.unixShm, ptr %14, i32 0, i32 1
  %15 = load ptr, ptr %pNext3, align 8
  %16 = load ptr, ptr %pp, align 8
  store ptr %15, ptr %16, align 8
  %17 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %17)
  %18 = load ptr, ptr %pDbFd, align 8
  %pShm4 = getelementptr inbounds nuw %struct.unixFile, ptr %18, i32 0, i32 10
  store ptr null, ptr %pShm4, align 8
  %19 = load ptr, ptr %pShmNode, align 8
  %pShmMutex5 = getelementptr inbounds nuw %struct.unixShmNode, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pShmMutex5, align 8
  call void @sqlite3_mutex_leave(ptr noundef %20)
  call void @unixEnterMutex()
  %21 = load ptr, ptr %pShmNode, align 8
  %nRef = getelementptr inbounds nuw %struct.unixShmNode, ptr %21, i32 0, i32 9
  %22 = load i32, ptr %nRef, align 8
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %nRef, align 8
  %23 = load ptr, ptr %pShmNode, align 8
  %nRef6 = getelementptr inbounds nuw %struct.unixShmNode, ptr %23, i32 0, i32 9
  %24 = load i32, ptr %nRef6, align 8
  %cmp7 = icmp eq i32 %24, 0
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %for.end
  %25 = load i32, ptr %deleteFlag.addr, align 4
  %tobool = icmp ne i32 %25, 0
  br i1 %tobool, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.then8
  %26 = load ptr, ptr %pShmNode, align 8
  %hShm = getelementptr inbounds nuw %struct.unixShmNode, ptr %26, i32 0, i32 3
  %27 = load i32, ptr %hShm, align 8
  %cmp9 = icmp sge i32 %27, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 16), i32 0, i32 1), align 8
  %29 = load ptr, ptr %pShmNode, align 8
  %zFilename = getelementptr inbounds nuw %struct.unixShmNode, ptr %29, i32 0, i32 2
  %30 = load ptr, ptr %zFilename, align 8
  %call = call i32 %28(ptr noundef %30)
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true, %if.then8
  %31 = load ptr, ptr %pDbFd, align 8
  call void @unixShmPurge(ptr noundef %31)
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.end
  call void @unixLeaveMutex()
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden void @unixEnterMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @unixLeaveMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @unixShmPurge(ptr noundef) #0

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
