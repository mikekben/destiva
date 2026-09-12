; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.37 = external hidden unnamed_addr constant [24 x i8], align 1
@.str.38 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.40 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_log(i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden void @verifyDbFile(ptr noundef %pFile) #0 {
entry:
  %pFile.addr = alloca ptr, align 8
  %buf = alloca %struct.stat, align 8
  %rc = alloca i32, align 4
  store ptr %pFile, ptr %pFile.addr, align 8
  %0 = load ptr, ptr %pFile.addr, align 8
  %ctrlFlags = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 5
  %1 = load i16, ptr %ctrlFlags, align 2
  %conv = zext i16 %1 to i32
  %and = and i32 %conv, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end19

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %3 = load ptr, ptr %pFile.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 3
  %4 = load i32, ptr %h, align 8
  %call = call i32 %2(i32 noundef %4, ptr noundef %buf)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pFile.addr, align 8
  %zPath = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 9
  %7 = load ptr, ptr %zPath, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.37, ptr noundef %7)
  br label %if.end19

if.end3:                                          ; preds = %if.end
  %st_nlink = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 2
  %8 = load i64, ptr %st_nlink, align 8
  %cmp4 = icmp eq i64 %8, 0
  br i1 %cmp4, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end3
  %9 = load ptr, ptr %pFile.addr, align 8
  %zPath7 = getelementptr inbounds nuw %struct.unixFile, ptr %9, i32 0, i32 9
  %10 = load ptr, ptr %zPath7, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.38, ptr noundef %10)
  br label %if.end19

if.end8:                                          ; preds = %if.end3
  %st_nlink9 = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 2
  %11 = load i64, ptr %st_nlink9, align 8
  %cmp10 = icmp ugt i64 %11, 1
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  %12 = load ptr, ptr %pFile.addr, align 8
  %zPath13 = getelementptr inbounds nuw %struct.unixFile, ptr %12, i32 0, i32 9
  %13 = load ptr, ptr %zPath13, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.39, ptr noundef %13)
  br label %if.end19

if.end14:                                         ; preds = %if.end8
  %14 = load ptr, ptr %pFile.addr, align 8
  %call15 = call i32 @fileHasMoved(ptr noundef %14)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end14
  %15 = load ptr, ptr %pFile.addr, align 8
  %zPath18 = getelementptr inbounds nuw %struct.unixFile, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %zPath18, align 8
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 28, ptr noundef @.str.40, ptr noundef %16)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end14, %if.then12, %if.then6, %if.then2, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @fileHasMoved(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
