; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
define hidden void @vdbeMergeEngineCompare(ptr noundef %pMerger, i32 noundef %iOut) #0 {
entry:
  %pMerger.addr = alloca ptr, align 8
  %iOut.addr = alloca i32, align 4
  %i1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %iRes = alloca i32, align 4
  %p1 = alloca ptr, align 8
  %p2 = alloca ptr, align 8
  %pTask = alloca ptr, align 8
  %bCached = alloca i32, align 4
  %res = alloca i32, align 4
  store ptr %pMerger, ptr %pMerger.addr, align 8
  store i32 %iOut, ptr %iOut.addr, align 4
  %0 = load i32, ptr %iOut.addr, align 4
  %1 = load ptr, ptr %pMerger.addr, align 8
  %nTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %1, i32 0, i32 0
  %2 = load i32, ptr %nTree, align 8
  %div = sdiv i32 %2, 2
  %cmp = icmp sge i32 %0, %div
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %iOut.addr, align 4
  %4 = load ptr, ptr %pMerger.addr, align 8
  %nTree1 = getelementptr inbounds nuw %struct.MergeEngine, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nTree1, align 8
  %div2 = sdiv i32 %5, 2
  %sub = sub nsw i32 %3, %div2
  %mul = mul nsw i32 %sub, 2
  store i32 %mul, ptr %i1, align 4
  %6 = load i32, ptr %i1, align 4
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %i2, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %pMerger.addr, align 8
  %aTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %aTree, align 8
  %9 = load i32, ptr %iOut.addr, align 4
  %mul3 = mul nsw i32 %9, 2
  %idxprom = sext i32 %mul3 to i64
  %arrayidx = getelementptr inbounds i32, ptr %8, i64 %idxprom
  %10 = load i32, ptr %arrayidx, align 4
  store i32 %10, ptr %i1, align 4
  %11 = load ptr, ptr %pMerger.addr, align 8
  %aTree4 = getelementptr inbounds nuw %struct.MergeEngine, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %aTree4, align 8
  %13 = load i32, ptr %iOut.addr, align 4
  %mul5 = mul nsw i32 %13, 2
  %add6 = add nsw i32 %mul5, 1
  %idxprom7 = sext i32 %add6 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %12, i64 %idxprom7
  %14 = load i32, ptr %arrayidx8, align 4
  store i32 %14, ptr %i2, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load ptr, ptr %pMerger.addr, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %aReadr, align 8
  %17 = load i32, ptr %i1, align 4
  %idxprom9 = sext i32 %17 to i64
  %arrayidx10 = getelementptr inbounds %struct.PmaReader, ptr %16, i64 %idxprom9
  store ptr %arrayidx10, ptr %p1, align 8
  %18 = load ptr, ptr %pMerger.addr, align 8
  %aReadr11 = getelementptr inbounds nuw %struct.MergeEngine, ptr %18, i32 0, i32 3
  %19 = load ptr, ptr %aReadr11, align 8
  %20 = load i32, ptr %i2, align 4
  %idxprom12 = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds %struct.PmaReader, ptr %19, i64 %idxprom12
  store ptr %arrayidx13, ptr %p2, align 8
  %21 = load ptr, ptr %p1, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaReader, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pFd, align 8
  %cmp14 = icmp eq ptr %22, null
  br i1 %cmp14, label %if.then15, label %if.else16

if.then15:                                        ; preds = %if.end
  %23 = load i32, ptr %i2, align 4
  store i32 %23, ptr %iRes, align 4
  br label %if.end29

if.else16:                                        ; preds = %if.end
  %24 = load ptr, ptr %p2, align 8
  %pFd17 = getelementptr inbounds nuw %struct.PmaReader, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pFd17, align 8
  %cmp18 = icmp eq ptr %25, null
  br i1 %cmp18, label %if.then19, label %if.else20

if.then19:                                        ; preds = %if.else16
  %26 = load i32, ptr %i1, align 4
  store i32 %26, ptr %iRes, align 4
  br label %if.end28

if.else20:                                        ; preds = %if.else16
  %27 = load ptr, ptr %pMerger.addr, align 8
  %pTask21 = getelementptr inbounds nuw %struct.MergeEngine, ptr %27, i32 0, i32 1
  %28 = load ptr, ptr %pTask21, align 8
  store ptr %28, ptr %pTask, align 8
  store i32 0, ptr %bCached, align 4
  %29 = load ptr, ptr %pTask, align 8
  %xCompare = getelementptr inbounds nuw %struct.SortSubtask, ptr %29, i32 0, i32 6
  %30 = load ptr, ptr %xCompare, align 8
  %31 = load ptr, ptr %pTask, align 8
  %32 = load ptr, ptr %p1, align 8
  %aKey = getelementptr inbounds nuw %struct.PmaReader, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %aKey, align 8
  %34 = load ptr, ptr %p1, align 8
  %nKey = getelementptr inbounds nuw %struct.PmaReader, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %nKey, align 4
  %36 = load ptr, ptr %p2, align 8
  %aKey22 = getelementptr inbounds nuw %struct.PmaReader, ptr %36, i32 0, i32 6
  %37 = load ptr, ptr %aKey22, align 8
  %38 = load ptr, ptr %p2, align 8
  %nKey23 = getelementptr inbounds nuw %struct.PmaReader, ptr %38, i32 0, i32 3
  %39 = load i32, ptr %nKey23, align 4
  %call = call i32 %30(ptr noundef %31, ptr noundef %bCached, ptr noundef %33, i32 noundef %35, ptr noundef %37, i32 noundef %39)
  store i32 %call, ptr %res, align 4
  %40 = load i32, ptr %res, align 4
  %cmp24 = icmp sle i32 %40, 0
  br i1 %cmp24, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.else20
  %41 = load i32, ptr %i1, align 4
  store i32 %41, ptr %iRes, align 4
  br label %if.end27

if.else26:                                        ; preds = %if.else20
  %42 = load i32, ptr %i2, align 4
  store i32 %42, ptr %iRes, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then19
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then15
  %43 = load i32, ptr %iRes, align 4
  %44 = load ptr, ptr %pMerger.addr, align 8
  %aTree30 = getelementptr inbounds nuw %struct.MergeEngine, ptr %44, i32 0, i32 2
  %45 = load ptr, ptr %aTree30, align 8
  %46 = load i32, ptr %iOut.addr, align 4
  %idxprom31 = sext i32 %46 to i64
  %arrayidx32 = getelementptr inbounds i32, ptr %45, i64 %idxprom31
  store i32 %43, ptr %arrayidx32, align 4
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
