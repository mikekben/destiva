; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
declare hidden void @vdbeIncrFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeIncrMergerNew(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeMergeEngineNew(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterAddToTree(ptr noundef %pTask, i32 noundef %nDepth, i32 noundef %iSeq, ptr noundef %pRoot, ptr noundef %pLeaf) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %nDepth.addr = alloca i32, align 4
  %iSeq.addr = alloca i32, align 4
  %pRoot.addr = alloca ptr, align 8
  %pLeaf.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nDiv = alloca i32, align 4
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %pIncr = alloca ptr, align 8
  %iIter = alloca i32, align 4
  %pReadr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store i32 %nDepth, ptr %nDepth.addr, align 4
  store i32 %iSeq, ptr %iSeq.addr, align 4
  store ptr %pRoot, ptr %pRoot.addr, align 8
  store ptr %pLeaf, ptr %pLeaf.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 1, ptr %nDiv, align 4
  %0 = load ptr, ptr %pRoot.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %pTask.addr, align 8
  %2 = load ptr, ptr %pLeaf.addr, align 8
  %call = call i32 @vdbeIncrMergerNew(ptr noundef %1, ptr noundef %2, ptr noundef %pIncr)
  store i32 %call, ptr %rc, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %nDepth.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %nDiv, align 4
  %mul = mul nsw i32 %5, 16
  store i32 %mul, ptr %nDiv, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc18, %for.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %nDepth.addr, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond1
  %9 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %9, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond1
  %10 = phi i1 [ false, %for.cond1 ], [ %cmp3, %land.rhs ]
  br i1 %10, label %for.body4, label %for.end20

for.body4:                                        ; preds = %land.end
  %11 = load i32, ptr %iSeq.addr, align 4
  %12 = load i32, ptr %nDiv, align 4
  %div = sdiv i32 %11, %12
  %rem = srem i32 %div, 16
  store i32 %rem, ptr %iIter, align 4
  %13 = load ptr, ptr %p, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %aReadr, align 8
  %15 = load i32, ptr %iIter, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds %struct.PmaReader, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %pReadr, align 8
  %16 = load ptr, ptr %pReadr, align 8
  %pIncr5 = getelementptr inbounds nuw %struct.PmaReader, ptr %16, i32 0, i32 10
  %17 = load ptr, ptr %pIncr5, align 8
  %cmp6 = icmp eq ptr %17, null
  br i1 %cmp6, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body4
  %call7 = call ptr @vdbeMergeEngineNew(i32 noundef 16)
  store ptr %call7, ptr %pNew, align 8
  %18 = load ptr, ptr %pNew, align 8
  %cmp8 = icmp eq ptr %18, null
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then
  store i32 7, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load ptr, ptr %pTask.addr, align 8
  %20 = load ptr, ptr %pNew, align 8
  %21 = load ptr, ptr %pReadr, align 8
  %pIncr10 = getelementptr inbounds nuw %struct.PmaReader, ptr %21, i32 0, i32 10
  %call11 = call i32 @vdbeIncrMergerNew(ptr noundef %19, ptr noundef %20, ptr noundef %pIncr10)
  store i32 %call11, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  br label %if.end12

if.end12:                                         ; preds = %if.end, %for.body4
  %22 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %22, 0
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end12
  %23 = load ptr, ptr %pReadr, align 8
  %pIncr15 = getelementptr inbounds nuw %struct.PmaReader, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %pIncr15, align 8
  %pMerger = getelementptr inbounds nuw %struct.IncrMerger, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %pMerger, align 8
  store ptr %25, ptr %p, align 8
  %26 = load i32, ptr %nDiv, align 4
  %div16 = sdiv i32 %26, 16
  store i32 %div16, ptr %nDiv, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %27 = load i32, ptr %i, align 4
  %inc19 = add nsw i32 %27, 1
  store i32 %inc19, ptr %i, align 4
  br label %for.cond1, !llvm.loop !8

for.end20:                                        ; preds = %land.end
  %28 = load i32, ptr %rc, align 4
  %cmp21 = icmp eq i32 %28, 0
  br i1 %cmp21, label %if.then22, label %if.else28

if.then22:                                        ; preds = %for.end20
  %29 = load ptr, ptr %pIncr, align 8
  %30 = load ptr, ptr %p, align 8
  %aReadr23 = getelementptr inbounds nuw %struct.MergeEngine, ptr %30, i32 0, i32 3
  %31 = load ptr, ptr %aReadr23, align 8
  %32 = load i32, ptr %iSeq.addr, align 4
  %rem24 = srem i32 %32, 16
  %idxprom25 = sext i32 %rem24 to i64
  %arrayidx26 = getelementptr inbounds %struct.PmaReader, ptr %31, i64 %idxprom25
  %pIncr27 = getelementptr inbounds nuw %struct.PmaReader, ptr %arrayidx26, i32 0, i32 10
  store ptr %29, ptr %pIncr27, align 8
  br label %if.end29

if.else28:                                        ; preds = %for.end20
  %33 = load ptr, ptr %pIncr, align 8
  call void @vdbeIncrFree(ptr noundef %33)
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then22
  %34 = load i32, ptr %rc, align 4
  ret i32 %34
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
!8 = distinct !{!8, !7}
