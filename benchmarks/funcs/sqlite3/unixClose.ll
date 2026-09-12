; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixClose(ptr noundef %id) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pFile = alloca ptr, align 8
  %pInode = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load ptr, ptr %pFile, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pInode1, align 8
  store ptr %2, ptr %pInode, align 8
  %3 = load ptr, ptr %pFile, align 8
  call void @verifyDbFile(ptr noundef %3)
  %4 = load ptr, ptr %id.addr, align 8
  %call = call i32 @unixUnlock(ptr noundef %4, i32 noundef 0)
  call void @unixEnterMutex()
  %5 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pLockMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %6)
  %7 = load ptr, ptr %pInode, align 8
  %nLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %7, i32 0, i32 3
  %8 = load i32, ptr %nLock, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load ptr, ptr %pFile, align 8
  call void @setPendingFd(ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load ptr, ptr %pInode, align 8
  %pLockMutex2 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pLockMutex2, align 8
  call void @sqlite3_mutex_leave(ptr noundef %11)
  %12 = load ptr, ptr %pFile, align 8
  call void @releaseInodeInfo(ptr noundef %12)
  %13 = load ptr, ptr %id.addr, align 8
  %call3 = call i32 @closeUnixFile(ptr noundef %13)
  store i32 %call3, ptr %rc, align 4
  call void @unixLeaveMutex()
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixUnlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @verifyDbFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixEnterMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @setPendingFd(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @releaseInodeInfo(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @closeUnixFile(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixLeaveMutex() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
