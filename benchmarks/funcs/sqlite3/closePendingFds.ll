; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.UnixUnusedFd = type { i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @closePendingFds(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %pInode = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode1, align 8
  store ptr %1, ptr %pInode, align 8
  %2 = load ptr, ptr %pInode, align 8
  %pUnused = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %pUnused, align 8
  store ptr %3, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %p, align 8
  %pNext2 = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pNext2, align 8
  store ptr %6, ptr %pNext, align 8
  %7 = load ptr, ptr %pFile.addr, align 8
  %8 = load ptr, ptr %p, align 8
  %fd = getelementptr inbounds nuw %struct.UnixUnusedFd, ptr %8, i32 0, i32 0
  %9 = load i32, ptr %fd, align 8
  call void @robust_close(ptr noundef %7, i32 noundef %9, i32 noundef 33999)
  %10 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %pNext, align 8
  store ptr %11, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pInode, align 8
  %pUnused3 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %12, i32 0, i32 6
  store ptr null, ptr %pUnused3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #0

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
