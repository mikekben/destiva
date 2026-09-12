; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_mem_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_mutex_methods = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.Sqlite3Config = type { i32, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, %struct.sqlite3_pcache_methods2, ptr, i32, i32, i32, i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sqlite3_pcache_methods2 = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3_vfs = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.10 = external hidden unnamed_addr constant [10 x i8], align 1
@sqlite3Config = external hidden global { i32, i8, i8, i8, i8, i8, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.sqlite3_mem_methods, %struct.sqlite3_mutex_methods, { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, ptr, i32, i32, i32, [4 x i8], i64, i64, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [4 x i8] }, align 8
@posixIoMethods = external hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
@.str.85 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.86 = external hidden unnamed_addr constant [8 x i8], align 1
@nolockIoMethods = external hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8
@dotlockIoMethods = external hidden constant { i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }, align 8

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_malloc64(i64 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_uri_boolean(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @verifyDbFile(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @unixEnterMutex() #1

; Function Attrs: nounwind uwtable
declare hidden void @unixLeaveMutex() #1

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @fillInUnixFile(ptr noundef %pVfs, i32 noundef %h, ptr noundef %pId, ptr noundef %zFilename, i32 noundef %ctrlFlags) #1 {
entry:
  %pVfs.addr = alloca ptr, align 8
  %h.addr = alloca i32, align 4
  %pId.addr = alloca ptr, align 8
  %zFilename.addr = alloca ptr, align 8
  %ctrlFlags.addr = alloca i32, align 4
  %pLockingStyle = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zLockFile = alloca ptr, align 8
  %nFilename = alloca i32, align 4
  store ptr %pVfs, ptr %pVfs.addr, align 8
  store i32 %h, ptr %h.addr, align 4
  store ptr %pId, ptr %pId.addr, align 8
  store ptr %zFilename, ptr %zFilename.addr, align 8
  store i32 %ctrlFlags, ptr %ctrlFlags.addr, align 4
  %0 = load ptr, ptr %pId.addr, align 8
  store ptr %0, ptr %pNew, align 8
  store i32 0, ptr %rc, align 4
  %1 = load i32, ptr %h.addr, align 4
  %2 = load ptr, ptr %pNew, align 8
  %h1 = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 3
  store i32 %1, ptr %h1, align 8
  %3 = load ptr, ptr %pVfs.addr, align 8
  %4 = load ptr, ptr %pNew, align 8
  %pVfs2 = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 1
  store ptr %3, ptr %pVfs2, align 8
  %5 = load ptr, ptr %zFilename.addr, align 8
  %6 = load ptr, ptr %pNew, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 9
  store ptr %5, ptr %zPath, align 8
  %7 = load i32, ptr %ctrlFlags.addr, align 4
  %conv = trunc i32 %7 to i8
  %conv3 = zext i8 %conv to i16
  %8 = load ptr, ptr %pNew, align 8
  %ctrlFlags4 = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 5
  store i16 %conv3, ptr %ctrlFlags4, align 2
  %9 = load i64, ptr getelementptr inbounds nuw (%struct.Sqlite3Config, ptr @sqlite3Config, i32 0, i32 19), align 8
  %10 = load ptr, ptr %pNew, align 8
  %mmapSizeMax = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 15
  store i64 %9, ptr %mmapSizeMax, align 8
  %11 = load i32, ptr %ctrlFlags.addr, align 4
  %and = and i32 %11, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load ptr, ptr %zFilename.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %12, %cond.true ], [ null, %cond.false ]
  %call = call i32 @sqlite3_uri_boolean(ptr noundef %cond, ptr noundef @.str.85, i32 noundef 1)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %13 = load ptr, ptr %pNew, align 8
  %ctrlFlags6 = getelementptr inbounds nuw %struct.unixFile, ptr %13, i32 0, i32 5
  %14 = load i16, ptr %ctrlFlags6, align 2
  %conv7 = zext i16 %14 to i32
  %or = or i32 %conv7, 16
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, ptr %ctrlFlags6, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %15 = load ptr, ptr %pVfs.addr, align 8
  %zName = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %zName, align 8
  %call9 = call i32 @strcmp(ptr noundef %16, ptr noundef @.str.10) #2
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end
  %17 = load ptr, ptr %pNew, align 8
  %ctrlFlags12 = getelementptr inbounds nuw %struct.unixFile, ptr %17, i32 0, i32 5
  %18 = load i16, ptr %ctrlFlags12, align 2
  %conv13 = zext i16 %18 to i32
  %or14 = or i32 %conv13, 1
  %conv15 = trunc i32 %or14 to i16
  store i16 %conv15, ptr %ctrlFlags12, align 2
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end
  %19 = load i32, ptr %ctrlFlags.addr, align 4
  %and17 = and i32 %19, 128
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end16
  store ptr @nolockIoMethods, ptr %pLockingStyle, align 8
  br label %if.end21

if.else:                                          ; preds = %if.end16
  %20 = load ptr, ptr %pVfs.addr, align 8
  %pAppData = getelementptr inbounds nuw %struct.sqlite3_vfs, ptr %20, i32 0, i32 5
  %21 = load ptr, ptr %pAppData, align 8
  %22 = load ptr, ptr %21, align 8
  %23 = load ptr, ptr %zFilename.addr, align 8
  %24 = load ptr, ptr %pNew, align 8
  %call20 = call ptr %22(ptr noundef %23, ptr noundef %24)
  store ptr %call20, ptr %pLockingStyle, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %25 = load ptr, ptr %pLockingStyle, align 8
  %cmp22 = icmp eq ptr %25, @posixIoMethods
  br i1 %cmp22, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.end21
  call void @unixEnterMutex()
  %26 = load ptr, ptr %pNew, align 8
  %27 = load ptr, ptr %pNew, align 8
  %pInode = getelementptr inbounds nuw %struct.unixFile, ptr %27, i32 0, i32 2
  %call25 = call i32 @findInodeInfo(ptr noundef %26, ptr noundef %pInode)
  store i32 %call25, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp26 = icmp ne i32 %28, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then24
  %29 = load ptr, ptr %pNew, align 8
  %30 = load i32, ptr %h.addr, align 4
  call void @robust_close(ptr noundef %29, i32 noundef %30, i32 noundef 38262)
  store i32 -1, ptr %h.addr, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then24
  call void @unixLeaveMutex()
  br label %if.end45

if.else30:                                        ; preds = %if.end21
  %31 = load ptr, ptr %pLockingStyle, align 8
  %cmp31 = icmp eq ptr %31, @dotlockIoMethods
  br i1 %cmp31, label %if.then33, label %if.end44

if.then33:                                        ; preds = %if.else30
  %32 = load ptr, ptr %zFilename.addr, align 8
  %call34 = call i64 @strlen(ptr noundef %32) #2
  %conv35 = trunc i64 %call34 to i32
  %add = add nsw i32 %conv35, 6
  store i32 %add, ptr %nFilename, align 4
  %33 = load i32, ptr %nFilename, align 4
  %conv36 = sext i32 %33 to i64
  %call37 = call ptr @sqlite3_malloc64(i64 noundef %conv36)
  store ptr %call37, ptr %zLockFile, align 8
  %34 = load ptr, ptr %zLockFile, align 8
  %cmp38 = icmp eq ptr %34, null
  br i1 %cmp38, label %if.then40, label %if.else41

if.then40:                                        ; preds = %if.then33
  store i32 7, ptr %rc, align 4
  br label %if.end43

if.else41:                                        ; preds = %if.then33
  %35 = load i32, ptr %nFilename, align 4
  %36 = load ptr, ptr %zLockFile, align 8
  %37 = load ptr, ptr %zFilename.addr, align 8
  %call42 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %35, ptr noundef %36, ptr noundef @.str.86, ptr noundef %37)
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then40
  %38 = load ptr, ptr %zLockFile, align 8
  %39 = load ptr, ptr %pNew, align 8
  %lockingContext = getelementptr inbounds nuw %struct.unixFile, ptr %39, i32 0, i32 7
  store ptr %38, ptr %lockingContext, align 8
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.else30
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %if.end29
  %40 = load ptr, ptr %pNew, align 8
  call void @storeLastErrno(ptr noundef %40, i32 noundef 0)
  %41 = load i32, ptr %rc, align 4
  %cmp46 = icmp ne i32 %41, 0
  br i1 %cmp46, label %if.then48, label %if.else53

if.then48:                                        ; preds = %if.end45
  %42 = load i32, ptr %h.addr, align 4
  %cmp49 = icmp sge i32 %42, 0
  br i1 %cmp49, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.then48
  %43 = load ptr, ptr %pNew, align 8
  %44 = load i32, ptr %h.addr, align 4
  call void @robust_close(ptr noundef %43, i32 noundef %44, i32 noundef 38347)
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.then48
  br label %if.end54

if.else53:                                        ; preds = %if.end45
  %45 = load ptr, ptr %pLockingStyle, align 8
  %46 = load ptr, ptr %pNew, align 8
  %pMethod = getelementptr inbounds nuw %struct.unixFile, ptr %46, i32 0, i32 0
  store ptr %45, ptr %pMethod, align 8
  %47 = load ptr, ptr %pNew, align 8
  call void @verifyDbFile(ptr noundef %47)
  br label %if.end54

if.end54:                                         ; preds = %if.else53, %if.end52
  %48 = load i32, ptr %rc, align 4
  ret i32 %48
}

; Function Attrs: nounwind uwtable
declare hidden i32 @findInodeInfo(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
