; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaWriter = type { i32, ptr, i32, i32, i32, i64, ptr }
%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VarintLen(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaWriterInit(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaWriteVarint(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaWriteBlob(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaWriterFinish(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeIncrPopulate(ptr noundef %pIncr) #0 {
entry:
  %pIncr.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %rc2 = alloca i32, align 4
  %iStart = alloca i64, align 8
  %pOut = alloca ptr, align 8
  %pTask = alloca ptr, align 8
  %pMerger = alloca ptr, align 8
  %writer = alloca %struct.PmaWriter, align 8
  %dummy = alloca i32, align 4
  %pReader = alloca ptr, align 8
  %nKey = alloca i32, align 4
  %iEof = alloca i64, align 8
  store ptr %pIncr, ptr %pIncr.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pIncr.addr, align 8
  %iStartOff = getelementptr inbounds nuw %struct.IncrMerger, ptr %0, i32 0, i32 2
  %1 = load i64, ptr %iStartOff, align 8
  store i64 %1, ptr %iStart, align 8
  %2 = load ptr, ptr %pIncr.addr, align 8
  %aFile = getelementptr inbounds nuw %struct.IncrMerger, ptr %2, i32 0, i32 6
  %arrayidx = getelementptr inbounds [2 x %struct.SorterFile], ptr %aFile, i64 0, i64 1
  store ptr %arrayidx, ptr %pOut, align 8
  %3 = load ptr, ptr %pIncr.addr, align 8
  %pTask1 = getelementptr inbounds nuw %struct.IncrMerger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pTask1, align 8
  store ptr %4, ptr %pTask, align 8
  %5 = load ptr, ptr %pIncr.addr, align 8
  %pMerger2 = getelementptr inbounds nuw %struct.IncrMerger, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pMerger2, align 8
  store ptr %6, ptr %pMerger, align 8
  %7 = load ptr, ptr %pOut, align 8
  %pFd = getelementptr inbounds nuw %struct.SorterFile, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pFd, align 8
  %9 = load ptr, ptr %pTask, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pSorter, align 8
  %pgsz = getelementptr inbounds nuw %struct.VdbeSorter, ptr %10, i32 0, i32 3
  %11 = load i32, ptr %pgsz, align 4
  %12 = load i64, ptr %iStart, align 8
  call void @vdbePmaWriterInit(ptr noundef %8, ptr noundef %writer, i32 noundef %11, i64 noundef %12)
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %13 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %pMerger, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %aReadr, align 8
  %16 = load ptr, ptr %pMerger, align 8
  %aTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %aTree, align 8
  %arrayidx3 = getelementptr inbounds i32, ptr %17, i64 1
  %18 = load i32, ptr %arrayidx3, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx4 = getelementptr inbounds %struct.PmaReader, ptr %15, i64 %idxprom
  store ptr %arrayidx4, ptr %pReader, align 8
  %19 = load ptr, ptr %pReader, align 8
  %nKey5 = getelementptr inbounds nuw %struct.PmaReader, ptr %19, i32 0, i32 3
  %20 = load i32, ptr %nKey5, align 4
  store i32 %20, ptr %nKey, align 4
  %iWriteOff = getelementptr inbounds nuw %struct.PmaWriter, ptr %writer, i32 0, i32 5
  %21 = load i64, ptr %iWriteOff, align 8
  %iBufEnd = getelementptr inbounds nuw %struct.PmaWriter, ptr %writer, i32 0, i32 4
  %22 = load i32, ptr %iBufEnd, align 8
  %conv = sext i32 %22 to i64
  %add = add nsw i64 %21, %conv
  store i64 %add, ptr %iEof, align 8
  %23 = load ptr, ptr %pReader, align 8
  %pFd6 = getelementptr inbounds nuw %struct.PmaReader, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pFd6, align 8
  %cmp7 = icmp eq ptr %24, null
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %25 = load i64, ptr %iEof, align 8
  %26 = load i32, ptr %nKey, align 4
  %conv9 = sext i32 %26 to i64
  %add10 = add nsw i64 %25, %conv9
  %27 = load i32, ptr %nKey, align 4
  %conv11 = sext i32 %27 to i64
  %call = call i32 @sqlite3VarintLen(i64 noundef %conv11)
  %conv12 = sext i32 %call to i64
  %add13 = add nsw i64 %add10, %conv12
  %28 = load i64, ptr %iStart, align 8
  %29 = load ptr, ptr %pIncr.addr, align 8
  %mxSz = getelementptr inbounds nuw %struct.IncrMerger, ptr %29, i32 0, i32 3
  %30 = load i32, ptr %mxSz, align 8
  %conv14 = sext i32 %30 to i64
  %add15 = add nsw i64 %28, %conv14
  %cmp16 = icmp sgt i64 %add13, %add15
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end
  br label %while.end

if.end19:                                         ; preds = %if.end
  %31 = load i32, ptr %nKey, align 4
  %conv20 = sext i32 %31 to i64
  call void @vdbePmaWriteVarint(ptr noundef %writer, i64 noundef %conv20)
  %32 = load ptr, ptr %pReader, align 8
  %aKey = getelementptr inbounds nuw %struct.PmaReader, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %aKey, align 8
  %34 = load i32, ptr %nKey, align 4
  call void @vdbePmaWriteBlob(ptr noundef %writer, ptr noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %pIncr.addr, align 8
  %pMerger21 = getelementptr inbounds nuw %struct.IncrMerger, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %pMerger21, align 8
  %call22 = call i32 @vdbeMergeEngineStep(ptr noundef %36, ptr noundef %dummy)
  store i32 %call22, ptr %rc, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then18, %if.then, %while.cond
  %37 = load ptr, ptr %pOut, align 8
  %iEof23 = getelementptr inbounds nuw %struct.SorterFile, ptr %37, i32 0, i32 1
  %call24 = call i32 @vdbePmaWriterFinish(ptr noundef %writer, ptr noundef %iEof23)
  store i32 %call24, ptr %rc2, align 4
  %38 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %38, 0
  br i1 %cmp25, label %if.then27, label %if.end28

if.then27:                                        ; preds = %while.end
  %39 = load i32, ptr %rc2, align 4
  store i32 %39, ptr %rc, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %while.end
  %40 = load i32, ptr %rc, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMergeEngineStep(ptr noundef, ptr noundef) #0

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
