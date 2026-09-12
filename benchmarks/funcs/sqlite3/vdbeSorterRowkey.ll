; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.MergeEngine = type { i32, ptr, ptr, ptr }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.SorterRecord = type { i32, %union.anon.10 }
%union.anon.10 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @vdbeSorterRowkey(ptr noundef %pSorter, ptr noundef %pnKey) #0 {
entry:
  %pSorter.addr = alloca ptr, align 8
  %pnKey.addr = alloca ptr, align 8
  %pKey = alloca ptr, align 8
  %pReader = alloca ptr, align 8
  store ptr %pSorter, ptr %pSorter.addr, align 8
  store ptr %pnKey, ptr %pnKey.addr, align 8
  %0 = load ptr, ptr %pSorter.addr, align 8
  %bUsePMA = getelementptr inbounds nuw %struct.VdbeSorter, ptr %0, i32 0, i32 12
  %1 = load i8, ptr %bUsePMA, align 8
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.else6

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pSorter.addr, align 8
  %bUseThreads = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 13
  %3 = load i8, ptr %bUseThreads, align 1
  %tobool1 = icmp ne i8 %3, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %pSorter.addr, align 8
  %pReader3 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pReader3, align 8
  store ptr %5, ptr %pReader, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %pSorter.addr, align 8
  %pMerger = getelementptr inbounds nuw %struct.VdbeSorter, ptr %6, i32 0, i32 5
  %7 = load ptr, ptr %pMerger, align 8
  %aReadr = getelementptr inbounds nuw %struct.MergeEngine, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %aReadr, align 8
  %9 = load ptr, ptr %pSorter.addr, align 8
  %pMerger4 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pMerger4, align 8
  %aTree = getelementptr inbounds nuw %struct.MergeEngine, ptr %10, i32 0, i32 2
  %11 = load ptr, ptr %aTree, align 8
  %arrayidx = getelementptr inbounds i32, ptr %11, i64 1
  %12 = load i32, ptr %arrayidx, align 4
  %idxprom = sext i32 %12 to i64
  %arrayidx5 = getelementptr inbounds %struct.PmaReader, ptr %8, i64 %idxprom
  store ptr %arrayidx5, ptr %pReader, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %13 = load ptr, ptr %pReader, align 8
  %nKey = getelementptr inbounds nuw %struct.PmaReader, ptr %13, i32 0, i32 3
  %14 = load i32, ptr %nKey, align 4
  %15 = load ptr, ptr %pnKey.addr, align 8
  store i32 %14, ptr %15, align 4
  %16 = load ptr, ptr %pReader, align 8
  %aKey = getelementptr inbounds nuw %struct.PmaReader, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %aKey, align 8
  store ptr %17, ptr %pKey, align 8
  br label %if.end9

if.else6:                                         ; preds = %entry
  %18 = load ptr, ptr %pSorter.addr, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %18, i32 0, i32 9
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 0
  %19 = load ptr, ptr %pList, align 8
  %nVal = getelementptr inbounds nuw %struct.SorterRecord, ptr %19, i32 0, i32 0
  %20 = load i32, ptr %nVal, align 8
  %21 = load ptr, ptr %pnKey.addr, align 8
  store i32 %20, ptr %21, align 4
  %22 = load ptr, ptr %pSorter.addr, align 8
  %list7 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %22, i32 0, i32 9
  %pList8 = getelementptr inbounds nuw %struct.SorterList, ptr %list7, i32 0, i32 0
  %23 = load ptr, ptr %pList8, align 8
  %add.ptr = getelementptr inbounds %struct.SorterRecord, ptr %23, i64 1
  store ptr %add.ptr, ptr %pKey, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else6, %if.end
  %24 = load ptr, ptr %pKey, align 8
  ret ptr %24
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
