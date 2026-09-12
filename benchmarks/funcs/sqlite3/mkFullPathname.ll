; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }

@.str.20 = external hidden unnamed_addr constant [3 x i8], align 1
@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16
@.str.44 = external hidden unnamed_addr constant [7 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Strlen30(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @unixLogErrorAtLine(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CantopenError(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @mkFullPathname(ptr noundef %zPath, ptr noundef %zOut, i32 noundef %nOut) #0 {
entry:
  %retval = alloca i32, align 4
  %zPath.addr = alloca ptr, align 8
  %zOut.addr = alloca ptr, align 8
  %nOut.addr = alloca i32, align 4
  %nPath = alloca i32, align 4
  %iOff = alloca i32, align 4
  store ptr %zPath, ptr %zPath.addr, align 8
  store ptr %zOut, ptr %zOut.addr, align 8
  store i32 %nOut, ptr %nOut.addr, align 4
  %0 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 @sqlite3Strlen30(ptr noundef %0)
  store i32 %call, ptr %nPath, align 4
  store i32 0, ptr %iOff, align 4
  %1 = load ptr, ptr %zPath.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp ne i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.end11

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 3), i32 0, i32 1), align 8
  %4 = load ptr, ptr %zOut.addr, align 8
  %5 = load i32, ptr %nOut.addr, align 4
  %sub = sub nsw i32 %5, 2
  %conv2 = sext i32 %sub to i64
  %call3 = call ptr %3(ptr noundef %4, i64 noundef %conv2)
  %cmp4 = icmp eq ptr %call3, null
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %call7 = call i32 @sqlite3CantopenError(i32 noundef 38967)
  %6 = load ptr, ptr %zPath.addr, align 8
  %call8 = call i32 @unixLogErrorAtLine(i32 noundef %call7, ptr noundef @.str.44, ptr noundef %6, i32 noundef 38967)
  store i32 %call8, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %zOut.addr, align 8
  %call9 = call i32 @sqlite3Strlen30(ptr noundef %7)
  store i32 %call9, ptr %iOff, align 4
  %8 = load ptr, ptr %zOut.addr, align 8
  %9 = load i32, ptr %iOff, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %iOff, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %8, i64 %idxprom
  store i8 47, ptr %arrayidx10, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.end, %entry
  %10 = load i32, ptr %iOff, align 4
  %11 = load i32, ptr %nPath, align 4
  %add = add nsw i32 %10, %11
  %add12 = add nsw i32 %add, 1
  %12 = load i32, ptr %nOut.addr, align 4
  %cmp13 = icmp sgt i32 %add12, %12
  br i1 %cmp13, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.end11
  %13 = load ptr, ptr %zOut.addr, align 8
  %14 = load i32, ptr %iOff, align 4
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds i8, ptr %13, i64 %idxprom16
  store i8 0, ptr %arrayidx17, align 1
  %call18 = call i32 @sqlite3CantopenError(i32 noundef 38976)
  store i32 %call18, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end11
  %15 = load i32, ptr %nOut.addr, align 4
  %16 = load i32, ptr %iOff, align 4
  %sub20 = sub nsw i32 %15, %16
  %17 = load ptr, ptr %zOut.addr, align 8
  %18 = load i32, ptr %iOff, align 4
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds i8, ptr %17, i64 %idxprom21
  %19 = load ptr, ptr %zPath.addr, align 8
  %call23 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef %sub20, ptr noundef %arrayidx22, ptr noundef @.str.20, ptr noundef %19)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then15, %if.then6
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
