; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }

@sqlite3PendingByte = external hidden global i32, align 4
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @unixFileLock(ptr noundef %pFile, ptr noundef %pLock) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %pLock.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pInode = alloca ptr, align 8
  %lock = alloca %struct.flock, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %pLock, ptr %pLock.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode1, align 8
  store ptr %1, ptr %pInode, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %ctrlFlags = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 5
  %3 = load i16, ptr %ctrlFlags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 3
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pInode, align 8
  %bProcessLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %4, i32 0, i32 5
  %5 = load i8, ptr %bProcessLock, align 1
  %conv3 = zext i8 %5 to i32
  %cmp4 = icmp eq i32 %conv3, 0
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then
  %l_whence = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence, align 2
  %6 = load i32, ptr @sqlite3PendingByte, align 4
  %add = add nsw i32 %6, 2
  %conv7 = sext i32 %add to i64
  %l_start = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv7, ptr %l_start, align 8
  %l_len = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 510, ptr %l_len, align 8
  %l_type = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 1, ptr %l_type, align 8
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 7), i32 0, i32 1), align 8
  %8 = load ptr, ptr %pFile.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %h, align 8
  %call = call i32 (i32, i32, ...) %7(i32 noundef %9, i32 noundef 6, ptr noundef %lock)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then10, label %if.end

if.then10:                                        ; preds = %if.then6
  %11 = load i32, ptr %rc, align 4
  store i32 %11, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then6
  %12 = load ptr, ptr %pInode, align 8
  %bProcessLock11 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %12, i32 0, i32 5
  store i8 1, ptr %bProcessLock11, align 1
  %13 = load ptr, ptr %pInode, align 8
  %nLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %nLock, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %nLock, align 4
  br label %if.end12

if.else:                                          ; preds = %if.then
  store i32 0, ptr %rc, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end
  br label %if.end16

if.else13:                                        ; preds = %entry
  %15 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 7), i32 0, i32 1), align 8
  %16 = load ptr, ptr %pFile.addr, align 8
  %h14 = getelementptr inbounds nuw %struct.unixFile, ptr %16, i32 0, i32 3
  %17 = load i32, ptr %h14, align 8
  %18 = load ptr, ptr %pLock.addr, align 8
  %call15 = call i32 (i32, i32, ...) %15(i32 noundef %17, i32 noundef 6, ptr noundef %18)
  store i32 %call15, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else13, %if.end12
  %19 = load i32, ptr %rc, align 4
  store i32 %19, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then10
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
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
