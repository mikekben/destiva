; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixShmRegionPerMap() #0

; Function Attrs: nounwind uwtable
define hidden void @unixShmPurge(ptr noundef %pFd) #0 {
entry:
  %pFd.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %nShmPerMap = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pFd, ptr %pFd.addr, align 8
  %0 = load ptr, ptr %pFd.addr, align 8
  %pInode = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pInode, align 8
  %pShmNode = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %1, i32 0, i32 8
  %2 = load ptr, ptr %pShmNode, align 8
  store ptr %2, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %p, align 8
  %nRef = getelementptr inbounds nuw %struct.unixShmNode, ptr %4, i32 0, i32 9
  %5 = load i32, ptr %nRef, align 8
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end21

if.then:                                          ; preds = %land.lhs.true
  %call = call i32 @unixShmRegionPerMap()
  store i32 %call, ptr %nShmPerMap, align 4
  %6 = load ptr, ptr %p, align 8
  %pShmMutex = getelementptr inbounds nuw %struct.unixShmNode, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pShmMutex, align 8
  call void @sqlite3_mutex_free(ptr noundef %7)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %8 = load i32, ptr %i, align 4
  %9 = load ptr, ptr %p, align 8
  %nRegion = getelementptr inbounds nuw %struct.unixShmNode, ptr %9, i32 0, i32 5
  %10 = load i16, ptr %nRegion, align 8
  %conv = zext i16 %10 to i32
  %cmp1 = icmp slt i32 %8, %conv
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %p, align 8
  %hShm = getelementptr inbounds nuw %struct.unixShmNode, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %hShm, align 8
  %cmp3 = icmp sge i32 %12, 0
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 23), i32 0, i32 1), align 8
  %14 = load ptr, ptr %p, align 8
  %apRegion = getelementptr inbounds nuw %struct.unixShmNode, ptr %14, i32 0, i32 8
  %15 = load ptr, ptr %apRegion, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %15, i64 %idxprom
  %17 = load ptr, ptr %arrayidx, align 8
  %18 = load ptr, ptr %p, align 8
  %szRegion = getelementptr inbounds nuw %struct.unixShmNode, ptr %18, i32 0, i32 4
  %19 = load i32, ptr %szRegion, align 4
  %conv6 = sext i32 %19 to i64
  %call7 = call i32 %13(ptr noundef %17, i64 noundef %conv6)
  br label %if.end

if.else:                                          ; preds = %for.body
  %20 = load ptr, ptr %p, align 8
  %apRegion8 = getelementptr inbounds nuw %struct.unixShmNode, ptr %20, i32 0, i32 8
  %21 = load ptr, ptr %apRegion8, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %22 to i64
  %arrayidx10 = getelementptr inbounds ptr, ptr %21, i64 %idxprom9
  %23 = load ptr, ptr %arrayidx10, align 8
  call void @sqlite3_free(ptr noundef %23)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %nShmPerMap, align 4
  %25 = load i32, ptr %i, align 4
  %add = add nsw i32 %25, %24
  store i32 %add, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load ptr, ptr %p, align 8
  %apRegion11 = getelementptr inbounds nuw %struct.unixShmNode, ptr %26, i32 0, i32 8
  %27 = load ptr, ptr %apRegion11, align 8
  call void @sqlite3_free(ptr noundef %27)
  %28 = load ptr, ptr %p, align 8
  %hShm12 = getelementptr inbounds nuw %struct.unixShmNode, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %hShm12, align 8
  %cmp13 = icmp sge i32 %29, 0
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %for.end
  %30 = load ptr, ptr %pFd.addr, align 8
  %31 = load ptr, ptr %p, align 8
  %hShm16 = getelementptr inbounds nuw %struct.unixShmNode, ptr %31, i32 0, i32 3
  %32 = load i32, ptr %hShm16, align 8
  call void @robust_close(ptr noundef %30, i32 noundef %32, i32 noundef 37092)
  %33 = load ptr, ptr %p, align 8
  %hShm17 = getelementptr inbounds nuw %struct.unixShmNode, ptr %33, i32 0, i32 3
  store i32 -1, ptr %hShm17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.end
  %34 = load ptr, ptr %p, align 8
  %pInode19 = getelementptr inbounds nuw %struct.unixShmNode, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pInode19, align 8
  %pShmNode20 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %35, i32 0, i32 8
  store ptr null, ptr %pShmNode20, align 8
  %36 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %36)
  br label %if.end21

if.end21:                                         ; preds = %if.end18, %land.lhs.true, %entry
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
