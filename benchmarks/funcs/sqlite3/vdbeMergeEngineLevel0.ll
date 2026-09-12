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
declare hidden void @vdbeMergeEngineFree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeMergeEngineNew(i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeMergeEngineLevel0(ptr noundef %pTask, i32 noundef %nPMA, ptr noundef %piOffset, ptr noundef %ppOut) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %nPMA.addr = alloca i32, align 4
  %piOffset.addr = alloca ptr, align 8
  %ppOut.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  %iOff = alloca i64, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %nDummy = alloca i64, align 8
  %pReadr = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store i32 %nPMA, ptr %nPMA.addr, align 4
  store ptr %piOffset, ptr %piOffset.addr, align 8
  store ptr %ppOut, ptr %ppOut.addr, align 8
  %0 = load ptr, ptr %piOffset.addr, align 8
  %1 = load i64, ptr %0, align 8
  store i64 %1, ptr %iOff, align 8
  store i32 0, ptr %rc, align 4
  %2 = load i32, ptr %nPMA.addr, align 4
  %call = call ptr @vdbeMergeEngineNew(i32 noundef %2)
  store ptr %call, ptr %pNew, align 8
  %3 = load ptr, ptr %ppOut.addr, align 8
  store ptr %call, ptr %3, align 8
  %4 = load ptr, ptr %pNew, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 7, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load i32, ptr %nPMA.addr, align 4
  %cmp1 = icmp slt i32 %5, %6
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %7 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %7, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  store i64 0, ptr %nDummy, align 8
  %9 = load ptr, ptr %pNew, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %aReadr, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.PmaReader, ptr %10, i64 %idxprom
  store ptr %arrayidx, ptr %pReadr, align 8
  %12 = load ptr, ptr %pTask.addr, align 8
  %13 = load ptr, ptr %pTask.addr, align 8
  %file = getelementptr inbounds nuw %struct.SortSubtask, ptr %13, i32 0, i32 7
  %14 = load i64, ptr %iOff, align 8
  %15 = load ptr, ptr %pReadr, align 8
  %call3 = call i32 @vdbePmaReaderInit(ptr noundef %12, ptr noundef %file, i64 noundef %14, ptr noundef %15, ptr noundef %nDummy)
  store i32 %call3, ptr %rc, align 4
  %16 = load ptr, ptr %pReadr, align 8
  %iEof = getelementptr inbounds nuw %struct.PmaReader, ptr %16, i32 0, i32 1
  %17 = load i64, ptr %iEof, align 8
  store i64 %17, ptr %iOff, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %19 = load i32, ptr %rc, align 4
  %cmp4 = icmp ne i32 %19, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.end
  %20 = load ptr, ptr %pNew, align 8
  call void @vdbeMergeEngineFree(ptr noundef %20)
  %21 = load ptr, ptr %ppOut.addr, align 8
  store ptr null, ptr %21, align 8
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %for.end
  %22 = load i64, ptr %iOff, align 8
  %23 = load ptr, ptr %piOffset.addr, align 8
  store i64 %22, ptr %23, align 8
  %24 = load i32, ptr %rc, align 4
  ret i32 %24
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderInit(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #0

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
