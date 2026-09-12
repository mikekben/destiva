; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @dotlockCheckReservedLock(ptr noundef %id, ptr noundef %pResOut) #0 {
entry:
  %id.addr = alloca ptr, align 8
  %pResOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %reserved = alloca i32, align 4
  %pFile = alloca ptr, align 8
  store ptr %id, ptr %id.addr, align 8
  store ptr %pResOut, ptr %pResOut.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %reserved, align 4
  %0 = load ptr, ptr %id.addr, align 8
  store ptr %0, ptr %pFile, align 8
  %1 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 2), i32 0, i32 1), align 8
  %2 = load ptr, ptr %pFile, align 8
  %lockingContext = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 7
  %3 = load ptr, ptr %lockingContext, align 8
  %call = call i32 %1(ptr noundef %3, i32 noundef 0)
  %cmp = icmp eq i32 %call, 0
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %reserved, align 4
  %4 = load i32, ptr %reserved, align 4
  %5 = load ptr, ptr %pResOut.addr, align 8
  store i32 %4, ptr %5, align 4
  %6 = load i32, ptr %rc, align 4
  ret i32 %6
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
