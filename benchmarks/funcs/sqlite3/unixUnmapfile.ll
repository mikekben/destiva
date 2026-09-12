; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unix_syscall = type { ptr, ptr, ptr }
%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

@aSyscall = external hidden global [29 x %struct.unix_syscall], align 16

; Function Attrs: nounwind uwtable
define hidden void @unixUnmapfile(ptr noundef %pFd) #0 {
entry:
  %pFd.addr = alloca ptr, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  %0 = load ptr, ptr %pFd.addr, align 8
  %pMapRegion = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 16
  %1 = load ptr, ptr %pMapRegion, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr getelementptr inbounds nuw (%struct.unix_syscall, ptr getelementptr inbounds ([29 x %struct.unix_syscall], ptr @aSyscall, i64 0, i64 23), i32 0, i32 1), align 8
  %3 = load ptr, ptr %pFd.addr, align 8
  %pMapRegion1 = getelementptr inbounds nuw %struct.unixFile, ptr %3, i32 0, i32 16
  %4 = load ptr, ptr %pMapRegion1, align 8
  %5 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeActual = getelementptr inbounds nuw %struct.unixFile, ptr %5, i32 0, i32 14
  %6 = load i64, ptr %mmapSizeActual, align 8
  %call = call i32 %2(ptr noundef %4, i64 noundef %6)
  %7 = load ptr, ptr %pFd.addr, align 8
  %pMapRegion2 = getelementptr inbounds nuw %struct.unixFile, ptr %7, i32 0, i32 16
  store ptr null, ptr %pMapRegion2, align 8
  %8 = load ptr, ptr %pFd.addr, align 8
  %mmapSize = getelementptr inbounds nuw %struct.unixFile, ptr %8, i32 0, i32 13
  store i64 0, ptr %mmapSize, align 8
  %9 = load ptr, ptr %pFd.addr, align 8
  %mmapSizeActual3 = getelementptr inbounds nuw %struct.unixFile, ptr %9, i32 0, i32 14
  store i64 0, ptr %mmapSizeActual3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
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
