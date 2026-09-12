; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }

@inodeList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @releaseInodeInfo(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pInode = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode1, align 8
  store ptr %1, ptr %pInode, align 8
  %2 = load ptr, ptr %pInode, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pInode, align 8
  %nRef = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %3, i32 0, i32 7
  %4 = load i32, ptr %nRef, align 8
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %nRef, align 8
  %5 = load ptr, ptr %pInode, align 8
  %nRef2 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %5, i32 0, i32 7
  %6 = load i32, ptr %nRef2, align 8
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then3, label %if.end18

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pLockMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %8)
  %9 = load ptr, ptr %pFile.addr, align 8
  call void @closePendingFds(ptr noundef %9)
  %10 = load ptr, ptr %pInode, align 8
  %pLockMutex4 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pLockMutex4, align 8
  call void @sqlite3_mutex_leave(ptr noundef %11)
  %12 = load ptr, ptr %pInode, align 8
  %pPrev = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %12, i32 0, i32 10
  %13 = load ptr, ptr %pPrev, align 8
  %tobool5 = icmp ne ptr %13, null
  br i1 %tobool5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.then3
  %14 = load ptr, ptr %pInode, align 8
  %pNext = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %14, i32 0, i32 9
  %15 = load ptr, ptr %pNext, align 8
  %16 = load ptr, ptr %pInode, align 8
  %pPrev7 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %pPrev7, align 8
  %pNext8 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %17, i32 0, i32 9
  store ptr %15, ptr %pNext8, align 8
  br label %if.end

if.else:                                          ; preds = %if.then3
  %18 = load ptr, ptr %pInode, align 8
  %pNext9 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %18, i32 0, i32 9
  %19 = load ptr, ptr %pNext9, align 8
  store ptr %19, ptr @inodeList, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  %20 = load ptr, ptr %pInode, align 8
  %pNext10 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %pNext10, align 8
  %tobool11 = icmp ne ptr %21, null
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %22 = load ptr, ptr %pInode, align 8
  %pPrev13 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %22, i32 0, i32 10
  %23 = load ptr, ptr %pPrev13, align 8
  %24 = load ptr, ptr %pInode, align 8
  %pNext14 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %24, i32 0, i32 9
  %25 = load ptr, ptr %pNext14, align 8
  %pPrev15 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %25, i32 0, i32 10
  store ptr %23, ptr %pPrev15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end
  %26 = load ptr, ptr %pInode, align 8
  %pLockMutex17 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pLockMutex17, align 8
  call void @sqlite3_mutex_free(ptr noundef %27)
  %28 = load ptr, ptr %pInode, align 8
  call void @sqlite3_free(ptr noundef %28)
  br label %if.end18

if.end18:                                         ; preds = %if.end16, %if.then
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @closePendingFds(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
