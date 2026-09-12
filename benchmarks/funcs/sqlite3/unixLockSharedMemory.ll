; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.47 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_ftruncate(i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixLockSharedMemory(ptr noundef %pDbFd, ptr noundef %pShmNode) #0 {
entry:
  %pDbFd.addr = alloca ptr, align 8
  %pShmNode.addr = alloca ptr, align 8
  %lock = alloca %struct.flock, align 8
  %rc = alloca i32, align 4
  store ptr %pDbFd, ptr %pDbFd.addr, align 8
  store ptr %pShmNode, ptr %pShmNode.addr, align 8
  store i32 0, ptr %rc, align 4
  %l_whence = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence, align 2
  %l_start = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 128, ptr %l_start, align 8
  %l_len = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 1, ptr %l_len, align 8
  %l_type = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 1, ptr %l_type, align 8
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 7), i32 0, i32 1), align 8
  %1 = load ptr, ptr %pShmNode.addr, align 8
  %hShm = getelementptr inbounds nuw %struct.unixShmNode, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %hShm, align 8
  %call = call i32 (i32, i32, ...) %0(i32 noundef %2, i32 noundef 5, ptr noundef %lock)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3850, ptr %rc, align 4
  br label %if.end24

if.else:                                          ; preds = %entry
  %l_type1 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  %3 = load i16, ptr %l_type1, align 8
  %conv = sext i16 %3 to i32
  %cmp2 = icmp eq i32 %conv, 2
  br i1 %cmp2, label %if.then4, label %if.else16

if.then4:                                         ; preds = %if.else
  %4 = load ptr, ptr %pShmNode.addr, align 8
  %isReadonly = getelementptr inbounds nuw %struct.unixShmNode, ptr %4, i32 0, i32 6
  %5 = load i8, ptr %isReadonly, align 2
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.then4
  %6 = load ptr, ptr %pShmNode.addr, align 8
  %isUnlocked = getelementptr inbounds nuw %struct.unixShmNode, ptr %6, i32 0, i32 7
  store i8 1, ptr %isUnlocked, align 1
  store i32 1288, ptr %rc, align 4
  br label %if.end15

if.else6:                                         ; preds = %if.then4
  %7 = load ptr, ptr %pDbFd.addr, align 8
  %call7 = call i32 @unixShmSystemLock(ptr noundef %7, i32 noundef 1, i32 noundef 128, i32 noundef 1)
  store i32 %call7, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %8, 0
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else6
  %9 = load ptr, ptr %pShmNode.addr, align 8
  %hShm10 = getelementptr inbounds nuw %struct.unixShmNode, ptr %9, i32 0, i32 3
  %10 = load i32, ptr %hShm10, align 8
  %call11 = call i32 @robust_ftruncate(i32 noundef %10, i64 noundef 3)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end

if.then13:                                        ; preds = %land.lhs.true
  %11 = load ptr, ptr %pShmNode.addr, align 8
  %zFilename = getelementptr inbounds nuw %struct.unixShmNode, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %zFilename, align 8
  %call14 = call i32 @unixLogErrorAtLine(i32 noundef 4618, ptr noundef @.str.47, ptr noundef %12, i32 noundef 37149)
  store i32 %call14, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then13, %land.lhs.true, %if.else6
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then5
  br label %if.end23

if.else16:                                        ; preds = %if.else
  %l_type17 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  %13 = load i16, ptr %l_type17, align 8
  %conv18 = sext i16 %13 to i32
  %cmp19 = icmp eq i32 %conv18, 1
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.else16
  store i32 5, ptr %rc, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.else16
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.end15
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then
  %14 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %14, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  %15 = load ptr, ptr %pDbFd.addr, align 8
  %call28 = call i32 @unixShmSystemLock(ptr noundef %15, i32 noundef 0, i32 noundef 128, i32 noundef 1)
  store i32 %call28, ptr %rc, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.end24
  %16 = load i32, ptr %rc, align 4
  ret i32 %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixShmSystemLock(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
