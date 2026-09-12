; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @unixSetSystemCall(ptr noundef %pNotUsed, ptr noundef %zName, ptr noundef %pNewFunc) #1 {
entry:
  %pNotUsed.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %pNewFunc.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pNotUsed, ptr %pNotUsed.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %pNewFunc, ptr %pNewFunc.addr, align 8
  store i32 12, ptr %rc, align 4
  %0 = load ptr, ptr %pNotUsed.addr, align 8
  %1 = load ptr, ptr %zName.addr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, ptr %i, align 4
  %conv = zext i32 %2 to i64
  %cmp1 = icmp ult i64 %conv, 29
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %idxprom = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom
  %pDefault = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx, i32 0, i32 2
  %4 = load ptr, ptr %pDefault, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %if.then3, label %if.end

if.then3:                                         ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom4
  %pDefault6 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx5, i32 0, i32 2
  %6 = load ptr, ptr %pDefault6, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom7 = zext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom7
  %pCurrent = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx8, i32 0, i32 1
  store ptr %6, ptr %pCurrent, align 8
  br label %if.end

if.end:                                           ; preds = %if.then3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, ptr %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end47

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc44, %if.else
  %9 = load i32, ptr %i, align 4
  %conv10 = zext i32 %9 to i64
  %cmp11 = icmp ult i64 %conv10, 29
  br i1 %cmp11, label %for.body13, label %for.end46

for.body13:                                       ; preds = %for.cond9
  %10 = load ptr, ptr %zName.addr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom14 = zext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom14
  %zName16 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx15, i32 0, i32 0
  %12 = load ptr, ptr %zName16, align 8
  %call = call i32 @strcmp(ptr noundef %10, ptr noundef %12) #2
  %cmp17 = icmp eq i32 %call, 0
  br i1 %cmp17, label %if.then19, label %if.end43

if.then19:                                        ; preds = %for.body13
  %13 = load i32, ptr %i, align 4
  %idxprom20 = zext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom20
  %pDefault22 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx21, i32 0, i32 2
  %14 = load ptr, ptr %pDefault22, align 8
  %cmp23 = icmp eq ptr %14, null
  br i1 %cmp23, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.then19
  %15 = load i32, ptr %i, align 4
  %idxprom26 = zext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom26
  %pCurrent28 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx27, i32 0, i32 1
  %16 = load ptr, ptr %pCurrent28, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom29 = zext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom29
  %pDefault31 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx30, i32 0, i32 2
  store ptr %16, ptr %pDefault31, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then25, %if.then19
  store i32 0, ptr %rc, align 4
  %18 = load ptr, ptr %pNewFunc.addr, align 8
  %cmp33 = icmp eq ptr %18, null
  br i1 %cmp33, label %if.then35, label %if.end39

if.then35:                                        ; preds = %if.end32
  %19 = load i32, ptr %i, align 4
  %idxprom36 = zext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom36
  %pDefault38 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx37, i32 0, i32 2
  %20 = load ptr, ptr %pDefault38, align 8
  store ptr %20, ptr %pNewFunc.addr, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end32
  %21 = load ptr, ptr %pNewFunc.addr, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom40 = zext i32 %22 to i64
  %arrayidx41 = getelementptr inbounds nuw [29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 %idxprom40
  %pCurrent42 = getelementptr inbounds nuw %struct.unix_syscall, ptr %arrayidx41, i32 0, i32 1
  store ptr %21, ptr %pCurrent42, align 8
  br label %for.end46

if.end43:                                         ; preds = %for.body13
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %23 = load i32, ptr %i, align 4
  %inc45 = add i32 %23, 1
  store i32 %inc45, ptr %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end46:                                        ; preds = %if.end39, %for.cond9
  br label %if.end47

if.end47:                                         ; preds = %for.end46, %for.end
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
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
