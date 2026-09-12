; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #0

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @seekAndWriteFd(i32 noundef %fd, i64 noundef %iOff, ptr noundef %pBuf, i32 noundef %nBuf, ptr noundef %piErrno) #2 {
entry:
  %fd.addr = alloca i32, align 4
  %iOff.addr = alloca i64, align 8
  %pBuf.addr = alloca ptr, align 8
  %nBuf.addr = alloca i32, align 4
  %piErrno.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iSeek = alloca i64, align 8
  store i32 %fd, ptr %fd.addr, align 4
  store i64 %iOff, ptr %iOff.addr, align 8
  store ptr %pBuf, ptr %pBuf.addr, align 8
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store ptr %piErrno, ptr %piErrno.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load i32, ptr %nBuf.addr, align 4
  %and = and i32 %0, 131071
  store i32 %and, ptr %nBuf.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %1 = load i32, ptr %fd.addr, align 4
  %2 = load i64, ptr %iOff.addr, align 8
  %call = call i64 @lseek64(i32 noundef %1, i64 noundef %2, i32 noundef 0) #3
  store i64 %call, ptr %iSeek, align 8
  %3 = load i64, ptr %iSeek, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  store i32 -1, ptr %rc, align 4
  br label %do.end

if.end:                                           ; preds = %do.body
  %4 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 11), i32 0, i32 1), align 8
  %5 = load i32, ptr %fd.addr, align 4
  %6 = load ptr, ptr %pBuf.addr, align 8
  %7 = load i32, ptr %nBuf.addr, align 4
  %conv = sext i32 %7 to i64
  %call1 = call i64 %4(i32 noundef %5, ptr noundef %6, i64 noundef %conv)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %8 = load i32, ptr %rc, align 4
  %cmp3 = icmp slt i32 %8, 0
  br i1 %cmp3, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %call5 = call ptr @__errno_location() #4
  %9 = load i32, ptr %call5, align 4
  %cmp6 = icmp eq i32 %9, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %cmp6, %land.rhs ]
  br i1 %10, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end, %if.then
  %11 = load i32, ptr %rc, align 4
  %cmp8 = icmp slt i32 %11, 0
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %do.end
  %call11 = call ptr @__errno_location() #4
  %12 = load i32, ptr %call11, align 4
  %13 = load ptr, ptr %piErrno.addr, align 8
  store i32 %12, ptr %13, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nounwind willreturn memory(none) }

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
