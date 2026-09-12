; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.57 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.89 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden i32 @unixDelete(ptr noundef %NotUsed, ptr noundef %zPath, i32 noundef %dirSync) #0 {
entry:
  %retval = alloca i32, align 4
  %NotUsed.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %dirSync.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %fd = alloca i32, align 4
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %dirSync, ptr %dirSync.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %NotUsed.addr, align 8
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 16), i32 0, i32 1), align 8
  %2 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 %1(ptr noundef %2)
  %cmp = icmp eq i32 %call, -1
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call1 = call ptr @__errno_location() #2
  %3 = load i32, ptr %call1, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 5898, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %4 = load ptr, ptr %zPath.addr, align 8
  %call4 = call i32 @unixLogErrorAtLine(i32 noundef 2570, ptr noundef @.str.57, ptr noundef %4, i32 noundef 38900)
  store i32 %call4, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %5 = load i32, ptr %rc, align 4
  store i32 %5, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  %6 = load i32, ptr %dirSync.addr, align 4
  %and = and i32 %6, 1
  %cmp6 = icmp ne i32 %and, 0
  br i1 %cmp6, label %if.then7, label %if.end17

if.then7:                                         ; preds = %if.end5
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 17), i32 0, i32 1), align 8
  %8 = load ptr, ptr %zPath.addr, align 8
  %call8 = call i32 %7(ptr noundef %8, ptr noundef %fd)
  store i32 %call8, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.then7
  %10 = load i32, ptr %fd, align 4
  %call11 = call i32 @full_fsync(i32 noundef %10, i32 noundef 0, i32 noundef 0)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then10
  %11 = load ptr, ptr %zPath.addr, align 8
  %call13 = call i32 @unixLogErrorAtLine(i32 noundef 1290, ptr noundef @.str.89, ptr noundef %11, i32 noundef 38910)
  store i32 %call13, ptr %rc, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then10
  %12 = load i32, ptr %fd, align 4
  call void @robust_close(ptr noundef null, i32 noundef %12, i32 noundef 38912)
  br label %if.end16

if.else15:                                        ; preds = %if.then7
  store i32 0, ptr %rc, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else15, %if.end14
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end5
  %13 = load i32, ptr %rc, align 4
  store i32 %13, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end17, %if.end
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

; Function Attrs: nounwind uwtable
declare hidden void @robust_close(ptr noundef, i32 noundef, i32 noundef) #0

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
