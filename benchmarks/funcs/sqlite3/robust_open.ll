; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.70 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.71 = external hidden unnamed_addr constant [10 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @robust_open(ptr noundef %z, i32 noundef %f, i32 noundef %m) #0 {
entry:
  %z.addr = alloca ptr, align 8
  %f.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  %m2 = alloca i32, align 4
  %statbuf = alloca %struct.stat, align 8
  store ptr %z, ptr %z.addr, align 8
  store i32 %f, ptr %f.addr, align 4
  store i32 %m, ptr %m.addr, align 4
  %0 = load i32, ptr %m.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i32, ptr %m.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %1, %cond.true ], [ 420, %cond.false ]
  store i32 %cond, ptr %m2, align 4
  br label %while.body

while.body:                                       ; preds = %if.end12, %if.then3, %cond.end
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr @aSyscall, i32 0, i32 1), align 8
  %3 = load ptr, ptr %z.addr, align 8
  %4 = load i32, ptr %f.addr, align 4
  %or = or i32 %4, 524288
  %5 = load i32, ptr %m2, align 4
  %call = call i32 %2(ptr noundef %3, i32 noundef %or, i32 noundef %5)
  store i32 %call, ptr %fd, align 4
  %6 = load i32, ptr %fd, align 4
  %cmp = icmp slt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %while.body
  %call1 = call ptr @__errno_location() #2
  %7 = load i32, ptr %call1, align 4
  %cmp2 = icmp eq i32 %7, 4
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  br label %while.body

if.end:                                           ; preds = %if.then
  br label %while.end

if.end4:                                          ; preds = %while.body
  %8 = load i32, ptr %fd, align 4
  %cmp5 = icmp sge i32 %8, 3
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  br label %while.end

if.end7:                                          ; preds = %if.end4
  %9 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 1), i32 0, i32 1), align 8
  %10 = load i32, ptr %fd, align 4
  %call8 = call i32 %9(i32 noundef %10)
  %11 = load ptr, ptr %z.addr, align 8
  %12 = load i32, ptr %fd, align 4
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.70, ptr noundef %11, i32 noundef %12)
  store i32 -1, ptr %fd, align 4
  %13 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr @aSyscall, i32 0, i32 1), align 8
  %14 = load i32, ptr %f.addr, align 4
  %15 = load i32, ptr %m.addr, align 4
  %call9 = call i32 %13(ptr noundef @.str.71, i32 noundef %14, i32 noundef %15)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  br label %while.end

if.end12:                                         ; preds = %if.end7
  br label %while.body

while.end:                                        ; preds = %if.then11, %if.then6, %if.end
  %16 = load i32, ptr %fd, align 4
  %cmp13 = icmp sge i32 %16, 0
  br i1 %cmp13, label %if.then14, label %if.end26

if.then14:                                        ; preds = %while.end
  %17 = load i32, ptr %m.addr, align 4
  %cmp15 = icmp ne i32 %17, 0
  br i1 %cmp15, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.then14
  %18 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %19 = load i32, ptr %fd, align 4
  %call17 = call i32 %18(i32 noundef %19, ptr noundef %statbuf)
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.then16
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %statbuf, i32 0, i32 8
  %20 = load i64, ptr %st_size, align 8
  %cmp19 = icmp eq i64 %20, 0
  br i1 %cmp19, label %land.lhs.true20, label %if.end24

land.lhs.true20:                                  ; preds = %land.lhs.true
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %statbuf, i32 0, i32 3
  %21 = load i32, ptr %st_mode, align 8
  %and = and i32 %21, 511
  %22 = load i32, ptr %m.addr, align 4
  %cmp21 = icmp ne i32 %and, %22
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true20
  %23 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 14), i32 0, i32 1), align 8
  %24 = load i32, ptr %fd, align 4
  %25 = load i32, ptr %m.addr, align 4
  %call23 = call i32 %23(i32 noundef %24, i32 noundef %25)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true20, %land.lhs.true, %if.then16
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then14
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %while.end
  %26 = load i32, ptr %fd, align 4
  ret i32 %26
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #1

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
