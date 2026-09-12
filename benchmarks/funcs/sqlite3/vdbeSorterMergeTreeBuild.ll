; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMergeEngineFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterMergeTreeBuild(ptr noundef %pSorter, ptr noundef %ppOut) #0 {
entry:
  %pSorter.addr = alloca ptr, align 8
  %ppOut.addr = alloca ptr, align 8
  %pMain = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iTask = alloca i32, align 4
  %pTask = alloca ptr, align 8
  %pRoot = alloca ptr, align 8
  %nDepth = alloca i32, align 4
  %iReadOff = alloca i64, align 8
  %i = alloca i32, align 4
  %iSeq = alloca i32, align 4
  %pMerger = alloca ptr, align 8
  %nReader = alloca i32, align 4
  store ptr %pSorter, ptr %pSorter.addr, align 8
  store ptr %ppOut, ptr %ppOut.addr, align 8
  store ptr null, ptr %pMain, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pSorter.addr, align 8
  %nTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %0, i32 0, i32 15
  %1 = load i8, ptr %nTask, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pSorter.addr, align 8
  %nTask2 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 15
  %3 = load i8, ptr %nTask2, align 1
  %conv3 = zext i8 %3 to i32
  %call = call ptr @vdbeMergeEngineNew(i32 noundef %conv3)
  store ptr %call, ptr %pMain, align 8
  %4 = load ptr, ptr %pMain, align 8
  %cmp4 = icmp eq ptr %4, null
  br i1 %cmp4, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  store i32 0, ptr %iTask, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc63, %if.end7
  %5 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %5, 0
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, ptr %iTask, align 4
  %7 = load ptr, ptr %pSorter.addr, align 8
  %nTask10 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %7, i32 0, i32 15
  %8 = load i8, ptr %nTask10, align 1
  %conv11 = zext i8 %8 to i32
  %cmp12 = icmp slt i32 %6, %conv11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %9 = phi i1 [ false, %for.cond ], [ %cmp12, %land.rhs ]
  br i1 %9, label %for.body, label %for.end65

for.body:                                         ; preds = %land.end
  %10 = load ptr, ptr %pSorter.addr, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %10, i32 0, i32 17
  %11 = load i32, ptr %iTask, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pTask, align 8
  %12 = load ptr, ptr %pTask, align 8
  %nPMA = getelementptr inbounds nuw %struct.SortSubtask, ptr %12, i32 0, i32 5
  %13 = load i32, ptr %nPMA, align 8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then14, label %if.end62

if.then14:                                        ; preds = %for.body
  store ptr null, ptr %pRoot, align 8
  %14 = load ptr, ptr %pTask, align 8
  %nPMA15 = getelementptr inbounds nuw %struct.SortSubtask, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %nPMA15, align 8
  %call16 = call i32 @vdbeSorterTreeDepth(i32 noundef %15)
  store i32 %call16, ptr %nDepth, align 4
  store i64 0, ptr %iReadOff, align 8
  %16 = load ptr, ptr %pTask, align 8
  %nPMA17 = getelementptr inbounds nuw %struct.SortSubtask, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %nPMA17, align 8
  %cmp18 = icmp sle i32 %17, 16
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then14
  %18 = load ptr, ptr %pTask, align 8
  %19 = load ptr, ptr %pTask, align 8
  %nPMA21 = getelementptr inbounds nuw %struct.SortSubtask, ptr %19, i32 0, i32 5
  %20 = load i32, ptr %nPMA21, align 8
  %call22 = call i32 @vdbeMergeEngineLevel0(ptr noundef %18, i32 noundef %20, ptr noundef %iReadOff, ptr noundef %pRoot)
  store i32 %call22, ptr %rc, align 4
  br label %if.end48

if.else:                                          ; preds = %if.then14
  store i32 0, ptr %iSeq, align 4
  %call23 = call ptr @vdbeMergeEngineNew(i32 noundef 16)
  store ptr %call23, ptr %pRoot, align 8
  %21 = load ptr, ptr %pRoot, align 8
  %cmp24 = icmp eq ptr %21, null
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.else
  store i32 7, ptr %rc, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.else
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %if.end27
  %22 = load i32, ptr %i, align 4
  %23 = load ptr, ptr %pTask, align 8
  %nPMA29 = getelementptr inbounds nuw %struct.SortSubtask, ptr %23, i32 0, i32 5
  %24 = load i32, ptr %nPMA29, align 8
  %cmp30 = icmp slt i32 %22, %24
  br i1 %cmp30, label %land.rhs32, label %land.end35

land.rhs32:                                       ; preds = %for.cond28
  %25 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %25, 0
  br label %land.end35

land.end35:                                       ; preds = %land.rhs32, %for.cond28
  %26 = phi i1 [ false, %for.cond28 ], [ %cmp33, %land.rhs32 ]
  br i1 %26, label %for.body36, label %for.end

for.body36:                                       ; preds = %land.end35
  store ptr null, ptr %pMerger, align 8
  %27 = load ptr, ptr %pTask, align 8
  %nPMA37 = getelementptr inbounds nuw %struct.SortSubtask, ptr %27, i32 0, i32 5
  %28 = load i32, ptr %nPMA37, align 8
  %29 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %28, %29
  %cmp38 = icmp slt i32 %sub, 16
  br i1 %cmp38, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body36
  %30 = load ptr, ptr %pTask, align 8
  %nPMA40 = getelementptr inbounds nuw %struct.SortSubtask, ptr %30, i32 0, i32 5
  %31 = load i32, ptr %nPMA40, align 8
  %32 = load i32, ptr %i, align 4
  %sub41 = sub nsw i32 %31, %32
  br label %cond.end

cond.false:                                       ; preds = %for.body36
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub41, %cond.true ], [ 16, %cond.false ]
  store i32 %cond, ptr %nReader, align 4
  %33 = load ptr, ptr %pTask, align 8
  %34 = load i32, ptr %nReader, align 4
  %call42 = call i32 @vdbeMergeEngineLevel0(ptr noundef %33, i32 noundef %34, ptr noundef %iReadOff, ptr noundef %pMerger)
  store i32 %call42, ptr %rc, align 4
  %35 = load i32, ptr %rc, align 4
  %cmp43 = icmp eq i32 %35, 0
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %cond.end
  %36 = load ptr, ptr %pTask, align 8
  %37 = load i32, ptr %nDepth, align 4
  %38 = load i32, ptr %iSeq, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, ptr %iSeq, align 4
  %39 = load ptr, ptr %pRoot, align 8
  %40 = load ptr, ptr %pMerger, align 8
  %call46 = call i32 @vdbeSorterAddToTree(ptr noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef %39, ptr noundef %40)
  store i32 %call46, ptr %rc, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %cond.end
  br label %for.inc

for.inc:                                          ; preds = %if.end47
  %41 = load i32, ptr %i, align 4
  %add = add nsw i32 %41, 16
  store i32 %add, ptr %i, align 4
  br label %for.cond28, !llvm.loop !6

for.end:                                          ; preds = %land.end35
  br label %if.end48

if.end48:                                         ; preds = %for.end, %if.then20
  %42 = load i32, ptr %rc, align 4
  %cmp49 = icmp eq i32 %42, 0
  br i1 %cmp49, label %if.then51, label %if.else60

if.then51:                                        ; preds = %if.end48
  %43 = load ptr, ptr %pMain, align 8
  %cmp52 = icmp ne ptr %43, null
  br i1 %cmp52, label %if.then54, label %if.else58

if.then54:                                        ; preds = %if.then51
  %44 = load ptr, ptr %pTask, align 8
  %45 = load ptr, ptr %pRoot, align 8
  %46 = load ptr, ptr %pMain, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %aReadr, align 8
  %48 = load i32, ptr %iTask, align 4
  %idxprom55 = sext i32 %48 to i64
  %arrayidx56 = getelementptr inbounds %struct.PmaReader, ptr %47, i64 %idxprom55
  %pIncr = getelementptr inbounds nuw %struct.PmaReader, ptr %arrayidx56, i32 0, i32 10
  %call57 = call i32 @vdbeIncrMergerNew(ptr noundef %44, ptr noundef %45, ptr noundef %pIncr)
  store i32 %call57, ptr %rc, align 4
  br label %if.end59

if.else58:                                        ; preds = %if.then51
  %49 = load ptr, ptr %pRoot, align 8
  store ptr %49, ptr %pMain, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.else58, %if.then54
  br label %if.end61

if.else60:                                        ; preds = %if.end48
  %50 = load ptr, ptr %pRoot, align 8
  call void @vdbeMergeEngineFree(ptr noundef %50)
  br label %if.end61

if.end61:                                         ; preds = %if.else60, %if.end59
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %for.body
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %51 = load i32, ptr %iTask, align 4
  %inc64 = add nsw i32 %51, 1
  store i32 %inc64, ptr %iTask, align 4
  br label %for.cond, !llvm.loop !8

for.end65:                                        ; preds = %land.end
  %52 = load i32, ptr %rc, align 4
  %cmp66 = icmp ne i32 %52, 0
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %for.end65
  %53 = load ptr, ptr %pMain, align 8
  call void @vdbeMergeEngineFree(ptr noundef %53)
  store ptr null, ptr %pMain, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %for.end65
  %54 = load ptr, ptr %pMain, align 8
  %55 = load ptr, ptr %ppOut.addr, align 8
  store ptr %54, ptr %55, align 8
  %56 = load i32, ptr %rc, align 4
  ret i32 %56
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrMergerNew(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeMergeEngineNew(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterTreeDepth(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMergeEngineLevel0(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterAddToTree(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
