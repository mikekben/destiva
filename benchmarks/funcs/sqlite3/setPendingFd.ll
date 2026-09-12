; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.UnixUnusedFd = type { i32, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden void @setPendingFd(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pInode = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode1, align 8
  store ptr %1, ptr %pInode, align 8
  %2 = load ptr, ptr %pFile.addr, align 8
  %pPreallocatedUnused = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 8
  %3 = load ptr, ptr %pPreallocatedUnused, align 8
  store ptr %3, ptr %p, align 8
  %4 = load ptr, ptr %pInode, align 8
  %pUnused = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %pUnused, align 8
  %6 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %6, i32 0, i32 2
  store ptr %5, ptr %pNext, align 8
  %7 = load ptr, ptr %p, align 8
  %8 = load ptr, ptr %pInode, align 8
  %pUnused2 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %8, i32 0, i32 6
  store ptr %7, ptr %pUnused2, align 8
  %9 = load ptr, ptr %pFile.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %9, i32 0, i32 3
  store i32 -1, ptr %h, align 8
  %10 = load ptr, ptr %pFile.addr, align 8
  %pPreallocatedUnused3 = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 8
  store ptr null, ptr %pPreallocatedUnused3, align 8
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
