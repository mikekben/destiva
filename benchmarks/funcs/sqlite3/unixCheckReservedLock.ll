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
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixCheckReservedLock(ptr noundef %id, ptr noundef %pResOut) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %pResOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %reserved = alloca i32, align 4
  %pFile = alloca ptr, align 8
  %lock = alloca %struct.flock, align 8
  store ptr %id, ptr %id.addr, align 8
  store ptr %pResOut, ptr %pResOut.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %reserved, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load ptr, ptr %pFile, align 8
  %pInode = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pLockMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %pFile, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pInode1, align 8
  %eFileLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %5, i32 0, i32 4
  %6 = load i8, ptr %eFileLock, align 8
  %conv = zext i8 %6 to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %reserved, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %reserved, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.end17, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %pFile, align 8
  %pInode3 = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pInode3, align 8
  %bProcessLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %9, i32 0, i32 5
  %10 = load i8, ptr %bProcessLock, align 1
  %tobool4 = icmp ne i8 %10, 0
  br i1 %tobool4, label %if.end17, label %if.then5

if.then5:                                         ; preds = %land.lhs.true
  %l_whence = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence, align 2
  %11 = load i32, ptr @sqlite3PendingByte, align 4
  %add = add nsw i32 %11, 1
  %conv6 = sext i32 %add to i64
  %l_start = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv6, ptr %l_start, align 8
  %l_len = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 1, ptr %l_len, align 8
  %l_type = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 1, ptr %l_type, align 8
  %12 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 7), i32 0, i32 1), align 8
  %13 = load ptr, ptr %pFile, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %h, align 8
  %call = call i32 (i32, i32, ...) %12(i32 noundef %14, i32 noundef 5, ptr noundef %lock)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  store i32 3594, ptr %rc, align 4
  %15 = load ptr, ptr %pFile, align 8
  %call9 = call ptr @__errno_location() #2
  %16 = load i32, ptr %call9, align 4
  call void @storeLastErrno(ptr noundef %15, i32 noundef %16)
  br label %if.end16

if.else:                                          ; preds = %if.then5
  %l_type10 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  %17 = load i16, ptr %l_type10, align 8
  %conv11 = sext i16 %17 to i32
  %cmp12 = icmp ne i32 %conv11, 2
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.else
  store i32 1, ptr %reserved, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end
  %18 = load ptr, ptr %pFile, align 8
  %pInode18 = getelementptr inbounds nuw %struct.unixFile, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pInode18, align 8
  %pLockMutex19 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pLockMutex19, align 8
  call void @sqlite3_mutex_leave(ptr noundef %20)
  %21 = load i32, ptr %reserved, align 4
  %22 = load ptr, ptr %pResOut.addr, align 8
  store i32 %21, ptr %22, align 4
  %23 = load i32, ptr %rc, align 4
  ret i32 %23
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
