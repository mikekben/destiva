; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeMergeEngineStep(ptr noundef %pMerger, ptr noundef %pbEof) #0 {
entry:
  %pMerger.addr = alloca ptr, align 8
  %pbEof.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iPrev = alloca i32, align 4
  %pTask = alloca ptr, align 8
  %i = alloca i32, align 4
  %pReadr1 = alloca ptr, align 8
  %pReadr2 = alloca ptr, align 8
  %bCached = alloca i32, align 4
  %iRes = alloca i32, align 4
  store ptr %pMerger, ptr %pMerger.addr, align 8
  store ptr %pbEof, ptr %pbEof.addr, align 8
  %0 = load ptr, ptr %pMerger.addr, align 8
  %aTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %aTree, align 8
  %arrayidx = getelementptr inbounds i32, ptr %1, i64 1
  %2 = load i32, ptr %arrayidx, align 4
  store i32 %2, ptr %iPrev, align 4
  %3 = load ptr, ptr %pMerger.addr, align 8
  %pTask1 = getelementptr inbounds nuw %struct.MergeEngine, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pTask1, align 8
  store ptr %4, ptr %pTask, align 8
  %5 = load ptr, ptr %pMerger.addr, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %aReadr, align 8
  %7 = load i32, ptr %iPrev, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx2 = getelementptr inbounds %struct.PmaReader, ptr %6, i64 %idxprom
  %call = call i32 @vdbePmaReaderNext(ptr noundef %arrayidx2)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %if.end64

if.then:                                          ; preds = %entry
  store i32 0, ptr %bCached, align 4
  %9 = load ptr, ptr %pMerger.addr, align 8
  %aReadr3 = getelementptr inbounds nuw %struct.MergeEngine, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %aReadr3, align 8
  %11 = load i32, ptr %iPrev, align 4
  %and = and i32 %11, 65534
  %idxprom4 = sext i32 %and to i64
  %arrayidx5 = getelementptr inbounds %struct.PmaReader, ptr %10, i64 %idxprom4
  store ptr %arrayidx5, ptr %pReadr1, align 8
  %12 = load ptr, ptr %pMerger.addr, align 8
  %aReadr6 = getelementptr inbounds nuw %struct.MergeEngine, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %aReadr6, align 8
  %14 = load i32, ptr %iPrev, align 4
  %or = or i32 %14, 1
  %idxprom7 = sext i32 %or to i64
  %arrayidx8 = getelementptr inbounds %struct.PmaReader, ptr %13, i64 %idxprom7
  store ptr %arrayidx8, ptr %pReadr2, align 8
  %15 = load ptr, ptr %pMerger.addr, align 8
  %nTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %15, i32 0, i32 0
  %16 = load i32, ptr %nTree, align 8
  %17 = load i32, ptr %iPrev, align 4
  %add = add nsw i32 %16, %17
  %div = sdiv i32 %add, 2
  store i32 %div, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %18 = load i32, ptr %i, align 4
  %cmp9 = icmp sgt i32 %18, 0
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %pReadr1, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaReader, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %pFd, align 8
  %cmp10 = icmp eq ptr %20, null
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  store i32 1, ptr %iRes, align 4
  br label %if.end19

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %pReadr2, align 8
  %pFd12 = getelementptr inbounds nuw %struct.PmaReader, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pFd12, align 8
  %cmp13 = icmp eq ptr %22, null
  br i1 %cmp13, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  store i32 -1, ptr %iRes, align 4
  br label %if.end

if.else15:                                        ; preds = %if.else
  %23 = load ptr, ptr %pTask, align 8
  %xCompare = getelementptr inbounds nuw %struct.SortSubtask, ptr %23, i32 0, i32 6
  %24 = load ptr, ptr %xCompare, align 8
  %25 = load ptr, ptr %pTask, align 8
  %26 = load ptr, ptr %pReadr1, align 8
  %aKey = getelementptr inbounds nuw %struct.PmaReader, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %aKey, align 8
  %28 = load ptr, ptr %pReadr1, align 8
  %nKey = getelementptr inbounds nuw %struct.PmaReader, ptr %28, i32 0, i32 3
  %29 = load i32, ptr %nKey, align 4
  %30 = load ptr, ptr %pReadr2, align 8
  %aKey16 = getelementptr inbounds nuw %struct.PmaReader, ptr %30, i32 0, i32 6
  %31 = load ptr, ptr %aKey16, align 8
  %32 = load ptr, ptr %pReadr2, align 8
  %nKey17 = getelementptr inbounds nuw %struct.PmaReader, ptr %32, i32 0, i32 3
  %33 = load i32, ptr %nKey17, align 4
  %call18 = call i32 %24(ptr noundef %25, ptr noundef %bCached, ptr noundef %27, i32 noundef %29, ptr noundef %31, i32 noundef %33)
  store i32 %call18, ptr %iRes, align 4
  br label %if.end

if.end:                                           ; preds = %if.else15, %if.then14
  br label %if.end19

if.end19:                                         ; preds = %if.end, %if.then11
  %34 = load i32, ptr %iRes, align 4
  %cmp20 = icmp slt i32 %34, 0
  br i1 %cmp20, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end19
  %35 = load i32, ptr %iRes, align 4
  %cmp21 = icmp eq i32 %35, 0
  br i1 %cmp21, label %land.lhs.true, label %if.else34

land.lhs.true:                                    ; preds = %lor.lhs.false
  %36 = load ptr, ptr %pReadr1, align 8
  %37 = load ptr, ptr %pReadr2, align 8
  %cmp22 = icmp ult ptr %36, %37
  br i1 %cmp22, label %if.then23, label %if.else34

if.then23:                                        ; preds = %land.lhs.true, %if.end19
  %38 = load ptr, ptr %pReadr1, align 8
  %39 = load ptr, ptr %pMerger.addr, align 8
  %aReadr24 = getelementptr inbounds nuw %struct.MergeEngine, ptr %39, i32 0, i32 3
  %40 = load ptr, ptr %aReadr24, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %38 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %40 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 80
  %conv = trunc i64 %sub.ptr.div to i32
  %41 = load ptr, ptr %pMerger.addr, align 8
  %aTree25 = getelementptr inbounds nuw %struct.MergeEngine, ptr %41, i32 0, i32 2
  %42 = load ptr, ptr %aTree25, align 8
  %43 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %43 to i64
  %arrayidx27 = getelementptr inbounds i32, ptr %42, i64 %idxprom26
  store i32 %conv, ptr %arrayidx27, align 4
  %44 = load ptr, ptr %pMerger.addr, align 8
  %aReadr28 = getelementptr inbounds nuw %struct.MergeEngine, ptr %44, i32 0, i32 3
  %45 = load ptr, ptr %aReadr28, align 8
  %46 = load ptr, ptr %pMerger.addr, align 8
  %aTree29 = getelementptr inbounds nuw %struct.MergeEngine, ptr %46, i32 0, i32 2
  %47 = load ptr, ptr %aTree29, align 8
  %48 = load i32, ptr %i, align 4
  %xor = xor i32 %48, 1
  %idxprom30 = sext i32 %xor to i64
  %arrayidx31 = getelementptr inbounds i32, ptr %47, i64 %idxprom30
  %49 = load i32, ptr %arrayidx31, align 4
  %idxprom32 = sext i32 %49 to i64
  %arrayidx33 = getelementptr inbounds %struct.PmaReader, ptr %45, i64 %idxprom32
  store ptr %arrayidx33, ptr %pReadr2, align 8
  store i32 0, ptr %bCached, align 4
  br label %if.end54

if.else34:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %50 = load ptr, ptr %pReadr1, align 8
  %pFd35 = getelementptr inbounds nuw %struct.PmaReader, ptr %50, i32 0, i32 4
  %51 = load ptr, ptr %pFd35, align 8
  %tobool = icmp ne ptr %51, null
  br i1 %tobool, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.else34
  store i32 0, ptr %bCached, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.else34
  %52 = load ptr, ptr %pReadr2, align 8
  %53 = load ptr, ptr %pMerger.addr, align 8
  %aReadr38 = getelementptr inbounds nuw %struct.MergeEngine, ptr %53, i32 0, i32 3
  %54 = load ptr, ptr %aReadr38, align 8
  %sub.ptr.lhs.cast39 = ptrtoint ptr %52 to i64
  %sub.ptr.rhs.cast40 = ptrtoint ptr %54 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %sub.ptr.div42 = sdiv exact i64 %sub.ptr.sub41, 80
  %conv43 = trunc i64 %sub.ptr.div42 to i32
  %55 = load ptr, ptr %pMerger.addr, align 8
  %aTree44 = getelementptr inbounds nuw %struct.MergeEngine, ptr %55, i32 0, i32 2
  %56 = load ptr, ptr %aTree44, align 8
  %57 = load i32, ptr %i, align 4
  %idxprom45 = sext i32 %57 to i64
  %arrayidx46 = getelementptr inbounds i32, ptr %56, i64 %idxprom45
  store i32 %conv43, ptr %arrayidx46, align 4
  %58 = load ptr, ptr %pMerger.addr, align 8
  %aReadr47 = getelementptr inbounds nuw %struct.MergeEngine, ptr %58, i32 0, i32 3
  %59 = load ptr, ptr %aReadr47, align 8
  %60 = load ptr, ptr %pMerger.addr, align 8
  %aTree48 = getelementptr inbounds nuw %struct.MergeEngine, ptr %60, i32 0, i32 2
  %61 = load ptr, ptr %aTree48, align 8
  %62 = load i32, ptr %i, align 4
  %xor49 = xor i32 %62, 1
  %idxprom50 = sext i32 %xor49 to i64
  %arrayidx51 = getelementptr inbounds i32, ptr %61, i64 %idxprom50
  %63 = load i32, ptr %arrayidx51, align 4
  %idxprom52 = sext i32 %63 to i64
  %arrayidx53 = getelementptr inbounds %struct.PmaReader, ptr %59, i64 %idxprom52
  store ptr %arrayidx53, ptr %pReadr1, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.end37, %if.then23
  br label %for.inc

for.inc:                                          ; preds = %if.end54
  %64 = load i32, ptr %i, align 4
  %div55 = sdiv i32 %64, 2
  store i32 %div55, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %65 = load ptr, ptr %pMerger.addr, align 8
  %aReadr56 = getelementptr inbounds nuw %struct.MergeEngine, ptr %65, i32 0, i32 3
  %66 = load ptr, ptr %aReadr56, align 8
  %67 = load ptr, ptr %pMerger.addr, align 8
  %aTree57 = getelementptr inbounds nuw %struct.MergeEngine, ptr %67, i32 0, i32 2
  %68 = load ptr, ptr %aTree57, align 8
  %arrayidx58 = getelementptr inbounds i32, ptr %68, i64 1
  %69 = load i32, ptr %arrayidx58, align 4
  %idxprom59 = sext i32 %69 to i64
  %arrayidx60 = getelementptr inbounds %struct.PmaReader, ptr %66, i64 %idxprom59
  %pFd61 = getelementptr inbounds nuw %struct.PmaReader, ptr %arrayidx60, i32 0, i32 4
  %70 = load ptr, ptr %pFd61, align 8
  %cmp62 = icmp eq ptr %70, null
  %conv63 = zext i1 %cmp62 to i32
  %71 = load ptr, ptr %pbEof.addr, align 8
  store i32 %conv63, ptr %71, align 4
  br label %if.end64

if.end64:                                         ; preds = %for.end, %entry
  %72 = load i32, ptr %rc, align 4
  %cmp65 = icmp eq i32 %72, 0
  br i1 %cmp65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end64
  %73 = load ptr, ptr %pTask, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.SortSubtask, ptr %73, i32 0, i32 3
  %74 = load ptr, ptr %pUnpacked, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %74, i32 0, i32 4
  %75 = load i8, ptr %errCode, align 1
  %conv67 = zext i8 %75 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end64
  %76 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv67, %cond.true ], [ %76, %cond.false ]
  ret i32 %cond
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
