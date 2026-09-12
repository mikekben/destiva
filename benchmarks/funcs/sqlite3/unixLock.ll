; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flock = type { i16, i16, i64, i64, i32 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }
%struct.unixInodeInfo = type { %struct.unixFileId, ptr, i32, i32, i8, i8, ptr, i32, ptr, ptr, ptr }
%struct.unixFileId = type { i64, i64 }

@sqlite3PendingByte = external hidden global i32, align 4

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixLock(ptr noundef %id, i32 noundef %eFileLock) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %eFileLock.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pFile = alloca ptr, align 8
  %pInode = alloca ptr, align 8
  %lock = alloca %struct.flock, align 8
  %tErrno = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i32 %eFileLock, ptr %eFileLock.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  store i32 0, ptr %tErrno, align 4
  %1 = load ptr, ptr %pFile, align 8
  %eFileLock1 = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 4
  %2 = load i8, ptr %eFileLock1, align 4
  %conv = zext i8 %2 to i32
  %3 = load i32, ptr %eFileLock.addr, align 4
  %cmp = icmp sge i32 %conv, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pFile, align 8
  %pInode3 = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pInode3, align 8
  store ptr %5, ptr %pInode, align 8
  %6 = load ptr, ptr %pInode, align 8
  %pLockMutex = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pLockMutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %7)
  %8 = load ptr, ptr %pFile, align 8
  %eFileLock4 = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 4
  %9 = load i8, ptr %eFileLock4, align 4
  %conv5 = zext i8 %9 to i32
  %10 = load ptr, ptr %pInode, align 8
  %eFileLock6 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %10, i32 0, i32 4
  %11 = load i8, ptr %eFileLock6, align 8
  %conv7 = zext i8 %11 to i32
  %cmp8 = icmp ne i32 %conv5, %conv7
  br i1 %cmp8, label %land.lhs.true, label %if.end17

land.lhs.true:                                    ; preds = %if.end
  %12 = load ptr, ptr %pInode, align 8
  %eFileLock10 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %12, i32 0, i32 4
  %13 = load i8, ptr %eFileLock10, align 8
  %conv11 = zext i8 %13 to i32
  %cmp12 = icmp sge i32 %conv11, 3
  br i1 %cmp12, label %if.then16, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load i32, ptr %eFileLock.addr, align 4
  %cmp14 = icmp sgt i32 %14, 1
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %lor.lhs.false, %land.lhs.true
  store i32 5, ptr %rc, align 4
  br label %end_lock

if.end17:                                         ; preds = %lor.lhs.false, %if.end
  %15 = load i32, ptr %eFileLock.addr, align 4
  %cmp18 = icmp eq i32 %15, 1
  br i1 %cmp18, label %land.lhs.true20, label %if.end33

land.lhs.true20:                                  ; preds = %if.end17
  %16 = load ptr, ptr %pInode, align 8
  %eFileLock21 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %16, i32 0, i32 4
  %17 = load i8, ptr %eFileLock21, align 8
  %conv22 = zext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 1
  br i1 %cmp23, label %if.then30, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %land.lhs.true20
  %18 = load ptr, ptr %pInode, align 8
  %eFileLock26 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %18, i32 0, i32 4
  %19 = load i8, ptr %eFileLock26, align 8
  %conv27 = zext i8 %19 to i32
  %cmp28 = icmp eq i32 %conv27, 2
  br i1 %cmp28, label %if.then30, label %if.end33

if.then30:                                        ; preds = %lor.lhs.false25, %land.lhs.true20
  %20 = load ptr, ptr %pFile, align 8
  %eFileLock31 = getelementptr inbounds nuw %struct.unixFile, ptr %20, i32 0, i32 4
  store i8 1, ptr %eFileLock31, align 4
  %21 = load ptr, ptr %pInode, align 8
  %nShared = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %21, i32 0, i32 2
  %22 = load i32, ptr %nShared, align 8
  %inc = add nsw i32 %22, 1
  store i32 %inc, ptr %nShared, align 8
  %23 = load ptr, ptr %pInode, align 8
  %nLock = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %23, i32 0, i32 3
  %24 = load i32, ptr %nLock, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, ptr %nLock, align 4
  br label %end_lock

if.end33:                                         ; preds = %lor.lhs.false25, %if.end17
  %l_len = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 1, ptr %l_len, align 8
  %l_whence = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 1
  store i16 0, ptr %l_whence, align 2
  %25 = load i32, ptr %eFileLock.addr, align 4
  %cmp34 = icmp eq i32 %25, 1
  br i1 %cmp34, label %if.then44, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.end33
  %26 = load i32, ptr %eFileLock.addr, align 4
  %cmp37 = icmp eq i32 %26, 4
  br i1 %cmp37, label %land.lhs.true39, label %if.end57

land.lhs.true39:                                  ; preds = %lor.lhs.false36
  %27 = load ptr, ptr %pFile, align 8
  %eFileLock40 = getelementptr inbounds nuw %struct.unixFile, ptr %27, i32 0, i32 4
  %28 = load i8, ptr %eFileLock40, align 4
  %conv41 = zext i8 %28 to i32
  %cmp42 = icmp slt i32 %conv41, 3
  br i1 %cmp42, label %if.then44, label %if.end57

if.then44:                                        ; preds = %land.lhs.true39, %if.end33
  %29 = load i32, ptr %eFileLock.addr, align 4
  %cmp45 = icmp eq i32 %29, 1
  %30 = zext i1 %cmp45 to i64
  %cond = select i1 %cmp45, i32 0, i32 1
  %conv47 = trunc i32 %cond to i16
  %l_type = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 %conv47, ptr %l_type, align 8
  %31 = load i32, ptr @sqlite3PendingByte, align 4
  %conv48 = sext i32 %31 to i64
  %l_start = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv48, ptr %l_start, align 8
  %32 = load ptr, ptr %pFile, align 8
  %call = call i32 @unixFileLock(ptr noundef %32, ptr noundef %lock)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then49, label %if.end56

if.then49:                                        ; preds = %if.then44
  %call50 = call ptr @__errno_location() #2
  %33 = load i32, ptr %call50, align 4
  store i32 %33, ptr %tErrno, align 4
  %34 = load i32, ptr %tErrno, align 4
  %call51 = call i32 @sqliteErrorFromPosixError(i32 noundef %34, i32 noundef 3850)
  store i32 %call51, ptr %rc, align 4
  %35 = load i32, ptr %rc, align 4
  %cmp52 = icmp ne i32 %35, 5
  br i1 %cmp52, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.then49
  %36 = load ptr, ptr %pFile, align 8
  %37 = load i32, ptr %tErrno, align 4
  call void @storeLastErrno(ptr noundef %36, i32 noundef %37)
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %if.then49
  br label %end_lock

if.end56:                                         ; preds = %if.then44
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %land.lhs.true39, %lor.lhs.false36
  %38 = load i32, ptr %eFileLock.addr, align 4
  %cmp58 = icmp eq i32 %38, 1
  br i1 %cmp58, label %if.then60, label %if.else93

if.then60:                                        ; preds = %if.end57
  %39 = load i32, ptr @sqlite3PendingByte, align 4
  %add = add nsw i32 %39, 2
  %conv61 = sext i32 %add to i64
  %l_start62 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv61, ptr %l_start62, align 8
  %l_len63 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 510, ptr %l_len63, align 8
  %40 = load ptr, ptr %pFile, align 8
  %call64 = call i32 @unixFileLock(ptr noundef %40, ptr noundef %lock)
  %tobool65 = icmp ne i32 %call64, 0
  br i1 %tobool65, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.then60
  %call67 = call ptr @__errno_location() #2
  %41 = load i32, ptr %call67, align 4
  store i32 %41, ptr %tErrno, align 4
  %42 = load i32, ptr %tErrno, align 4
  %call68 = call i32 @sqliteErrorFromPosixError(i32 noundef %42, i32 noundef 3850)
  store i32 %call68, ptr %rc, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then66, %if.then60
  %43 = load i32, ptr @sqlite3PendingByte, align 4
  %conv70 = sext i32 %43 to i64
  %l_start71 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv70, ptr %l_start71, align 8
  %l_len72 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 1, ptr %l_len72, align 8
  %l_type73 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 2, ptr %l_type73, align 8
  %44 = load ptr, ptr %pFile, align 8
  %call74 = call i32 @unixFileLock(ptr noundef %44, ptr noundef %lock)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %land.lhs.true76, label %if.end81

land.lhs.true76:                                  ; preds = %if.end69
  %45 = load i32, ptr %rc, align 4
  %cmp77 = icmp eq i32 %45, 0
  br i1 %cmp77, label %if.then79, label %if.end81

if.then79:                                        ; preds = %land.lhs.true76
  %call80 = call ptr @__errno_location() #2
  %46 = load i32, ptr %call80, align 4
  store i32 %46, ptr %tErrno, align 4
  store i32 2058, ptr %rc, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then79, %land.lhs.true76, %if.end69
  %47 = load i32, ptr %rc, align 4
  %tobool82 = icmp ne i32 %47, 0
  br i1 %tobool82, label %if.then83, label %if.else

if.then83:                                        ; preds = %if.end81
  %48 = load i32, ptr %rc, align 4
  %cmp84 = icmp ne i32 %48, 5
  br i1 %cmp84, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.then83
  %49 = load ptr, ptr %pFile, align 8
  %50 = load i32, ptr %tErrno, align 4
  call void @storeLastErrno(ptr noundef %49, i32 noundef %50)
  br label %if.end87

if.end87:                                         ; preds = %if.then86, %if.then83
  br label %end_lock

if.else:                                          ; preds = %if.end81
  %51 = load ptr, ptr %pFile, align 8
  %eFileLock88 = getelementptr inbounds nuw %struct.unixFile, ptr %51, i32 0, i32 4
  store i8 1, ptr %eFileLock88, align 4
  %52 = load ptr, ptr %pInode, align 8
  %nLock89 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %52, i32 0, i32 3
  %53 = load i32, ptr %nLock89, align 4
  %inc90 = add nsw i32 %53, 1
  store i32 %inc90, ptr %nLock89, align 4
  %54 = load ptr, ptr %pInode, align 8
  %nShared91 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %54, i32 0, i32 2
  store i32 1, ptr %nShared91, align 8
  br label %if.end92

if.end92:                                         ; preds = %if.else
  br label %if.end127

if.else93:                                        ; preds = %if.end57
  %55 = load i32, ptr %eFileLock.addr, align 4
  %cmp94 = icmp eq i32 %55, 4
  br i1 %cmp94, label %land.lhs.true96, label %if.else101

land.lhs.true96:                                  ; preds = %if.else93
  %56 = load ptr, ptr %pInode, align 8
  %nShared97 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %56, i32 0, i32 2
  %57 = load i32, ptr %nShared97, align 8
  %cmp98 = icmp sgt i32 %57, 1
  br i1 %cmp98, label %if.then100, label %if.else101

if.then100:                                       ; preds = %land.lhs.true96
  store i32 5, ptr %rc, align 4
  br label %if.end126

if.else101:                                       ; preds = %land.lhs.true96, %if.else93
  %l_type102 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 0
  store i16 1, ptr %l_type102, align 8
  %58 = load i32, ptr %eFileLock.addr, align 4
  %cmp103 = icmp eq i32 %58, 2
  br i1 %cmp103, label %if.then105, label %if.else110

if.then105:                                       ; preds = %if.else101
  %59 = load i32, ptr @sqlite3PendingByte, align 4
  %add106 = add nsw i32 %59, 1
  %conv107 = sext i32 %add106 to i64
  %l_start108 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv107, ptr %l_start108, align 8
  %l_len109 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 1, ptr %l_len109, align 8
  br label %if.end115

if.else110:                                       ; preds = %if.else101
  %60 = load i32, ptr @sqlite3PendingByte, align 4
  %add111 = add nsw i32 %60, 2
  %conv112 = sext i32 %add111 to i64
  %l_start113 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 2
  store i64 %conv112, ptr %l_start113, align 8
  %l_len114 = getelementptr inbounds nuw %struct.flock, ptr %lock, i32 0, i32 3
  store i64 510, ptr %l_len114, align 8
  br label %if.end115

if.end115:                                        ; preds = %if.else110, %if.then105
  %61 = load ptr, ptr %pFile, align 8
  %call116 = call i32 @unixFileLock(ptr noundef %61, ptr noundef %lock)
  %tobool117 = icmp ne i32 %call116, 0
  br i1 %tobool117, label %if.then118, label %if.end125

if.then118:                                       ; preds = %if.end115
  %call119 = call ptr @__errno_location() #2
  %62 = load i32, ptr %call119, align 4
  store i32 %62, ptr %tErrno, align 4
  %63 = load i32, ptr %tErrno, align 4
  %call120 = call i32 @sqliteErrorFromPosixError(i32 noundef %63, i32 noundef 3850)
  store i32 %call120, ptr %rc, align 4
  %64 = load i32, ptr %rc, align 4
  %cmp121 = icmp ne i32 %64, 5
  br i1 %cmp121, label %if.then123, label %if.end124

if.then123:                                       ; preds = %if.then118
  %65 = load ptr, ptr %pFile, align 8
  %66 = load i32, ptr %tErrno, align 4
  call void @storeLastErrno(ptr noundef %65, i32 noundef %66)
  br label %if.end124

if.end124:                                        ; preds = %if.then123, %if.then118
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end115
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %if.then100
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.end92
  %67 = load i32, ptr %rc, align 4
  %cmp128 = icmp eq i32 %67, 0
  br i1 %cmp128, label %if.then130, label %if.else135

if.then130:                                       ; preds = %if.end127
  %68 = load i32, ptr %eFileLock.addr, align 4
  %conv131 = trunc i32 %68 to i8
  %69 = load ptr, ptr %pFile, align 8
  %eFileLock132 = getelementptr inbounds nuw %struct.unixFile, ptr %69, i32 0, i32 4
  store i8 %conv131, ptr %eFileLock132, align 4
  %70 = load i32, ptr %eFileLock.addr, align 4
  %conv133 = trunc i32 %70 to i8
  %71 = load ptr, ptr %pInode, align 8
  %eFileLock134 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %71, i32 0, i32 4
  store i8 %conv133, ptr %eFileLock134, align 8
  br label %if.end142

if.else135:                                       ; preds = %if.end127
  %72 = load i32, ptr %eFileLock.addr, align 4
  %cmp136 = icmp eq i32 %72, 4
  br i1 %cmp136, label %if.then138, label %if.end141

if.then138:                                       ; preds = %if.else135
  %73 = load ptr, ptr %pFile, align 8
  %eFileLock139 = getelementptr inbounds nuw %struct.unixFile, ptr %73, i32 0, i32 4
  store i8 3, ptr %eFileLock139, align 4
  %74 = load ptr, ptr %pInode, align 8
  %eFileLock140 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %74, i32 0, i32 4
  store i8 3, ptr %eFileLock140, align 8
  br label %if.end141

if.end141:                                        ; preds = %if.then138, %if.else135
  br label %if.end142

if.end142:                                        ; preds = %if.end141, %if.then130
  br label %end_lock

end_lock:                                         ; preds = %if.end142, %if.end87, %if.end55, %if.then30, %if.then16
  %75 = load ptr, ptr %pInode, align 8
  %pLockMutex143 = getelementptr inbounds nuw %struct.unixInodeInfo, ptr %75, i32 0, i32 1
  %76 = load ptr, ptr %pLockMutex143, align 8
  call void @sqlite3_mutex_leave(ptr noundef %76)
  %77 = load i32, ptr %rc, align 4
  store i32 %77, ptr %retval, align 4
  br label %return

return:                                           ; preds = %end_lock, %if.then
  %78 = load i32, ptr %retval, align 4
  ret i32 %78
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixFileLock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqliteErrorFromPosixError(i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
