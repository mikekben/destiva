; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unixFile = type { ptr, ptr, ptr, i32, i8, i16, i32, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, ptr, i32, i32 }

; Function Attrs: nounwind uwtable
define hidden void @setDeviceCharacteristics(ptr noundef %pFd) #0 {
entry:
  %pFd.addr = alloca ptr, align 8
  store ptr %pFd, ptr %pFd.addr, align 8
  %0 = load ptr, ptr %pFd.addr, align 8
  %sectorSize = getelementptr inbounds nuw %struct.unixFile, ptr %0, i32 0, i32 17
  %1 = load i32, ptr %sectorSize, align 8
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pFd.addr, align 8
  %ctrlFlags = getelementptr inbounds nuw %struct.unixFile, ptr %2, i32 0, i32 5
  %3 = load i16, ptr %ctrlFlags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %4 = load ptr, ptr %pFd.addr, align 8
  %deviceCharacteristics = getelementptr inbounds nuw %struct.unixFile, ptr %4, i32 0, i32 18
  %5 = load i32, ptr %deviceCharacteristics, align 4
  %or = or i32 %5, 4096
  store i32 %or, ptr %deviceCharacteristics, align 4
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  %6 = load ptr, ptr %pFd.addr, align 8
  %sectorSize2 = getelementptr inbounds nuw %struct.unixFile, ptr %6, i32 0, i32 17
  store i32 4096, ptr %sectorSize2, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
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
