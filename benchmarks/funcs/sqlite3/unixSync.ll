; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.75 = external hidden unnamed_addr constant [11 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @unixSync(ptr noundef %id, i32 noundef %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pFile = alloca ptr, align 8
  %isDataOnly = alloca i32, align 4
  %isFullsync = alloca i32, align 4
  %dirfd = alloca i32, align 4
  store ptr %id, ptr %id.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load i32, ptr %flags.addr, align 4
  %and = and i32 %1, 16
  store i32 %and, ptr %isDataOnly, align 4
  %2 = load i32, ptr %flags.addr, align 4
  %and1 = and i32 %2, 15
  %cmp = icmp eq i32 %and1, 3
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %isFullsync, align 4
  %3 = load ptr, ptr %pFile, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %h, align 8
  %5 = load i32, ptr %isFullsync, align 4
  %6 = load i32, ptr %isDataOnly, align 4
  %call = call i32 @full_fsync(i32 noundef %4, i32 noundef %5, i32 noundef %6)
  store i32 %call, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %pFile, align 8
  %call2 = call ptr @__errno_location() #2
  %9 = load i32, ptr %call2, align 4
  call void @storeLastErrno(ptr noundef %8, i32 noundef %9)
  %10 = load ptr, ptr %pFile, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %zPath, align 8
  %call3 = call i32 @unixLogErrorAtLine(i32 noundef 1034, ptr noundef @.str.75, ptr noundef %11, i32 noundef 36423)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %pFile, align 8
  %ctrlFlags = getelementptr inbounds nuw %struct.unixFile, ptr %12, i32 0, i32 5
  %13 = load i16, ptr %ctrlFlags, align 2
  %conv4 = zext i16 %13 to i32
  %and5 = and i32 %conv4, 8
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then7, label %if.end19

if.then7:                                         ; preds = %if.end
  %14 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 17), i32 0, i32 1), align 8
  %15 = load ptr, ptr %pFile, align 8
  %zPath8 = getelementptr inbounds nuw %struct.unixFile, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %zPath8, align 8
  %call9 = call i32 %14(ptr noundef %16, ptr noundef %dirfd)
  store i32 %call9, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %17, 0
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then7
  %18 = load i32, ptr %dirfd, align 4
  %call13 = call i32 @full_fsync(i32 noundef %18, i32 noundef 0, i32 noundef 0)
  %19 = load ptr, ptr %pFile, align 8
  %20 = load i32, ptr %dirfd, align 4
  call void @robust_close(ptr noundef %19, i32 noundef %20, i32 noundef 36437)
  br label %if.end14

if.else:                                          ; preds = %if.then7
  store i32 0, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %21 = load ptr, ptr %pFile, align 8
  %ctrlFlags15 = getelementptr inbounds nuw %struct.unixFile, ptr %21, i32 0, i32 5
  %22 = load i16, ptr %ctrlFlags15, align 2
  %conv16 = zext i16 %22 to i32
  %and17 = and i32 %conv16, -9
  %conv18 = trunc i32 %and17 to i16
  store i16 %conv18, ptr %ctrlFlags15, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.end14, %if.end
  %23 = load i32, ptr %rc, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @storeLastErrno(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @full_fsync(i32 noundef, i32 noundef, i32 noundef) #0

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
