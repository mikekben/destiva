; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterOpenTempFile(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbePmaReaderIncrMergeInit(ptr noundef %pReadr, i32 noundef %eMode) #0 {
entry:
  %pReadr.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pIncr = alloca ptr, align 8
  %pTask = alloca ptr, align 8
  %db = alloca ptr, align 8
  %mxSz = alloca i32, align 4
  store ptr %pReadr, ptr %pReadr.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pReadr.addr, align 8
  %pIncr1 = getelementptr inbounds nuw %struct.PmaReader, ptr %0, i32 0, i32 10
  %1 = load ptr, ptr %pIncr1, align 8
  store ptr %1, ptr %pIncr, align 8
  %2 = load ptr, ptr %pIncr, align 8
  %pTask2 = getelementptr inbounds nuw %struct.IncrMerger, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pTask2, align 8
  store ptr %3, ptr %pTask, align 8
  %4 = load ptr, ptr %pTask, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pSorter, align 8
  %db3 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %db3, align 8
  store ptr %6, ptr %db, align 8
  %7 = load ptr, ptr %pTask, align 8
  %8 = load ptr, ptr %pIncr, align 8
  %pMerger = getelementptr inbounds nuw %struct.IncrMerger, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pMerger, align 8
  %10 = load i32, ptr %eMode.addr, align 4
  %call = call i32 @vdbeMergeEngineInit(ptr noundef %7, ptr noundef %9, i32 noundef %10)
  store i32 %call, ptr %rc, align 4
  %11 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then, label %if.end41

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %pIncr, align 8
  %mxSz4 = getelementptr inbounds nuw %struct.IncrMerger, ptr %12, i32 0, i32 3
  %13 = load i32, ptr %mxSz4, align 8
  store i32 %13, ptr %mxSz, align 4
  %14 = load ptr, ptr %pIncr, align 8
  %bUseThread = getelementptr inbounds nuw %struct.IncrMerger, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %bUseThread, align 8
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %16 = load ptr, ptr %db, align 8
  %17 = load i32, ptr %mxSz, align 4
  %conv = sext i32 %17 to i64
  %18 = load ptr, ptr %pIncr, align 8
  %aFile = getelementptr inbounds nuw %struct.IncrMerger, ptr %18, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile, i64 0, i64 0
  %pFd = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx, i32 0, i32 0
  %call6 = call i32 @vdbeSorterOpenTempFile(ptr noundef %16, i64 noundef %conv, ptr noundef %pFd)
  store i32 %call6, ptr %rc, align 4
  %19 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %19, 0
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then5
  %20 = load ptr, ptr %db, align 8
  %21 = load i32, ptr %mxSz, align 4
  %conv10 = sext i32 %21 to i64
  %22 = load ptr, ptr %pIncr, align 8
  %aFile11 = getelementptr inbounds nuw %struct.IncrMerger, ptr %22, i32 0, i32 6
  %arrayidx12 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile11, i64 0, i64 1
  %pFd13 = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx12, i32 0, i32 0
  %call14 = call i32 @vdbeSorterOpenTempFile(ptr noundef %20, i64 noundef %conv10, ptr noundef %pFd13)
  store i32 %call14, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then5
  br label %if.end40

if.else:                                          ; preds = %if.then
  %23 = load ptr, ptr %pTask, align 8
  %file2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %23, i32 0, i32 8
  %pFd15 = getelementptr inbounds nuw %struct.SorterFile, ptr %file2, i32 0, i32 0
  %24 = load ptr, ptr %pFd15, align 8
  %cmp16 = icmp eq ptr %24, null
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.else
  %25 = load ptr, ptr %db, align 8
  %26 = load ptr, ptr %pTask, align 8
  %file219 = getelementptr inbounds nuw %struct.SortSubtask, ptr %26, i32 0, i32 8
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %file219, i32 0, i32 1
  %27 = load i64, ptr %iEof, align 8
  %28 = load ptr, ptr %pTask, align 8
  %file220 = getelementptr inbounds nuw %struct.SortSubtask, ptr %28, i32 0, i32 8
  %pFd21 = getelementptr inbounds nuw %struct.SorterFile, ptr %file220, i32 0, i32 0
  %call22 = call i32 @vdbeSorterOpenTempFile(ptr noundef %25, i64 noundef %27, ptr noundef %pFd21)
  store i32 %call22, ptr %rc, align 4
  %29 = load ptr, ptr %pTask, align 8
  %file223 = getelementptr inbounds nuw %struct.SortSubtask, ptr %29, i32 0, i32 8
  %iEof24 = getelementptr inbounds nuw %struct.SorterFile, ptr %file223, i32 0, i32 1
  store i64 0, ptr %iEof24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then18, %if.else
  %30 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %30, 0
  br i1 %cmp26, label %if.then28, label %if.end39

if.then28:                                        ; preds = %if.end25
  %31 = load ptr, ptr %pTask, align 8
  %file229 = getelementptr inbounds nuw %struct.SortSubtask, ptr %31, i32 0, i32 8
  %pFd30 = getelementptr inbounds nuw %struct.SorterFile, ptr %file229, i32 0, i32 0
  %32 = load ptr, ptr %pFd30, align 8
  %33 = load ptr, ptr %pIncr, align 8
  %aFile31 = getelementptr inbounds nuw %struct.IncrMerger, ptr %33, i32 0, i32 6
  %arrayidx32 = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile31, i64 0, i64 1
  %pFd33 = getelementptr inbounds nuw %struct.SorterFile, ptr %arrayidx32, i32 0, i32 0
  store ptr %32, ptr %pFd33, align 8
  %34 = load ptr, ptr %pTask, align 8
  %file234 = getelementptr inbounds nuw %struct.SortSubtask, ptr %34, i32 0, i32 8
  %iEof35 = getelementptr inbounds nuw %struct.SorterFile, ptr %file234, i32 0, i32 1
  %35 = load i64, ptr %iEof35, align 8
  %36 = load ptr, ptr %pIncr, align 8
  %iStartOff = getelementptr inbounds nuw %struct.IncrMerger, ptr %36, i32 0, i32 2
  store i64 %35, ptr %iStartOff, align 8
  %37 = load i32, ptr %mxSz, align 4
  %conv36 = sext i32 %37 to i64
  %38 = load ptr, ptr %pTask, align 8
  %file237 = getelementptr inbounds nuw %struct.SortSubtask, ptr %38, i32 0, i32 8
  %iEof38 = getelementptr inbounds nuw %struct.SorterFile, ptr %file237, i32 0, i32 1
  %39 = load i64, ptr %iEof38, align 8
  %add = add nsw i64 %39, %conv36
  store i64 %add, ptr %iEof38, align 8
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %if.end25
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %entry
  %40 = load i32, ptr %rc, align 4
  %cmp42 = icmp eq i32 %40, 0
  br i1 %cmp42, label %land.lhs.true, label %if.end48

land.lhs.true:                                    ; preds = %if.end41
  %41 = load ptr, ptr %pIncr, align 8
  %bUseThread44 = getelementptr inbounds nuw %struct.IncrMerger, ptr %41, i32 0, i32 5
  %42 = load i32, ptr %bUseThread44, align 8
  %tobool45 = icmp ne i32 %42, 0
  br i1 %tobool45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %land.lhs.true
  %43 = load ptr, ptr %pIncr, align 8
  %call47 = call i32 @vdbeIncrPopulate(ptr noundef %43)
  store i32 %call47, ptr %rc, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %land.lhs.true, %if.end41
  %44 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %44, 0
  br i1 %cmp49, label %land.lhs.true51, label %if.end56

land.lhs.true51:                                  ; preds = %if.end48
  %45 = load i32, ptr %eMode.addr, align 4
  %cmp52 = icmp ne i32 %45, 1
  br i1 %cmp52, label %if.then54, label %if.end56

if.then54:                                        ; preds = %land.lhs.true51
  %46 = load ptr, ptr %pReadr.addr, align 8
  %call55 = call i32 @vdbePmaReaderNext(ptr noundef %46)
  store i32 %call55, ptr %rc, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %land.lhs.true51, %if.end48
  %47 = load i32, ptr %rc, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMergeEngineInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrPopulate(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
