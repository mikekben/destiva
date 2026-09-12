; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @unixNextSystemCall(ptr noundef %p, ptr noundef %zName) #1 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 -1, ptr %i, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %1 = load ptr, ptr %zName.addr, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 28
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %zName.addr, align 8
  %4 = load i32, ptr %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom
  %zName1 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx, i32 0, i32 0
  %5 = load ptr, ptr %zName1, align 8
  %call = call i32 @strcmp(ptr noundef %3, ptr noundef %5) #2
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then3, %for.cond
  br label %if.end4

if.end4:                                          ; preds = %for.end, %entry
  %7 = load i32, ptr %i, align 4
  %inc5 = add nsw i32 %7, 1
  store i32 %inc5, ptr %i, align 4
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc17, %if.end4
  %8 = load i32, ptr %i, align 4
  %cmp7 = icmp slt i32 %8, 29
  br i1 %cmp7, label %for.body8, label %for.end19

for.body8:                                        ; preds = %for.cond6
  %9 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom9
  %pCurrent = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx10, i32 0, i32 1
  %10 = load ptr, ptr %pCurrent, align 8
  %cmp11 = icmp ne ptr %10, null
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %for.body8
  %11 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom13
  %zName15 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx14, i32 0, i32 0
  %12 = load ptr, ptr %zName15, align 8
  store ptr %12, ptr %retval, align 8
  br label %return

if.end16:                                         ; preds = %for.body8
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %13 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond6, !llvm.loop !8

for.end19:                                        ; preds = %for.cond6
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end19, %if.then12
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
