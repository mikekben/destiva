; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @getFileMode(ptr noundef %zFile, ptr noundef %pMode, ptr noundef %pUid, ptr noundef %pGid) #0 {
entry:
  %zFile.addr = alloca ptr, align 8
  %pMode.addr = alloca ptr, align 8
  %pUid.addr = alloca ptr, align 8
  %pGid.addr = alloca ptr, align 8
  %sStat = alloca %struct.stat, align 8
  %rc = alloca i32, align 4
  store ptr %zFile, ptr %zFile.addr, align 8
  store ptr %pMode, ptr %pMode.addr, align 8
  store ptr %pUid, ptr %pUid.addr, align 8
  store ptr %pGid, ptr %pGid.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 4), i32 0, i32 1), align 8
  %1 = load ptr, ptr %zFile.addr, align 8
  %call = call i32 %0(ptr noundef %1, ptr noundef %sStat)
  %cmp = icmp eq i32 0, %call
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %st_mode = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 3
  %2 = load i32, ptr %st_mode, align 8
  %and = and i32 %2, 511
  %3 = load ptr, ptr %pMode.addr, align 8
  store i32 %and, ptr %3, align 4
  %st_uid = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 4
  %4 = load i32, ptr %st_uid, align 4
  %5 = load ptr, ptr %pUid.addr, align 8
  store i32 %4, ptr %5, align 4
  %st_gid = getelementptr inbounds nuw %struct.stat, ptr %sStat, i32 0, i32 5
  %6 = load i32, ptr %st_gid, align 8
  %7 = load ptr, ptr %pGid.addr, align 8
  store i32 %6, ptr %7, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1802, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
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
