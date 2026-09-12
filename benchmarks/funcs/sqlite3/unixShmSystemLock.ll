; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @unixShmSystemLock(ptr noundef %pFile, i32 noundef %lockType, i32 noundef %ofst, i32 noundef %n) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %lockType.addr = alloca i32, align 4
  %ofst.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %pShmNode = alloca ptr, align 8
  %f = alloca %struct.flock, align 8
  %rc = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  store i32 %lockType, ptr %lockType.addr, align 4
  store i32 %ofst, ptr %ofst.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %pInode = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode, align 8
  %pShmNode1 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %pShmNode1, align 8
  store ptr %2, ptr %pShmNode, align 8
  %3 = load ptr, ptr %pShmNode, align 8
  %hShm = getelementptr inbounds nuw %struct.unixShmNode, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %hShm, align 8
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %lockType.addr, align 4
  %conv = trunc i32 %5 to i16
  %l_type = getelementptr inbounds nuw %struct.flock, ptr %f, i32 0, i32 0
  store i16 %conv, ptr %l_type, align 8
  %l_whence = getelementptr inbounds nuw %struct.flock, ptr %f, i32 0, i32 1
  store i16 0, ptr %l_whence, align 2
  %6 = load i32, ptr %ofst.addr, align 4
  %conv2 = sext i32 %6 to i64
  %l_start = getelementptr inbounds nuw %struct.flock, ptr %f, i32 0, i32 2
  store i64 %conv2, ptr %l_start, align 8
  %7 = load i32, ptr %n.addr, align 4
  %conv3 = sext i32 %7 to i64
  %l_len = getelementptr inbounds nuw %struct.flock, ptr %f, i32 0, i32 3
  store i64 %conv3, ptr %l_len, align 8
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 7), i32 0, i32 1), align 8
  %9 = load ptr, ptr %pShmNode, align 8
  %hShm4 = getelementptr inbounds nuw %struct.unixShmNode, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %hShm4, align 8
  %call = call i32 (i32, i32, ...) %8(i32 noundef %10, i32 noundef 6, ptr noundef %f)
  store i32 %call, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %11, -1
  %12 = zext i1 %cmp5 to i64
  %cond = select i1 %cmp5, i32 0, i32 5
  store i32 %cond, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load i32, ptr %rc, align 4
  ret i32 %13
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
