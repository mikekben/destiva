; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.MergeEngine = type { i32, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMergeEngineFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterSetupMerge(ptr noundef %pSorter) #0 {
entry:
  %pSorter.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pTask0 = alloca ptr, align 8
  %pMain = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  %xCompare = alloca ptr, align 8
  %iTask = alloca i32, align 4
  %pReadr = alloca ptr, align 8
  %pLast = alloca ptr, align 8
  %pIncr40 = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pSorter, ptr %pSorter.addr, align 8
  %0 = load ptr, ptr %pSorter.addr, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %0, i32 0, i32 17
  %arrayidx = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 0
  store ptr %arrayidx, ptr %pTask0, align 8
  store ptr null, ptr %pMain, align 8
  %1 = load ptr, ptr %pTask0, align 8
  %pSorter1 = getelementptr inbounds nuw %struct.SortSubtask, ptr %1, i32 0, i32 2
  %2 = load ptr, ptr %pSorter1, align 8
  %db2 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 6
  %3 = load ptr, ptr %db2, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %pSorter.addr, align 8
  %call = call ptr @vdbeSorterGetCompare(ptr noundef %4)
  store ptr %call, ptr %xCompare, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %pSorter.addr, align 8
  %nTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %6, i32 0, i32 15
  %7 = load i8, ptr %nTask, align 1
  %conv = zext i8 %7 to i32
  %cmp = icmp slt i32 %5, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %xCompare, align 8
  %9 = load ptr, ptr %pSorter.addr, align 8
  %aTask4 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %9, i32 0, i32 17
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask4, i64 0, i64 %idxprom
  %xCompare6 = getelementptr inbounds nuw %struct.SortSubtask, ptr %arrayidx5, i32 0, i32 6
  store ptr %8, ptr %xCompare6, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pSorter.addr, align 8
  %call7 = call i32 @vdbeSorterMergeTreeBuild(ptr noundef %12, ptr noundef %pMain)
  store i32 %call7, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %13, 0
  br i1 %cmp8, label %if.then, label %if.end74

if.then:                                          ; preds = %for.end
  %14 = load ptr, ptr %pSorter.addr, align 8
  %bUseThreads = getelementptr inbounds nuw %struct.VdbeSorter, ptr %14, i32 0, i32 13
  %15 = load i8, ptr %bUseThreads, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then
  store ptr null, ptr %pReadr, align 8
  %16 = load ptr, ptr %pSorter.addr, align 8
  %aTask11 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %16, i32 0, i32 17
  %17 = load ptr, ptr %pSorter.addr, align 8
  %nTask12 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %17, i32 0, i32 15
  %18 = load i8, ptr %nTask12, align 1
  %conv13 = zext i8 %18 to i32
  %sub = sub nsw i32 %conv13, 1
  %idxprom14 = sext i32 %sub to i64
  %arrayidx15 = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask11, i64 0, i64 %idxprom14
  store ptr %arrayidx15, ptr %pLast, align 8
  %19 = load ptr, ptr %pLast, align 8
  %call16 = call i32 @vdbeSortAllocUnpacked(ptr noundef %19)
  store i32 %call16, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %20, 0
  br i1 %cmp17, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.then10
  %21 = load ptr, ptr %db, align 8
  %call20 = call ptr @sqlite3DbMallocZero(ptr noundef %21, i64 noundef 80)
  store ptr %call20, ptr %pReadr, align 8
  %22 = load ptr, ptr %pReadr, align 8
  %23 = load ptr, ptr %pSorter.addr, align 8
  %pReader = getelementptr inbounds nuw %struct.VdbeSorter, ptr %23, i32 0, i32 4
  store ptr %22, ptr %pReader, align 8
  %24 = load ptr, ptr %pReadr, align 8
  %cmp21 = icmp eq ptr %24, null
  br i1 %cmp21, label %if.then23, label %if.end

if.then23:                                        ; preds = %if.then19
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then23, %if.then19
  br label %if.end24

if.end24:                                         ; preds = %if.end, %if.then10
  %25 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %25, 0
  br i1 %cmp25, label %if.then27, label %if.end66

if.then27:                                        ; preds = %if.end24
  %26 = load ptr, ptr %pLast, align 8
  %27 = load ptr, ptr %pMain, align 8
  %28 = load ptr, ptr %pReadr, align 8
  %pIncr = getelementptr inbounds nuw %struct.PmaReader, ptr %28, i32 0, i32 10
  %call28 = call i32 @vdbeIncrMergerNew(ptr noundef %26, ptr noundef %27, ptr noundef %pIncr)
  store i32 %call28, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %29, 0
  br i1 %cmp29, label %if.then31, label %if.end65

if.then31:                                        ; preds = %if.then27
  %30 = load ptr, ptr %pReadr, align 8
  %pIncr32 = getelementptr inbounds nuw %struct.PmaReader, ptr %30, i32 0, i32 10
  %31 = load ptr, ptr %pIncr32, align 8
  call void @vdbeIncrMergerSetThreads(ptr noundef %31)
  store i32 0, ptr %iTask, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc47, %if.then31
  %32 = load i32, ptr %iTask, align 4
  %33 = load ptr, ptr %pSorter.addr, align 8
  %nTask34 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %33, i32 0, i32 15
  %34 = load i8, ptr %nTask34, align 1
  %conv35 = zext i8 %34 to i32
  %sub36 = sub nsw i32 %conv35, 1
  %cmp37 = icmp slt i32 %32, %sub36
  br i1 %cmp37, label %for.body39, label %for.end49

for.body39:                                       ; preds = %for.cond33
  %35 = load ptr, ptr %pMain, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %35, i32 0, i32 3
  %36 = load ptr, ptr %aReadr, align 8
  %37 = load i32, ptr %iTask, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds %struct.PmaReader, ptr %36, i64 %idxprom41
  %pIncr43 = getelementptr inbounds nuw %struct.PmaReader, ptr %arrayidx42, i32 0, i32 10
  %38 = load ptr, ptr %pIncr43, align 8
  store ptr %38, ptr %pIncr40, align 8
  %tobool44 = icmp ne ptr %38, null
  br i1 %tobool44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %for.body39
  %39 = load ptr, ptr %pIncr40, align 8
  call void @vdbeIncrMergerSetThreads(ptr noundef %39)
  br label %if.end46

if.end46:                                         ; preds = %if.then45, %for.body39
  br label %for.inc47

for.inc47:                                        ; preds = %if.end46
  %40 = load i32, ptr %iTask, align 4
  %inc48 = add nsw i32 %40, 1
  store i32 %inc48, ptr %iTask, align 4
  br label %for.cond33, !llvm.loop !8

for.end49:                                        ; preds = %for.cond33
  store i32 0, ptr %iTask, align 4
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc62, %for.end49
  %41 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %41, 0
  br i1 %cmp51, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond50
  %42 = load i32, ptr %iTask, align 4
  %43 = load ptr, ptr %pSorter.addr, align 8
  %nTask53 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %43, i32 0, i32 15
  %44 = load i8, ptr %nTask53, align 1
  %conv54 = zext i8 %44 to i32
  %cmp55 = icmp slt i32 %42, %conv54
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond50
  %45 = phi i1 [ false, %for.cond50 ], [ %cmp55, %land.rhs ]
  br i1 %45, label %for.body57, label %for.end64

for.body57:                                       ; preds = %land.end
  %46 = load ptr, ptr %pMain, align 8
  %aReadr58 = getelementptr inbounds nuw %struct.MergeEngine, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %aReadr58, align 8
  %48 = load i32, ptr %iTask, align 4
  %idxprom59 = sext i32 %48 to i64
  %arrayidx60 = getelementptr inbounds %struct.PmaReader, ptr %47, i64 %idxprom59
  store ptr %arrayidx60, ptr %p, align 8
  %49 = load ptr, ptr %p, align 8
  %call61 = call i32 @vdbePmaReaderIncrInit(ptr noundef %49, i32 noundef 1)
  store i32 %call61, ptr %rc, align 4
  br label %for.inc62

for.inc62:                                        ; preds = %for.body57
  %50 = load i32, ptr %iTask, align 4
  %inc63 = add nsw i32 %50, 1
  store i32 %inc63, ptr %iTask, align 4
  br label %for.cond50, !llvm.loop !9

for.end64:                                        ; preds = %land.end
  br label %if.end65

if.end65:                                         ; preds = %for.end64, %if.then27
  store ptr null, ptr %pMain, align 8
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.end24
  %51 = load i32, ptr %rc, align 4
  %cmp67 = icmp eq i32 %51, 0
  br i1 %cmp67, label %if.then69, label %if.end71

if.then69:                                        ; preds = %if.end66
  %52 = load ptr, ptr %pReadr, align 8
  %call70 = call i32 @vdbePmaReaderIncrMergeInit(ptr noundef %52, i32 noundef 2)
  store i32 %call70, ptr %rc, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then69, %if.end66
  br label %if.end73

if.else:                                          ; preds = %if.then
  %53 = load ptr, ptr %pTask0, align 8
  %54 = load ptr, ptr %pMain, align 8
  %call72 = call i32 @vdbeMergeEngineInit(ptr noundef %53, ptr noundef %54, i32 noundef 0)
  store i32 %call72, ptr %rc, align 4
  %55 = load ptr, ptr %pMain, align 8
  %56 = load ptr, ptr %pSorter.addr, align 8
  %pMerger = getelementptr inbounds nuw %struct.VdbeSorter, ptr %56, i32 0, i32 5
  store ptr %55, ptr %pMerger, align 8
  store ptr null, ptr %pMain, align 8
  br label %if.end73

if.end73:                                         ; preds = %if.else, %if.end71
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %for.end
  %57 = load i32, ptr %rc, align 4
  %cmp75 = icmp ne i32 %57, 0
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end74
  %58 = load ptr, ptr %pMain, align 8
  call void @vdbeMergeEngineFree(ptr noundef %58)
  br label %if.end78

if.end78:                                         ; preds = %if.then77, %if.end74
  %59 = load i32, ptr %rc, align 4
  ret i32 %59
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSortAllocUnpacked(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeSorterGetCompare(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterMergeTreeBuild(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrMergerNew(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeIncrMergerSetThreads(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderIncrInit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderIncrMergeInit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMergeEngineInit(ptr noundef, ptr noundef, i32 noundef) #0

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
!9 = distinct !{!9, !7}
