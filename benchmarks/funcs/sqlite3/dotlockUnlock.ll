; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #0

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @dotlockUnlock(ptr noundef %id, i32 noundef %eFileLock) #1 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %eFileLock.addr = alloca i32, align 4
  %pFile = alloca ptr, align 8
  %zLockFile = alloca ptr, align 8
  %rc = alloca i32, align 4
  %tErrno = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i32 %eFileLock, ptr %eFileLock.addr, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load ptr, ptr %pFile, align 8
  %lockingContext = getelementptr inbounds nuw %struct.unixFile, ptr %1, i32 0, i32 7
  %2 = load ptr, ptr %lockingContext, align 8
  store ptr %2, ptr %zLockFile, align 8
  %3 = load ptr, ptr %pFile, align 8
  %eFileLock1 = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 4
  %4 = load i8, ptr %eFileLock1, align 4
  %conv = zext i8 %4 to i32
  %5 = load i32, ptr %eFileLock.addr, align 4
  %cmp = icmp eq i32 %conv, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %eFileLock.addr, align 4
  %cmp3 = icmp eq i32 %6, 1
  br i1 %cmp3, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pFile, align 8
  %eFileLock6 = getelementptr inbounds nuw %struct.unixFile, ptr %7, i32 0, i32 4
  store i8 1, ptr %eFileLock6, align 4
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 19), i32 0, i32 1), align 8
  %9 = load ptr, ptr %zLockFile, align 8
  %call = call i32 %8(ptr noundef %9)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp8 = icmp slt i32 %10, 0
  br i1 %cmp8, label %if.then10, label %if.end16

if.then10:                                        ; preds = %if.end7
  %call11 = call ptr @__errno_location() #2
  %11 = load i32, ptr %call11, align 4
  store i32 %11, ptr %tErrno, align 4
  %12 = load i32, ptr %tErrno, align 4
  %cmp12 = icmp eq i32 %12, 2
  br i1 %cmp12, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then10
  store i32 0, ptr %rc, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then10
  store i32 2058, ptr %rc, align 4
  %13 = load ptr, ptr %pFile, align 8
  %14 = load i32, ptr %tErrno, align 4
  call void @storeLastErrno(ptr noundef %13, i32 noundef %14)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end7
  %16 = load ptr, ptr %pFile, align 8
  %eFileLock17 = getelementptr inbounds nuw %struct.unixFile, ptr %16, i32 0, i32 4
  store i8 0, ptr %eFileLock17, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.end15, %if.then5, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
