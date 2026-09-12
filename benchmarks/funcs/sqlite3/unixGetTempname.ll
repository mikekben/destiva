; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.76 = external hidden unnamed_addr constant [17 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_randomness(i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixGetTempname(i32 noundef %nBuf, ptr noundef %zBuf) #0 {
entry:
  %retval = alloca i32, align 4
  %nBuf.addr = alloca i32, align 4
  %zBuf.addr = alloca ptr, align 8
  %zDir = alloca ptr, align 8
  %iLimit = alloca i32, align 4
  %r = alloca i64, align 8
  store i32 %nBuf, ptr %nBuf.addr, align 4
  store ptr %zBuf, ptr %zBuf.addr, align 8
  store i32 0, ptr %iLimit, align 4
  %0 = load ptr, ptr %zBuf.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 0
  store i8 0, ptr %arrayidx, align 1
  %call = call ptr @unixTempFileDir()
  store ptr %call, ptr %zDir, align 8
  %1 = load ptr, ptr %zDir, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 6410, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  call void @sqlite3_randomness(i32 noundef 8, ptr noundef %r)
  %2 = load ptr, ptr %zBuf.addr, align 8
  %3 = load i32, ptr %nBuf.addr, align 4
  %sub = sub nsw i32 %3, 2
  %idxprom = sext i32 %sub to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %2, i64 %idxprom
  store i8 0, ptr %arrayidx1, align 1
  %4 = load i32, ptr %nBuf.addr, align 4
  %5 = load ptr, ptr %zBuf.addr, align 8
  %6 = load ptr, ptr %zDir, align 8
  %7 = load i64, ptr %r, align 8
  %call2 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %4, ptr noundef %5, ptr noundef @.str.76, ptr noundef %6, i64 noundef %7, i32 noundef 0)
  %8 = load ptr, ptr %zBuf.addr, align 8
  %9 = load i32, ptr %nBuf.addr, align 4
  %sub3 = sub nsw i32 %9, 2
  %idxprom4 = sext i32 %sub3 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %8, i64 %idxprom4
  %10 = load i8, ptr %arrayidx5, align 1
  %conv = sext i8 %10 to i32
  %cmp6 = icmp ne i32 %conv, 0
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body
  %11 = load i32, ptr %iLimit, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %iLimit, align 4
  %cmp8 = icmp sgt i32 %11, 10
  br i1 %cmp8, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %do.body
  store i32 1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  br label %do.cond

do.cond:                                          ; preds = %if.end11
  %12 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 2), i32 0, i32 1), align 8
  %13 = load ptr, ptr %zBuf.addr, align 8
  %call12 = call i32 %12(ptr noundef %13, i32 noundef 0)
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then10, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden ptr @unixTempFileDir() #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
