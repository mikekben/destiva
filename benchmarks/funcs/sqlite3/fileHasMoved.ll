; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @fileHasMoved(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %buf = alloca %struct.stat, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %pInode = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode, align 8
  %cmp = icmp ne ptr %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 4), i32 0, i32 1), align 8
  %3 = load ptr, ptr %pFile.addr, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 9
  %4 = load ptr, ptr %zPath, align 8
  %call = call i32 %2(ptr noundef %4, ptr noundef %buf)
  %cmp1 = icmp ne i32 %call, 0
  br i1 %cmp1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %st_ino = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 1
  %5 = load i64, ptr %st_ino, align 8
  %6 = load ptr, ptr %pFile.addr, align 8
  %pInode2 = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pInode2, align 8
  %fileId = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %7, i32 0, i32 0
  %ino = getelementptr inbounds nuw %struct.unixFileId, ptr %fileId, i32 0, i32 1
  %8 = load i64, ptr %ino, align 8
  %cmp3 = icmp ne i64 %5, %8
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.rhs
  %9 = phi i1 [ true, %land.rhs ], [ %cmp3, %lor.rhs ]
  br label %land.end

land.end:                                         ; preds = %lor.end, %entry
  %10 = phi i1 [ false, %entry ], [ %9, %lor.end ]
  %land.ext = zext i1 %10 to i32
  ret i32 %land.ext
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
