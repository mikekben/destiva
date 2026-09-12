; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMergeEngineFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeIncrMergerNew(ptr noundef %pTask, ptr noundef %pMerger, ptr noundef %ppOut) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pMerger.addr = alloca ptr, align 8
  %ppOut.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pIncr = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pMerger, ptr %pMerger.addr, align 8
  store ptr %ppOut, ptr %ppOut.addr, align 8
  store i32 0, ptr %rc, align 4
  %call = call i32 @sqlite3FaultSim(i32 noundef 100)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call ptr @sqlite3MallocZero(i64 noundef 72)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call1, %cond.false ]
  %0 = load ptr, ptr %ppOut.addr, align 8
  store ptr %cond, ptr %0, align 8
  store ptr %cond, ptr %pIncr, align 8
  %1 = load ptr, ptr %pIncr, align 8
  %tobool2 = icmp ne ptr %1, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %2 = load ptr, ptr %pMerger.addr, align 8
  %3 = load ptr, ptr %pIncr, align 8
  %pMerger3 = getelementptr inbounds nuw %struct.IncrMerger, ptr %3, i32 0, i32 1
  store ptr %2, ptr %pMerger3, align 8
  %4 = load ptr, ptr %pTask.addr, align 8
  %5 = load ptr, ptr %pIncr, align 8
  %pTask4 = getelementptr inbounds nuw %struct.IncrMerger, ptr %5, i32 0, i32 0
  store ptr %4, ptr %pTask4, align 8
  %6 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pSorter, align 8
  %mxKeysize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %mxKeysize, align 8
  %add = add nsw i32 %8, 9
  %9 = load ptr, ptr %pTask.addr, align 8
  %pSorter5 = getelementptr inbounds nuw %struct.SortSubtask, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pSorter5, align 8
  %mxPmaSize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %mxPmaSize, align 4
  %div = sdiv i32 %11, 2
  %cmp = icmp sgt i32 %add, %div
  br i1 %cmp, label %cond.true6, label %cond.false10

cond.true6:                                       ; preds = %if.then
  %12 = load ptr, ptr %pTask.addr, align 8
  %pSorter7 = getelementptr inbounds nuw %struct.SortSubtask, ptr %12, i32 0, i32 2
  %13 = load ptr, ptr %pSorter7, align 8
  %mxKeysize8 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %mxKeysize8, align 8
  %add9 = add nsw i32 %14, 9
  br label %cond.end14

cond.false10:                                     ; preds = %if.then
  %15 = load ptr, ptr %pTask.addr, align 8
  %pSorter11 = getelementptr inbounds nuw %struct.SortSubtask, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %pSorter11, align 8
  %mxPmaSize12 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %16, i32 0, i32 1
  %17 = load i32, ptr %mxPmaSize12, align 4
  %div13 = sdiv i32 %17, 2
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false10, %cond.true6
  %cond15 = phi i32 [ %add9, %cond.true6 ], [ %div13, %cond.false10 ]
  %18 = load ptr, ptr %pIncr, align 8
  %mxSz = getelementptr inbounds nuw %struct.IncrMerger, ptr %18, i32 0, i32 3
  store i32 %cond15, ptr %mxSz, align 8
  %19 = load ptr, ptr %pIncr, align 8
  %mxSz16 = getelementptr inbounds nuw %struct.IncrMerger, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %mxSz16, align 8
  %conv = sext i32 %20 to i64
  %21 = load ptr, ptr %pTask.addr, align 8
  %file2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %21, i32 0, i32 8
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %file2, i32 0, i32 1
  %22 = load i64, ptr %iEof, align 8
  %add17 = add nsw i64 %22, %conv
  store i64 %add17, ptr %iEof, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end
  %23 = load ptr, ptr %pMerger.addr, align 8
  call void @vdbeMergeEngineFree(ptr noundef %23)
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end14
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
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
