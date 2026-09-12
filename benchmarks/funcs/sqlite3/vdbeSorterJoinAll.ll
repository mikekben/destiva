; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterJoinAll(ptr noundef %pSorter, i32 noundef %rcin) #0 {
entry:
  %pSorter.addr = alloca ptr, align 8
  %rcin.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %pTask = alloca ptr, align 8
  %rc2 = alloca i32, align 4
  store ptr %pSorter, ptr %pSorter.addr, align 8
  store i32 %rcin, ptr %rcin.addr, align 4
  %0 = load i32, ptr %rcin.addr, align 4
  store i32 %0, ptr %rc, align 4
  %1 = load ptr, ptr %pSorter.addr, align 8
  %nTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %1, i32 0, i32 15
  %2 = load i8, ptr %nTask, align 1
  %conv = zext i8 %2 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pSorter.addr, align 8
  %aTask = getelementptr inbounds nuw %struct.VdbeSorter, ptr %4, i32 0, i32 17
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [1 x %struct.SortSubtask], ptr %aTask, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %pTask, align 8
  %6 = load ptr, ptr %pTask, align 8
  %call = call i32 @vdbeSorterJoinThread(ptr noundef %6)
  store i32 %call, ptr %rc2, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %rc2, align 4
  store i32 %8, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %rc, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterJoinThread(ptr noundef) #0

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
