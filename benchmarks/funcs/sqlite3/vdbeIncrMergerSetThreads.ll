; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IncrMerger = type { ptr, ptr, i64, i32, i32, i32, [2 x %struct.SorterFile] }
%struct.SorterFile = type { ptr, i64 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }

; Function Attrs: nounwind uwtable
define hidden void @vdbeIncrMergerSetThreads(ptr noundef %pIncr) #0 {
entry:
  %pIncr.addr = alloca ptr, align 8
  store ptr %pIncr, ptr %pIncr.addr, align 8
  %0 = load ptr, ptr %pIncr.addr, align 8
  %bUseThread = getelementptr inbounds nuw %struct.IncrMerger, ptr %0, i32 0, i32 5
  store i32 1, ptr %bUseThread, align 8
  %1 = load ptr, ptr %pIncr.addr, align 8
  %mxSz = getelementptr inbounds nuw %struct.IncrMerger, ptr %1, i32 0, i32 3
  %2 = load i32, ptr %mxSz, align 8
  %conv = sext i32 %2 to i64
  %3 = load ptr, ptr %pIncr.addr, align 8
  %pTask = getelementptr inbounds nuw %struct.IncrMerger, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pTask, align 8
  %file2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %4, i32 0, i32 8
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %file2, i32 0, i32 1
  %5 = load i64, ptr %iEof, align 8
  %sub = sub nsw i64 %5, %conv
  store i64 %sub, ptr %iEof, align 8
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
