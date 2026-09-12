; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterJoinThread(ptr noundef %pTask) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pRet = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pTask.addr, align 8
  %pThread = getelementptr inbounds nuw %struct.SortSubtask, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pThread, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr inttoptr (i64 1 to ptr), ptr %pRet, align 8
  %2 = load ptr, ptr %pTask.addr, align 8
  %pThread1 = getelementptr inbounds nuw %struct.SortSubtask, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pThread1, align 8
  %call = call i32 @sqlite3ThreadJoin(ptr noundef %3, ptr noundef %pRet)
  %4 = load ptr, ptr %pRet, align 8
  %5 = ptrtoint ptr %4 to i64
  %conv = trunc i64 %5 to i32
  store i32 %conv, ptr %rc, align 4
  %6 = load ptr, ptr %pTask.addr, align 8
  %bDone = getelementptr inbounds nuw %struct.SortSubtask, ptr %6, i32 0, i32 1
  store i32 0, ptr %bDone, align 8
  %7 = load ptr, ptr %pTask.addr, align 8
  %pThread2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %7, i32 0, i32 0
  store ptr null, ptr %pThread2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ThreadJoin(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
