; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden i32 @unixMapfile(ptr noundef %pFd, i64 noundef %nMap) #0 {
entry:
  %retval = alloca i32, align 4
  %pFd.addr = alloca ptr, align 8
  %nMap.addr = alloca i64, align 8
  %statbuf = alloca %struct.stat, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  store i64 %nMap, ptr %nMap.addr, align 8
  %0 = load ptr, ptr %pFd.addr, align 8
  %nFetchOut = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 12
  %1 = load i32, ptr %nFetchOut, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %nMap.addr, align 8
  %cmp1 = icmp slt i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 5), i32 0, i32 1), align 8
  %4 = load ptr, ptr %pFd.addr, align 8
  %h = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 3
  %5 = load i32, ptr %h, align 8
  %call = call i32 %3(i32 noundef %5, ptr noundef %statbuf)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then2
  store i32 1802, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.then2
  %st_size = getelementptr inbounds nuw %struct.stat, ptr %statbuf, i32 0, i32 8
  %6 = load i64, ptr %st_size, align 8
  store i64 %6, ptr %nMap.addr, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %if.end
  %7 = load i64, ptr %nMap.addr, align 8
  %8 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeMax = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 15
  %9 = load i64, ptr %mmapSizeMax, align 8
  %cmp6 = icmp sgt i64 %7, %9
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  %10 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeMax8 = getelementptr inbounds nuw %struct.unixFile, ptr %10, i32 0, i32 15
  %11 = load i64, ptr %mmapSizeMax8, align 8
  store i64 %11, ptr %nMap.addr, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end5
  %12 = load i64, ptr %nMap.addr, align 8
  %13 = load ptr, ptr %pFd.addr, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %13, i32 0, i32 13
  %14 = load i64, ptr %mmapSize, align 8
  %cmp10 = icmp ne i64 %12, %14
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %15 = load ptr, ptr %pFd.addr, align 8
  %16 = load i64, ptr %nMap.addr, align 8
  call void @unixRemapfile(ptr noundef %15, i64 noundef %16)
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end12, %if.then3, %if.then
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden void @unixRemapfile(ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
