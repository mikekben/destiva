; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@sqlite3_temp_directory = external dso_local global ptr, align 8
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@unixTempFileDir.azDirs = external hidden global [6 x ptr], align 16
@.str.80 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.81 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden ptr @unixTempFileDir() #0 {
entry:
  %retval = alloca ptr, align 8
  %i = alloca i32, align 4
  %buf = alloca %struct.stat, align 8
  %zDir = alloca ptr, align 8
  store i32 0, ptr %i, align 4
  %0 = load ptr, ptr @sqlite3_temp_directory, align 8
  store ptr %0, ptr %zDir, align 8
  %1 = load ptr, ptr @unixTempFileDir.azDirs, align 16
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @getenv(ptr noundef @.str.80) #2
  store ptr %call, ptr @unixTempFileDir.azDirs, align 16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr getelementptr inbounds ([6 x ptr], ptr @unixTempFileDir.azDirs, i64 0, i64 1), align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call ptr @getenv(ptr noundef @.str.81) #2
  store ptr %call3, ptr getelementptr inbounds ([6 x ptr], ptr @unixTempFileDir.azDirs, i64 0, i64 1), align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  br label %while.body

while.body:                                       ; preds = %if.end17, %if.end4
  %3 = load ptr, ptr %zDir, align 8
  %cmp = icmp ne ptr %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end13

land.lhs.true:                                    ; preds = %while.body
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 4), i32 0, i32 1), align 8
  %5 = load ptr, ptr %zDir, align 8
  %call5 = call i32 %4(ptr noundef %5, ptr noundef %buf)
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %land.lhs.true7, label %if.end13

land.lhs.true7:                                   ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 3
  %6 = load i32, ptr %st_mode, align 8
  %and = and i32 %6, 61440
  %cmp8 = icmp eq i32 %and, 16384
  br i1 %cmp8, label %land.lhs.true9, label %if.end13

land.lhs.true9:                                   ; preds = %land.lhs.true7
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 2), i32 0, i32 1), align 8
  %8 = load ptr, ptr %zDir, align 8
  %call10 = call i32 %7(ptr noundef %8, i32 noundef 3)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %land.lhs.true9
  %9 = load ptr, ptr %zDir, align 8
  store ptr %9, ptr %retval, align 8
  br label %return

if.end13:                                         ; preds = %land.lhs.true9, %land.lhs.true7, %land.lhs.true, %while.body
  %10 = load i32, ptr %i, align 4
  %conv = zext i32 %10 to i64
  %cmp14 = icmp uge i64 %conv, 6
  br i1 %cmp14, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end13
  br label %while.end

if.end17:                                         ; preds = %if.end13
  %11 = load i32, ptr %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = zext i32 %11 to i64
  %arrayidx = getelementptr inbounds nuw [6 x ptr], ptr @unixTempFileDir.azDirs, i64 0, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8
  store ptr %12, ptr %zDir, align 8
  br label %while.body

while.end:                                        ; preds = %if.then16
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then12
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
