; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VdbeSorterReset(ptr noundef %db, ptr noundef %pSorter) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pSorter.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pTask = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pSorter, ptr %pSorter.addr, align 8
  %0 = load ptr, ptr %pSorter.addr, align 8
  %call = call i32 @vdbeSorterJoinAll(ptr noundef %0, i32 noundef 0)
  %1 = load ptr, ptr %pSorter.addr, align 8
  %pReader = getelementptr inbounds nuw %struct.VdbeSorter, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pReader, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pSorter.addr, align 8
  %pReader1 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pReader1, align 8
  call void @vdbePmaReaderClear(ptr noundef %4)
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %pSorter.addr, align 8
  %pReader2 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pReader2, align 8
  call void @sqlite3DbFree(ptr noundef %5, ptr noundef %7)
  %8 = load ptr, ptr %pSorter.addr, align 8
  %pReader3 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %8, i32 0, i32 4
  store ptr null, ptr %pReader3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %pSorter.addr, align 8
  %pMerger = getelementptr inbounds nuw %struct.VdbeSorter, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pMerger, align 8
  call void @vdbeMergeEngineFree(ptr noundef %10)
  %11 = load ptr, ptr %pSorter.addr, align 8
  %pMerger4 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %11, i32 0, i32 5
  store ptr null, ptr %pMerger4, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load i32, ptr %i, align 4
  %13 = load ptr, ptr %pSorter.addr, align 8
  %nTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %13, i32 0, i32 15
  %14 = load i8, ptr %nTask, align 1
  %conv = zext i8 %14 to i32
  %cmp = icmp slt i32 %12, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %pSorter.addr, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %15, i32 0, i32 17
  %16 = load i32, ptr %i, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pTask, align 8
  %17 = load ptr, ptr %db.addr, align 8
  %18 = load ptr, ptr %pTask, align 8
  call void @vdbeSortSubtaskCleanup(ptr noundef %17, ptr noundef %18)
  %19 = load ptr, ptr %pSorter.addr, align 8
  %20 = load ptr, ptr %pTask, align 8
  %pSorter6 = getelementptr inbounds nuw %struct.SortSubtask, ptr %20, i32 0, i32 2
  store ptr %19, ptr %pSorter6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, ptr %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load ptr, ptr %pSorter.addr, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %22, i32 0, i32 9
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 1
  %23 = load ptr, ptr %aMemory, align 8
  %cmp7 = icmp eq ptr %23, null
  br i1 %cmp7, label %if.then9, label %if.end11

if.then9:                                         ; preds = %for.end
  %24 = load ptr, ptr %pSorter.addr, align 8
  %list10 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %24, i32 0, i32 9
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list10, i32 0, i32 0
  %25 = load ptr, ptr %pList, align 8
  call void @vdbeSorterRecordFree(ptr noundef null, ptr noundef %25)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %for.end
  %26 = load ptr, ptr %pSorter.addr, align 8
  %list12 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %26, i32 0, i32 9
  %pList13 = getelementptr inbounds nuw %struct.SorterList, ptr %list12, i32 0, i32 0
  store ptr null, ptr %pList13, align 8
  %27 = load ptr, ptr %pSorter.addr, align 8
  %list14 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %27, i32 0, i32 9
  %szPMA = getelementptr inbounds nuw %struct.SorterList, ptr %list14, i32 0, i32 2
  store i32 0, ptr %szPMA, align 8
  %28 = load ptr, ptr %pSorter.addr, align 8
  %bUsePMA = getelementptr inbounds nuw %struct.VdbeSorter, ptr %28, i32 0, i32 12
  store i8 0, ptr %bUsePMA, align 8
  %29 = load ptr, ptr %pSorter.addr, align 8
  %iMemory = getelementptr inbounds nuw %struct.VdbeSorter, ptr %29, i32 0, i32 10
  store i32 0, ptr %iMemory, align 8
  %30 = load ptr, ptr %pSorter.addr, align 8
  %mxKeysize = getelementptr inbounds nuw %struct.VdbeSorter, ptr %30, i32 0, i32 2
  store i32 0, ptr %mxKeysize, align 8
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %pSorter.addr, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.VdbeSorter, ptr %32, i32 0, i32 8
  %33 = load ptr, ptr %pUnpacked, align 8
  call void @sqlite3DbFree(ptr noundef %31, ptr noundef %33)
  %34 = load ptr, ptr %pSorter.addr, align 8
  %pUnpacked15 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %34, i32 0, i32 8
  store ptr null, ptr %pUnpacked15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterJoinAll(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaReaderClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMergeEngineFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeSortSubtaskCleanup(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeSorterRecordFree(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
