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
declare hidden i32 @vdbePmaReaderIncrInit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeMergeEngineInit(ptr noundef %pTask, ptr noundef %pMerger, i32 noundef %eMode) #0 {
entry:
  %retval = alloca i32, align 4
  %pTask.addr = alloca ptr, align 8
  %pMerger.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %nTree = alloca i32, align 4
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pMerger, ptr %pMerger.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pTask.addr, align 8
  %1 = load ptr, ptr %pMerger.addr, align 8
  %pTask1 = getelementptr inbounds nuw %struct.MergeEngine, ptr %1, i32 0, i32 1
  store ptr %0, ptr %pTask1, align 8
  %2 = load ptr, ptr %pMerger.addr, align 8
  %nTree2 = getelementptr inbounds nuw %struct.MergeEngine, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %nTree2, align 8
  store i32 %3, ptr %nTree, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nTree, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %eMode.addr, align 4
  %cmp3 = icmp eq i32 %6, 2
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %pMerger.addr, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %aReadr, align 8
  %9 = load i32, ptr %nTree, align 4
  %10 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, %10
  %sub4 = sub nsw i32 %sub, 1
  %idxprom = sext i32 %sub4 to i64
  %arrayidx = getelementptr inbounds %struct.PmaReader, ptr %8, i64 %idxprom
  %call = call i32 @vdbePmaReaderNext(ptr noundef %arrayidx)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load ptr, ptr %pMerger.addr, align 8
  %aReadr5 = getelementptr inbounds nuw %struct.MergeEngine, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %aReadr5, align 8
  %13 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds %struct.PmaReader, ptr %12, i64 %idxprom6
  %call8 = call i32 @vdbePmaReaderIncrInit(ptr noundef %arrayidx7, i32 noundef 0)
  store i32 %call8, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %14 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end11
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %pMerger.addr, align 8
  %nTree12 = getelementptr inbounds nuw %struct.MergeEngine, ptr %17, i32 0, i32 0
  %18 = load i32, ptr %nTree12, align 8
  %sub13 = sub nsw i32 %18, 1
  store i32 %sub13, ptr %i, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc17, %for.end
  %19 = load i32, ptr %i, align 4
  %cmp15 = icmp sgt i32 %19, 0
  br i1 %cmp15, label %for.body16, label %for.end18

for.body16:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %pMerger.addr, align 8
  %21 = load i32, ptr %i, align 4
  call void @vdbeMergeEngineCompare(ptr noundef %20, i32 noundef %21)
  br label %for.inc17

for.inc17:                                        ; preds = %for.body16
  %22 = load i32, ptr %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond14, !llvm.loop !8

for.end18:                                        ; preds = %for.cond14
  %23 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.SortSubtask, ptr %23, i32 0, i32 3
  %24 = load ptr, ptr %pUnpacked, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %24, i32 0, i32 4
  %25 = load i8, ptr %errCode, align 1
  %conv = zext i8 %25 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end18, %if.then10
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeMergeEngineCompare(ptr noundef, i32 noundef) #0

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
