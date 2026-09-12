; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@inodeList = external hidden global ptr, align 8

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mutex_alloc(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @findInodeInfo(ptr noundef %pFile, ptr noundef %ppInode) #0 {
entry:
  %retval = alloca i32, align 4
  %pFile.addr = alloca ptr, align 8
  %ppInode.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %fd = alloca i32, align 4
  %fileId = alloca %struct.unixFileId, align 8
  %statbuf = alloca %struct.stat, align 8
  %pInode = alloca ptr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %ppInode, ptr %ppInode.addr, align 8
  store ptr null, ptr %pInode, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 3
  %1 = load i32, ptr %h, align 8
  store i32 %1, ptr %fd, align 4
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %3 = load i32, ptr %fd, align 4
  %call = call i32 %2(i32 noundef %3, ptr noundef %statbuf)
  store i32 %call, ptr %rc, align 4
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pFile.addr, align 8
  %call1 = call ptr @__errno_location() #5
  %6 = load i32, ptr %call1, align 4
  call void @storeLastErrno(ptr noundef %5, i32 noundef %6)
  store i32 10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.memset.p0.i64(ptr align 8 %fileId, i8 0, i64 16, i1 false)
  %st_dev = getelementptr inbounds nuw %struct.stat, ptr %statbuf, i32 0, i32 0
  %7 = load i64, ptr %st_dev, align 8
  %dev = getelementptr inbounds nuw %struct.unixFileId, ptr %fileId, i32 0, i32 0
  store i64 %7, ptr %dev, align 8
  %st_ino = getelementptr inbounds nuw %struct.stat, ptr %statbuf, i32 0, i32 1
  %8 = load i64, ptr %st_ino, align 8
  %ino = getelementptr inbounds nuw %struct.unixFileId, ptr %fileId, i32 0, i32 1
  store i64 %8, ptr %ino, align 8
  %9 = load ptr, ptr @inodeList, align 8
  store ptr %9, ptr %pInode, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %10 = load ptr, ptr %pInode, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %11 = load ptr, ptr %pInode, align 8
  %fileId2 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %11, i32 0, i32 0
  %call3 = call i32 @memcmp(ptr noundef %fileId, ptr noundef %fileId2, i64 noundef 16) #6
  %tobool4 = icmp ne i32 %call3, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %12 = phi i1 [ false, %while.cond ], [ %tobool4, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load ptr, ptr %pInode, align 8
  %pNext = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %13, i32 0, i32 9
  %14 = load ptr, ptr %pNext, align 8
  store ptr %14, ptr %pInode, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %15 = load ptr, ptr %pInode, align 8
  %cmp5 = icmp eq ptr %15, null
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %while.end
  %call7 = call ptr @sqlite3_malloc64(i64 noundef 80)
  store ptr %call7, ptr %pInode, align 8
  %16 = load ptr, ptr %pInode, align 8
  %cmp8 = icmp eq ptr %16, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.then6
  store i32 7, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.then6
  %17 = load ptr, ptr %pInode, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 80, i1 false)
  %18 = load ptr, ptr %pInode, align 8
  %fileId11 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %18, i32 0, i32 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %fileId11, ptr align 8 %fileId, i64 16, i1 false)
  %19 = load i8, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 1), align 4
  %tobool12 = icmp ne i8 %19, 0
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end10
  %call14 = call ptr @sqlite3_mutex_alloc(i32 noundef 0)
  %20 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %20, i32 0, i32 1
  store ptr %call14, ptr %pLockMutex, align 8
  %21 = load ptr, ptr %pInode, align 8
  %pLockMutex15 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pLockMutex15, align 8
  %cmp16 = icmp eq ptr %22, null
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.then13
  %23 = load ptr, ptr %pInode, align 8
  call void @sqlite3_free(ptr noundef %23)
  store i32 7, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.then13
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end10
  %24 = load ptr, ptr %pInode, align 8
  %nRef = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %24, i32 0, i32 7
  store i32 1, ptr %nRef, align 8
  %25 = load ptr, ptr @inodeList, align 8
  %26 = load ptr, ptr %pInode, align 8
  %pNext20 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %26, i32 0, i32 9
  store ptr %25, ptr %pNext20, align 8
  %27 = load ptr, ptr %pInode, align 8
  %pPrev = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %27, i32 0, i32 10
  store ptr null, ptr %pPrev, align 8
  %28 = load ptr, ptr @inodeList, align 8
  %tobool21 = icmp ne ptr %28, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end19
  %29 = load ptr, ptr %pInode, align 8
  %30 = load ptr, ptr @inodeList, align 8
  %pPrev23 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %30, i32 0, i32 10
  store ptr %29, ptr %pPrev23, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end19
  %31 = load ptr, ptr %pInode, align 8
  store ptr %31, ptr @inodeList, align 8
  br label %if.end26

if.else:                                          ; preds = %while.end
  %32 = load ptr, ptr %pInode, align 8
  %nRef25 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %32, i32 0, i32 7
  %33 = load i32, ptr %nRef25, align 8
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %nRef25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end24
  %34 = load ptr, ptr %pInode, align 8
  %35 = load ptr, ptr %ppInode.addr, align 8
  store ptr %34, ptr %35, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end26, %if.then17, %if.then9, %if.then
  %36 = load i32, ptr %retval, align 4
  ret i32 %36
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }

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
