; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.KeyInfo = type { i32, i8, i16, i16, ptr, ptr, [1 x ptr] }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSortAllocUnpacked(ptr noundef %pTask) #0 {
entry:
  %retval = alloca i32, align 4
  %pTask.addr = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  %0 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.SortSubtask, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pUnpacked, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pSorter, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.VdbeSorter, ptr %3, i32 0, i32 7
  %4 = load ptr, ptr %pKeyInfo, align 8
  %call = call ptr @sqlite3VdbeAllocUnpackedRecord(ptr noundef %4)
  %5 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked1 = getelementptr inbounds nuw %struct.SortSubtask, ptr %5, i32 0, i32 3
  store ptr %call, ptr %pUnpacked1, align 8
  %6 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pUnpacked2, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 7, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %8 = load ptr, ptr %pTask.addr, align 8
  %pSorter5 = getelementptr inbounds nuw %struct.SortSubtask, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pSorter5, align 8
  %pKeyInfo6 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %pKeyInfo6, align 8
  %nKeyField = getelementptr inbounds nuw %struct.KeyInfo, ptr %10, i32 0, i32 2
  %11 = load i16, ptr %nKeyField, align 2
  %12 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked7 = getelementptr inbounds nuw %struct.SortSubtask, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %pUnpacked7, align 8
  %nField = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %13, i32 0, i32 2
  store i16 %11, ptr %nField, align 8
  %14 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked8 = getelementptr inbounds nuw %struct.SortSubtask, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %pUnpacked8, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %15, i32 0, i32 4
  store i8 0, ptr %errCode, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end9, %if.then4
  %16 = load i32, ptr %retval, align 4
  ret i32 %16
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
