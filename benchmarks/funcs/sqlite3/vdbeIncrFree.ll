; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMergeEngineFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterJoinThread(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @vdbeIncrFree(ptr noundef %pIncr) #0 {
entry:
  %pIncr.addr = alloca ptr, align 8
  store ptr %pIncr, ptr %pIncr.addr, align 8
  %0 = load ptr, ptr %pIncr.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pIncr.addr, align 8
  %bUseThread = getelementptr inbounds nuw %struct.IncrMerger, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %bUseThread, align 8
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then2, label %if.end17

if.then2:                                         ; preds = %if.then
  %3 = load ptr, ptr %pIncr.addr, align 8
  %pTask = getelementptr inbounds nuw %struct.IncrMerger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pTask, align 8
  %call = call i32 @vdbeSorterJoinThread(ptr noundef %4)
  %5 = load ptr, ptr %pIncr.addr, align 8
  %aFile = getelementptr inbounds nuw %struct.IncrMerger, ptr %5, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile, i64 0, i64 0
  %pFd = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx, i32 0, i32 0
  %6 = load ptr, ptr %pFd, align 8
  %tobool3 = icmp ne ptr %6, null
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then2
  %7 = load ptr, ptr %pIncr.addr, align 8
  %aFile5 = getelementptr inbounds nuw %struct.IncrMerger, ptr %7, i32 0, i32 6
  %arrayidx6 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile5, i64 0, i64 0
  %pFd7 = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx6, i32 0, i32 0
  %8 = load ptr, ptr %pFd7, align 8
  call void @sqlite3OsCloseFree(ptr noundef %8)
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then2
  %9 = load ptr, ptr %pIncr.addr, align 8
  %aFile8 = getelementptr inbounds nuw %struct.IncrMerger, ptr %9, i32 0, i32 6
  %arrayidx9 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile8, i64 0, i64 1
  %pFd10 = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx9, i32 0, i32 0
  %10 = load ptr, ptr %pFd10, align 8
  %tobool11 = icmp ne ptr %10, null
  br i1 %tobool11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end
  %11 = load ptr, ptr %pIncr.addr, align 8
  %aFile13 = getelementptr inbounds nuw %struct.IncrMerger, ptr %11, i32 0, i32 6
  %arrayidx14 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile13, i64 0, i64 1
  %pFd15 = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx14, i32 0, i32 0
  %12 = load ptr, ptr %pFd15, align 8
  call void @sqlite3OsCloseFree(ptr noundef %12)
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %13 = load ptr, ptr %pIncr.addr, align 8
  %pMerger = getelementptr inbounds nuw %struct.IncrMerger, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %pMerger, align 8
  call void @vdbeMergeEngineFree(ptr noundef %14)
  %15 = load ptr, ptr %pIncr.addr, align 8
  call void @sqlite3_free(ptr noundef %15)
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OsCloseFree(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
