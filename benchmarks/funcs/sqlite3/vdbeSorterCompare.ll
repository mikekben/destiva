; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VdbeRecordUnpack(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeRecordCompare(i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterCompare(ptr noundef %pTask, ptr noundef %pbKey2Cached, ptr noundef %pKey1, i32 noundef %nKey1, ptr noundef %pKey2, i32 noundef %nKey2) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pbKey2Cached.addr = alloca ptr, align 8
  %pKey1.addr = alloca ptr, align 8
  %nKey1.addr = alloca i32, align 4
  %pKey2.addr = alloca ptr, align 8
  %nKey2.addr = alloca i32, align 4
  %r2 = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pbKey2Cached, ptr %pbKey2Cached.addr, align 8
  store ptr %pKey1, ptr %pKey1.addr, align 8
  store i32 %nKey1, ptr %nKey1.addr, align 4
  store ptr %pKey2, ptr %pKey2.addr, align 8
  store i32 %nKey2, ptr %nKey2.addr, align 4
  %0 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.SortSubtask, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pUnpacked, align 8
  store ptr %1, ptr %r2, align 8
  %2 = load ptr, ptr %pbKey2Cached.addr, align 8
  %3 = load i32, ptr %2, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pSorter, align 8
  %pKeyInfo = getelementptr inbounds nuw %struct.VdbeSorter, ptr %5, i32 0, i32 7
  %6 = load ptr, ptr %pKeyInfo, align 8
  %7 = load i32, ptr %nKey2.addr, align 4
  %8 = load ptr, ptr %pKey2.addr, align 8
  %9 = load ptr, ptr %r2, align 8
  call void @sqlite3VdbeRecordUnpack(ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9)
  %10 = load ptr, ptr %pbKey2Cached.addr, align 8
  store i32 1, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %nKey1.addr, align 4
  %12 = load ptr, ptr %pKey1.addr, align 8
  %13 = load ptr, ptr %r2, align 8
  %call = call i32 @sqlite3VdbeRecordCompare(i32 noundef %11, ptr noundef %12, ptr noundef %13)
  ret i32 %call
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
