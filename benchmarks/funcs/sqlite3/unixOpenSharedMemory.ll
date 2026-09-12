; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.unixShmNode = type { ptr, ptr, ptr, i32, i32, i16, i8, i8, ptr, i32, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unixShm = type { ptr, ptr, i8, i8, i16, i16 }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.41 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.82 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.83 = external hidden unnamed_addr constant [13 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mutex_alloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_uri_boolean(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixEnterMutex() #0

; Function Attrs: nounwind uwtable
declare hidden void @unixLeaveMutex() #0

; Function Attrs: nounwind uwtable
declare hidden i32 @robust_open(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixOpenSharedMemory(ptr noundef %pDbFd) #0 {
entry:
  %retval = alloca i32, align 4
  %pDbFd.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pShmNode = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pInode = alloca ptr, align 8
  %zShm = alloca ptr, align 8
  %nShmFilename = alloca i32, align 4
  %sStat = alloca %struct.stat, align 8
  %zBasePath = alloca ptr, align 8
  store ptr %pDbFd, ptr %pDbFd.addr, align 8
  store ptr null, ptr %p, align 8
  store i32 0, ptr %rc, align 4
  %call = call ptr @sqlite3_malloc64(i64 noundef 24)
  store ptr %call, ptr %p, align 8
  %0 = load ptr, ptr %p, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %p, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %1, i8 0, i64 24, i1 false)
  call void @unixEnterMutex()
  %2 = load ptr, ptr %pDbFd.addr, align 8
  %pInode1 = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pInode1, align 8
  store ptr %3, ptr %pInode, align 8
  %4 = load ptr, ptr %pInode, align 8
  %pShmNode2 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %4, i32 0, i32 8
  %5 = load ptr, ptr %pShmNode2, align 8
  store ptr %5, ptr %pShmNode, align 8
  %6 = load ptr, ptr %pShmNode, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end70

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pDbFd.addr, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %7, i32 0, i32 9
  %8 = load ptr, ptr %zPath, align 8
  store ptr %8, ptr %zBasePath, align 8
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %10 = load ptr, ptr %pDbFd.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %h, align 8
  %call5 = call i32 %9(i32 noundef %11, ptr noundef %sStat)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then4
  store i32 1802, ptr %rc, align 4
  br label %shm_open_err

if.end7:                                          ; preds = %if.then4
  %12 = load ptr, ptr %zBasePath, align 8
  %call8 = call i64 @strlen(ptr noundef %12) #3
  %conv = trunc i64 %call8 to i32
  %add = add nsw i32 6, %conv
  store i32 %add, ptr %nShmFilename, align 4
  %13 = load i32, ptr %nShmFilename, align 4
  %conv9 = sext i32 %13 to i64
  %add10 = add i64 64, %conv9
  %call11 = call ptr @sqlite3_malloc64(i64 noundef %add10)
  store ptr %call11, ptr %pShmNode, align 8
  %14 = load ptr, ptr %pShmNode, align 8
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end7
  store i32 7, ptr %rc, align 4
  br label %shm_open_err

if.end15:                                         ; preds = %if.end7
  %15 = load ptr, ptr %pShmNode, align 8
  %16 = load i32, ptr %nShmFilename, align 4
  %conv16 = sext i32 %16 to i64
  %add17 = add i64 64, %conv16
  call void @llvm.memset.p0.i64(ptr align 8 %15, i8 0, i64 %add17, i1 false)
  %17 = load ptr, ptr %pShmNode, align 8
  %arrayidx = getelementptr inbounds %struct.unixShmNode, ptr %17, i64 1
  %18 = load ptr, ptr %pShmNode, align 8
  %zFilename = getelementptr inbounds nuw %struct.unixShmNode, ptr %18, i32 0, i32 2
  store ptr %arrayidx, ptr %zFilename, align 8
  store ptr %arrayidx, ptr %zShm, align 8
  %19 = load i32, ptr %nShmFilename, align 4
  %20 = load ptr, ptr %zShm, align 8
  %21 = load ptr, ptr %zBasePath, align 8
  %call18 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %19, ptr noundef %20, ptr noundef @.str.82, ptr noundef %21)
  %22 = load ptr, ptr %pShmNode, align 8
  %hShm = getelementptr inbounds nuw %struct.unixShmNode, ptr %22, i32 0, i32 3
  store i32 -1, ptr %hShm, align 8
  %23 = load ptr, ptr %pShmNode, align 8
  %24 = load ptr, ptr %pDbFd.addr, align 8
  %pInode19 = getelementptr inbounds nuw %struct.unixFile, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %pInode19, align 8
  %pShmNode20 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %25, i32 0, i32 8
  store ptr %23, ptr %pShmNode20, align 8
  %26 = load ptr, ptr %pDbFd.addr, align 8
  %pInode21 = getelementptr inbounds nuw %struct.unixFile, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pInode21, align 8
  %28 = load ptr, ptr %pShmNode, align 8
  %pInode22 = getelementptr inbounds nuw %struct.unixShmNode, ptr %28, i32 0, i32 0
  store ptr %27, ptr %pInode22, align 8
  %29 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %tobool23 = icmp ne i8 %29, 0
  br i1 %tobool23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %if.end15
  %call25 = call ptr @sqlite3_mutex_alloc(i32 noundef 0)
  %30 = load ptr, ptr %pShmNode, align 8
  %pShmMutex = getelementptr inbounds nuw %struct.unixShmNode, ptr %30, i32 0, i32 1
  store ptr %call25, ptr %pShmMutex, align 8
  %31 = load ptr, ptr %pShmNode, align 8
  %pShmMutex26 = getelementptr inbounds nuw %struct.unixShmNode, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %pShmMutex26, align 8
  %cmp27 = icmp eq ptr %32, null
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then24
  store i32 7, ptr %rc, align 4
  br label %shm_open_err

if.end30:                                         ; preds = %if.then24
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end15
  %33 = load ptr, ptr %pInode, align 8
  %bProcessLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %33, i32 0, i32 5
  %34 = load i8, ptr %bProcessLock, align 1
  %conv32 = zext i8 %34 to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %if.then35, label %if.end69

if.then35:                                        ; preds = %if.end31
  %35 = load ptr, ptr %pDbFd.addr, align 8
  %zPath36 = getelementptr inbounds nuw %struct.unixFile, ptr %35, i32 0, i32 9
  %36 = load ptr, ptr %zPath36, align 8
  %call37 = call i32 @sqlite3_uri_boolean(ptr noundef %36, ptr noundef @.str.83, i32 noundef 0)
  %cmp38 = icmp eq i32 0, %call37
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then35
  %37 = load ptr, ptr %zShm, align 8
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 3
  %38 = load i32, ptr %st_mode, align 8
  %and = and i32 %38, 511
  %call41 = call i32 @robust_open(ptr noundef %37, i32 noundef 66, i32 noundef %and)
  %39 = load ptr, ptr %pShmNode, align 8
  %hShm42 = getelementptr inbounds nuw %struct.unixShmNode, ptr %39, i32 0, i32 3
  store i32 %call41, ptr %hShm42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then35
  %40 = load ptr, ptr %pShmNode, align 8
  %hShm44 = getelementptr inbounds nuw %struct.unixShmNode, ptr %40, i32 0, i32 3
  %41 = load i32, ptr %hShm44, align 8
  %cmp45 = icmp slt i32 %41, 0
  br i1 %cmp45, label %if.then47, label %if.end59

if.then47:                                        ; preds = %if.end43
  %42 = load ptr, ptr %zShm, align 8
  %st_mode48 = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 3
  %43 = load i32, ptr %st_mode48, align 8
  %and49 = and i32 %43, 511
  %call50 = call i32 @robust_open(ptr noundef %42, i32 noundef 0, i32 noundef %and49)
  %44 = load ptr, ptr %pShmNode, align 8
  %hShm51 = getelementptr inbounds nuw %struct.unixShmNode, ptr %44, i32 0, i32 3
  store i32 %call50, ptr %hShm51, align 8
  %45 = load ptr, ptr %pShmNode, align 8
  %hShm52 = getelementptr inbounds nuw %struct.unixShmNode, ptr %45, i32 0, i32 3
  %46 = load i32, ptr %hShm52, align 8
  %cmp53 = icmp slt i32 %46, 0
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.then47
  %call56 = call i32 @sqlite3CantopenError(i32 noundef 37272)
  %47 = load ptr, ptr %zShm, align 8
  %call57 = call i32 @unixLogErrorAtLine(i32 noundef %call56, ptr noundef @.str.41, ptr noundef %47, i32 noundef 37272)
  store i32 %call57, ptr %rc, align 4
  br label %shm_open_err

if.end58:                                         ; preds = %if.then47
  %48 = load ptr, ptr %pShmNode, align 8
  %isReadonly = getelementptr inbounds nuw %struct.unixShmNode, ptr %48, i32 0, i32 6
  store i8 1, ptr %isReadonly, align 2
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end43
  %49 = load ptr, ptr %pShmNode, align 8
  %hShm60 = getelementptr inbounds nuw %struct.unixShmNode, ptr %49, i32 0, i32 3
  %50 = load i32, ptr %hShm60, align 8
  %st_uid = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 4
  %51 = load i32, ptr %st_uid, align 4
  %st_gid = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 5
  %52 = load i32, ptr %st_gid, align 8
  %call61 = call i32 @robustFchown(i32 noundef %50, i32 noundef %51, i32 noundef %52)
  %53 = load ptr, ptr %pDbFd.addr, align 8
  %54 = load ptr, ptr %pShmNode, align 8
  %call62 = call i32 @unixLockSharedMemory(ptr noundef %53, ptr noundef %54)
  store i32 %call62, ptr %rc, align 4
  %55 = load i32, ptr %rc, align 4
  %cmp63 = icmp ne i32 %55, 0
  br i1 %cmp63, label %land.lhs.true, label %if.end68

land.lhs.true:                                    ; preds = %if.end59
  %56 = load i32, ptr %rc, align 4
  %cmp65 = icmp ne i32 %56, 1288
  br i1 %cmp65, label %if.then67, label %if.end68

if.then67:                                        ; preds = %land.lhs.true
  br label %shm_open_err

if.end68:                                         ; preds = %land.lhs.true, %if.end59
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.end31
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.end
  %57 = load ptr, ptr %pShmNode, align 8
  %58 = load ptr, ptr %p, align 8
  %pShmNode71 = getelementptr inbounds nuw %struct.unixShm, ptr %58, i32 0, i32 0
  store ptr %57, ptr %pShmNode71, align 8
  %59 = load ptr, ptr %pShmNode, align 8
  %nRef = getelementptr inbounds nuw %struct.unixShmNode, ptr %59, i32 0, i32 9
  %60 = load i32, ptr %nRef, align 8
  %inc = add nsw i32 %60, 1
  store i32 %inc, ptr %nRef, align 8
  %61 = load ptr, ptr %p, align 8
  %62 = load ptr, ptr %pDbFd.addr, align 8
  %pShm = getelementptr inbounds nuw %struct.unixFile, ptr %62, i32 0, i32 10
  store ptr %61, ptr %pShm, align 8
  call void @unixLeaveMutex()
  %63 = load ptr, ptr %pShmNode, align 8
  %pShmMutex72 = getelementptr inbounds nuw %struct.unixShmNode, ptr %63, i32 0, i32 1
  %64 = load ptr, ptr %pShmMutex72, align 8
  call void @sqlite3_mutex_enter(ptr noundef %64)
  %65 = load ptr, ptr %pShmNode, align 8
  %pFirst = getelementptr inbounds nuw %struct.unixShmNode, ptr %65, i32 0, i32 10
  %66 = load ptr, ptr %pFirst, align 8
  %67 = load ptr, ptr %p, align 8
  %pNext = getelementptr inbounds nuw %struct.unixShm, ptr %67, i32 0, i32 1
  store ptr %66, ptr %pNext, align 8
  %68 = load ptr, ptr %p, align 8
  %69 = load ptr, ptr %pShmNode, align 8
  %pFirst73 = getelementptr inbounds nuw %struct.unixShmNode, ptr %69, i32 0, i32 10
  store ptr %68, ptr %pFirst73, align 8
  %70 = load ptr, ptr %pShmNode, align 8
  %pShmMutex74 = getelementptr inbounds nuw %struct.unixShmNode, ptr %70, i32 0, i32 1
  %71 = load ptr, ptr %pShmMutex74, align 8
  call void @sqlite3_mutex_leave(ptr noundef %71)
  %72 = load i32, ptr %rc, align 4
  store i32 %72, ptr %retval, align 4
  br label %return

shm_open_err:                                     ; preds = %if.then67, %if.then55, %if.then29, %if.then14, %if.then6
  %73 = load ptr, ptr %pDbFd.addr, align 8
  call void @unixShmPurge(ptr noundef %73)
  %74 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %74)
  call void @unixLeaveMutex()
  %75 = load i32, ptr %rc, align 4
  store i32 %75, ptr %retval, align 4
  br label %return

return:                                           ; preds = %shm_open_err, %if.end70, %if.then
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLockSharedMemory(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @robustFchown(i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @unixShmPurge(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
