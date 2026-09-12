; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SorterFile = type { ptr, i64 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.sqlite3_file = type { ptr }
%struct.sqlite3_io_methods = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsFetch(ptr noundef, i64 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterMapFile(ptr noundef %pTask, ptr noundef %pFile, ptr noundef %pp) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pFile.addr = alloca ptr, align 8
  %pp.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pFd = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pFile, ptr %pFile.addr, align 8
  store ptr %pp, ptr %pp.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pFile.addr, align 8
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %0, i32 0, i32 1
  %1 = load i64, ptr %iEof, align 8
  %2 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pSorter, align 8
  %db = getelementptr inbounds nuw %struct.VdbeSorter, ptr %3, i32 0, i32 6
  %4 = load ptr, ptr %db, align 8
  %nMaxSorterMmap = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 34
  %5 = load i32, ptr %nMaxSorterMmap, align 4
  %conv = sext i32 %5 to i64
  %cmp = icmp sle i64 %1, %conv
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pFile.addr, align 8
  %pFd2 = getelementptr inbounds nuw %struct.SorterFile, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pFd2, align 8
  store ptr %7, ptr %pFd, align 8
  %8 = load ptr, ptr %pFd, align 8
  %pMethods = getelementptr inbounds nuw %struct.sqlite3_file, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pMethods, align 8
  %iVersion = getelementptr inbounds nuw %struct.sqlite3_io_methods, ptr %9, i32 0, i32 0
  %10 = load i32, ptr %iVersion, align 8
  %cmp3 = icmp sge i32 %10, 3
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %11 = load ptr, ptr %pFd, align 8
  %12 = load ptr, ptr %pFile.addr, align 8
  %iEof6 = getelementptr inbounds nuw %struct.SorterFile, ptr %12, i32 0, i32 1
  %13 = load i64, ptr %iEof6, align 8
  %conv7 = trunc i64 %13 to i32
  %14 = load ptr, ptr %pp.addr, align 8
  %call = call i32 @sqlite3OsFetch(ptr noundef %11, i64 noundef 0, i32 noundef %conv7, ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry
  %15 = load i32, ptr %rc, align 4
  ret i32 %15
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
