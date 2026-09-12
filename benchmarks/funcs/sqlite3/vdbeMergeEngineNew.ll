; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FaultSim(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @vdbeMergeEngineNew(i32 noundef %nReader) #0 {
entry:
  %nReader.addr = alloca i32, align 4
  %N = alloca i32, align 4
  %nByte = alloca i32, align 4
  %pNew = alloca ptr, align 8
  store i32 %nReader, ptr %nReader.addr, align 4
  store i32 2, ptr %N, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %N, align 4
  %1 = load i32, ptr %nReader.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %N, align 4
  %3 = load i32, ptr %N, align 4
  %add = add nsw i32 %3, %2
  store i32 %add, ptr %N, align 4
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %4 = load i32, ptr %N, align 4
  %conv = sext i32 %4 to i64
  %mul = mul i64 %conv, 84
  %add1 = add i64 32, %mul
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, ptr %nByte, align 4
  %call = call i32 @sqlite3FaultSim(i32 noundef 100)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %while.end
  br label %cond.end

cond.false:                                       ; preds = %while.end
  %5 = load i32, ptr %nByte, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call ptr @sqlite3MallocZero(i64 noundef %conv3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %call4, %cond.false ]
  store ptr %cond, ptr %pNew, align 8
  %6 = load ptr, ptr %pNew, align 8
  %tobool5 = icmp ne ptr %6, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %7 = load i32, ptr %N, align 4
  %8 = load ptr, ptr %pNew, align 8
  %nTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %8, i32 0, i32 0
  store i32 %7, ptr %nTree, align 8
  %9 = load ptr, ptr %pNew, align 8
  %pTask = getelementptr inbounds nuw %struct.MergeEngine, ptr %9, i32 0, i32 1
  store ptr null, ptr %pTask, align 8
  %10 = load ptr, ptr %pNew, align 8
  %arrayidx = getelementptr inbounds %struct.MergeEngine, ptr %10, i64 1
  %11 = load ptr, ptr %pNew, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %11, i32 0, i32 3
  store ptr %arrayidx, ptr %aReadr, align 8
  %12 = load ptr, ptr %pNew, align 8
  %aReadr6 = getelementptr inbounds nuw %struct.MergeEngine, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %aReadr6, align 8
  %14 = load i32, ptr %N, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx7 = getelementptr inbounds %struct.PmaReader, ptr %13, i64 %idxprom
  %15 = load ptr, ptr %pNew, align 8
  %aTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %15, i32 0, i32 2
  store ptr %arrayidx7, ptr %aTree, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load ptr, ptr %pNew, align 8
  ret ptr %16
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
