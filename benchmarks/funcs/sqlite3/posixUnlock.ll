; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @closePendingFds(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixFileLock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @posixUnlock(ptr noundef %id, i32 noundef %eFileLock, i32 noundef %handleNFSUnlock) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %eFileLock.addr = alloca i32, align 4
  %handleNFSUnlock.addr = alloca i32, align 4
  %pFile = alloca ptr, align 8
  %pInode = alloca ptr, align 8
  %lock = alloca %struct.flock, align 8
  %rc = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i32 %eFileLock, ptr %eFileLock.addr, align 4
  store i32 %handleNFSUnlock, ptr %handleNFSUnlock.addr, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %pFile, align 8
  %eFileLock1 = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 4
  %2 = load i8, ptr %eFileLock1, align 4
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %eFileLock.addr, align 4
  %cmp = icmp sle i32 %conv, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pFile, align 8
  %pInode3 = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pInode3, align 8
  store ptr %5, ptr %pInode, align 8
  %6 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pLockMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %7)
  %8 = load ptr, ptr %pFile, align 8
  %eFileLock4 = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 4
  %9 = load i8, ptr %eFileLock4, align 4
  %conv5 = zext i8 %9 to i32
  %cmp6 = icmp sgt i32 %conv5, 1
  br i1 %cmp6, label %if.then8, label %if.end29

if.then8:                                         ; preds = %if.end
  %10 = load i32, ptr %eFileLock.addr, align 4
  %cmp9 = icmp eq i32 %10, 1
  br i1 %cmp9, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.then8
  %11 = load i32, ptr %handleNFSUnlock.addr, align 4
  %l_type = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 0, ptr %l_type, align 8
  %l_whence = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence, align 2
  %12 = load i32, ptr @sqlite3PendingByte, align 4
  %add = add nsw i32 %12, 2
  %conv12 = sext i32 %add to i64
  %l_start = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv12, ptr %l_start, align 8
  %l_len = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 510, ptr %l_len, align 8
  %13 = load ptr, ptr %pFile, align 8
  %call = call i32 @unixFileLock(ptr noundef %13, ptr noundef %lock)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then11
  store i32 2314, ptr %rc, align 4
  %14 = load ptr, ptr %pFile, align 8
  %call14 = call ptr @__errno_location() #2
  %15 = load i32, ptr %call14, align 4
  call void @storeLastErrno(ptr noundef %14, i32 noundef %15)
  br label %end_unlock

if.end15:                                         ; preds = %if.then11
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  %l_type17 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 2, ptr %l_type17, align 8
  %l_whence18 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence18, align 2
  %16 = load i32, ptr @sqlite3PendingByte, align 4
  %conv19 = sext i32 %16 to i64
  %l_start20 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv19, ptr %l_start20, align 8
  %l_len21 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 2, ptr %l_len21, align 8
  %17 = load ptr, ptr %pFile, align 8
  %call22 = call i32 @unixFileLock(ptr noundef %17, ptr noundef %lock)
  %cmp23 = icmp eq i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end16
  %18 = load ptr, ptr %pInode, align 8
  %eFileLock26 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %18, i32 0, i32 4
  store i8 1, ptr %eFileLock26, align 8
  br label %if.end28

if.else:                                          ; preds = %if.end16
  store i32 2058, ptr %rc, align 4
  %19 = load ptr, ptr %pFile, align 8
  %call27 = call ptr @__errno_location() #2
  %20 = load i32, ptr %call27, align 4
  call void @storeLastErrno(ptr noundef %19, i32 noundef %20)
  br label %end_unlock

if.end28:                                         ; preds = %if.then25
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end
  %21 = load i32, ptr %eFileLock.addr, align 4
  %cmp30 = icmp eq i32 %21, 0
  br i1 %cmp30, label %if.then32, label %if.end58

if.then32:                                        ; preds = %if.end29
  %22 = load ptr, ptr %pInode, align 8
  %nShared = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %nShared, align 8
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %nShared, align 8
  %24 = load ptr, ptr %pInode, align 8
  %nShared33 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nShared33, align 8
  %cmp34 = icmp eq i32 %25, 0
  br i1 %cmp34, label %if.then36, label %if.end51

if.then36:                                        ; preds = %if.then32
  %l_type37 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 2, ptr %l_type37, align 8
  %l_whence38 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence38, align 2
  %l_len39 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 0, ptr %l_len39, align 8
  %l_start40 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 0, ptr %l_start40, align 8
  %26 = load ptr, ptr %pFile, align 8
  %call41 = call i32 @unixFileLock(ptr noundef %26, ptr noundef %lock)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.then36
  %27 = load ptr, ptr %pInode, align 8
  %eFileLock45 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %27, i32 0, i32 4
  store i8 0, ptr %eFileLock45, align 8
  br label %if.end50

if.else46:                                        ; preds = %if.then36
  store i32 2058, ptr %rc, align 4
  %28 = load ptr, ptr %pFile, align 8
  %call47 = call ptr @__errno_location() #2
  %29 = load i32, ptr %call47, align 4
  call void @storeLastErrno(ptr noundef %28, i32 noundef %29)
  %30 = load ptr, ptr %pInode, align 8
  %eFileLock48 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %30, i32 0, i32 4
  store i8 0, ptr %eFileLock48, align 8
  %31 = load ptr, ptr %pFile, align 8
  %eFileLock49 = getelementptr inbounds nuw %struct.unixFile, ptr %31, i32 0, i32 4
  store i8 0, ptr %eFileLock49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.else46, %if.then44
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.then32
  %32 = load ptr, ptr %pInode, align 8
  %nLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %nLock, align 4
  %dec52 = add nsw i32 %33, -1
  store i32 %dec52, ptr %nLock, align 4
  %34 = load ptr, ptr %pInode, align 8
  %nLock53 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %nLock53, align 4
  %cmp54 = icmp eq i32 %35, 0
  br i1 %cmp54, label %if.then56, label %if.end57

if.then56:                                        ; preds = %if.end51
  %36 = load ptr, ptr %pFile, align 8
  call void @closePendingFds(ptr noundef %36)
  br label %if.end57

if.end57:                                         ; preds = %if.then56, %if.end51
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.end29
  br label %end_unlock

end_unlock:                                       ; preds = %if.end58, %if.else, %if.then13
  %37 = load ptr, ptr %pInode, align 8
  %pLockMutex59 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %37, i32 0, i32 1
  %38 = load ptr, ptr %pLockMutex59, align 8
  call void @sqlite3_mutex_leave(ptr noundef %38)
  %39 = load i32, ptr %rc, align 4
  %cmp60 = icmp eq i32 %39, 0
  br i1 %cmp60, label %if.then62, label %if.end65

if.then62:                                        ; preds = %end_unlock
  %40 = load i32, ptr %eFileLock.addr, align 4
  %conv63 = trunc i32 %40 to i8
  %41 = load ptr, ptr %pFile, align 8
  %eFileLock64 = getelementptr inbounds nuw %struct.unixFile, ptr %41, i32 0, i32 4
  store i8 %conv63, ptr %eFileLock64, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %end_unlock
  %42 = load i32, ptr %rc, align 4
  store i32 %42, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end65, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
}

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
