; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VdbeCursor = type { i8, i8, i8, i8, i8, i8, ptr, i64, ptr, i32, i32, ptr, %union.anon.9, ptr, i32, i32, i16, i16, i64, ptr, ptr, i32, i32, [1 x i32] }
%union.anon.9 = type { ptr }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.PmaReader = type { i64, i64, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.SorterRecord = type { i32, %union.anon.10 }
%union.anon.10 = type { ptr }

; Function Attrs: nounwind uwtable
declare hidden void @vdbeSorterRecordFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3VdbeSorterNext(ptr noundef %db, ptr noundef %pCsr) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pCsr.addr = alloca ptr, align 8
  %pSorter = alloca ptr, align 8
  %rc = alloca i32, align 4
  %res = alloca i32, align 4
  %pFree = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pCsr, ptr %pCsr.addr, align 8
  %0 = load ptr, ptr %pCsr.addr, align 8
  %uc = getelementptr inbounds nuw %struct.VdbeCursor, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %uc, align 8
  store ptr %1, ptr %pSorter, align 8
  %2 = load ptr, ptr %pSorter, align 8
  %bUsePMA = getelementptr inbounds nuw %struct.VdbeSorter, ptr %2, i32 0, i32 12
  %3 = load i8, ptr %bUsePMA, align 8
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pSorter, align 8
  %bUseThreads = getelementptr inbounds nuw %struct.VdbeSorter, ptr %4, i32 0, i32 13
  %5 = load i8, ptr %bUseThreads, align 1
  %tobool1 = icmp ne i8 %5, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pSorter, align 8
  %pReader = getelementptr inbounds nuw %struct.VdbeSorter, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pReader, align 8
  %call = call i32 @vdbePmaReaderNext(ptr noundef %7)
  store i32 %call, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then2
  %9 = load ptr, ptr %pSorter, align 8
  %pReader3 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pReader3, align 8
  %pFd = getelementptr inbounds nuw %struct.PmaReader, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pFd, align 8
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %land.lhs.true
  store i32 101, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %land.lhs.true, %if.then2
  br label %if.end12

if.else:                                          ; preds = %if.then
  store i32 0, ptr %res, align 4
  %12 = load ptr, ptr %pSorter, align 8
  %pMerger = getelementptr inbounds nuw %struct.VdbeSorter, ptr %12, i32 0, i32 5
  %13 = load ptr, ptr %pMerger, align 8
  %call6 = call i32 @vdbeMergeEngineStep(ptr noundef %13, ptr noundef %res)
  store i32 %call6, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, 0
  br i1 %cmp7, label %land.lhs.true8, label %if.end11

land.lhs.true8:                                   ; preds = %if.else
  %15 = load i32, ptr %res, align 4
  %tobool9 = icmp ne i32 %15, 0
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %land.lhs.true8
  store i32 101, ptr %rc, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %land.lhs.true8, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end
  br label %if.end24

if.else13:                                        ; preds = %entry
  %16 = load ptr, ptr %pSorter, align 8
  %list = getelementptr inbounds nuw %struct.VdbeSorter, ptr %16, i32 0, i32 9
  %pList = getelementptr inbounds nuw %struct.SorterList, ptr %list, i32 0, i32 0
  %17 = load ptr, ptr %pList, align 8
  store ptr %17, ptr %pFree, align 8
  %18 = load ptr, ptr %pFree, align 8
  %u = getelementptr inbounds nuw %struct.SorterRecord, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %u, align 8
  %20 = load ptr, ptr %pSorter, align 8
  %list14 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %20, i32 0, i32 9
  %pList15 = getelementptr inbounds nuw %struct.SorterList, ptr %list14, i32 0, i32 0
  store ptr %19, ptr %pList15, align 8
  %21 = load ptr, ptr %pFree, align 8
  %u16 = getelementptr inbounds nuw %struct.SorterRecord, ptr %21, i32 0, i32 1
  store ptr null, ptr %u16, align 8
  %22 = load ptr, ptr %pSorter, align 8
  %list17 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %22, i32 0, i32 9
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %list17, i32 0, i32 1
  %23 = load ptr, ptr %aMemory, align 8
  %cmp18 = icmp eq ptr %23, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else13
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load ptr, ptr %pFree, align 8
  call void @vdbeSorterRecordFree(ptr noundef %24, ptr noundef %25)
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else13
  %26 = load ptr, ptr %pSorter, align 8
  %list21 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %26, i32 0, i32 9
  %pList22 = getelementptr inbounds nuw %struct.SorterList, ptr %list21, i32 0, i32 0
  %27 = load ptr, ptr %pList22, align 8
  %tobool23 = icmp ne ptr %27, null
  %28 = zext i1 %tobool23 to i64
  %cond = select i1 %tobool23, i32 0, i32 101
  store i32 %cond, ptr %rc, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end20, %if.end12
  %29 = load i32, ptr %rc, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaReaderNext(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeMergeEngineStep(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
