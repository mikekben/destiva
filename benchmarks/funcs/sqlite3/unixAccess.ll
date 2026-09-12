; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @unixAccess(ptr noundef %NotUsed, ptr noundef %zPath, i32 noundef %flags, ptr noundef %pResOut) #0 {
entry:
  %NotUsed.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %flags.addr = alloca i32, align 4
  %pResOut.addr = alloca ptr, align 8
  %buf = alloca %struct.stat, align 8
  store ptr %NotUsed, ptr %NotUsed.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %flags, ptr %flags.addr, align 4
  store ptr %pResOut, ptr %pResOut.addr, align 8
  %0 = load ptr, ptr %NotUsed.addr, align 8
  %1 = load i32, ptr %flags.addr, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 4), i32 0, i32 1), align 8
  %3 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 %2(ptr noundef %3, ptr noundef %buf)
  %cmp1 = icmp eq i32 0, %call
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %buf, i32 0, i32 8
  %4 = load i64, ptr %st_size, align 8
  %cmp2 = icmp sgt i64 %4, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %5 = phi i1 [ false, %if.then ], [ %cmp2, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  %6 = load ptr, ptr %pResOut.addr, align 8
  store i32 %land.ext, ptr %6, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 2), i32 0, i32 1), align 8
  %8 = load ptr, ptr %zPath.addr, align 8
  %call3 = call i32 %7(ptr noundef %8, i32 noundef 6)
  %cmp4 = icmp eq i32 %call3, 0
  %conv = zext i1 %cmp4 to i32
  %9 = load ptr, ptr %pResOut.addr, align 8
  store i32 %conv, ptr %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %land.end
  ret i32 0
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
