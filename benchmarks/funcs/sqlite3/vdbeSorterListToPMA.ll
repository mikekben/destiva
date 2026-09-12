; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PmaWriter = type { i32, ptr, i32, i32, i32, i64, ptr }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.VdbeSorter = type { i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.SorterList, i32, i32, i8, i8, i8, i8, i8, [1 x %struct.SortSubtask] }
%struct.SorterRecord = type { i32, %union.anon.10 }
%union.anon.10 = type { ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterSort(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterListToPMA(ptr noundef %pTask, ptr noundef %pList) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %rc = alloca i32, align 4
  %writer = alloca %struct.PmaWriter, align 8
  %p = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pSorter, align 8
  %db1 = getelementptr inbounds nuw %struct.VdbeSorter, ptr %1, i32 0, i32 6
  %2 = load ptr, ptr %db1, align 8
  store ptr %2, ptr %db, align 8
  store i32 0, ptr %rc, align 4
  call void @llvm.memset.p0.i64(ptr align 8 %writer, i8 0, i64 48, i1 false)
  %3 = load ptr, ptr %pTask.addr, align 8
  %file = getelementptr inbounds nuw %struct.SortSubtask, ptr %3, i32 0, i32 7
  %pFd = getelementptr inbounds nuw %struct.SorterFile, ptr %file, i32 0, i32 0
  %4 = load ptr, ptr %pFd, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %db, align 8
  %6 = load ptr, ptr %pTask.addr, align 8
  %file2 = getelementptr inbounds nuw %struct.SortSubtask, ptr %6, i32 0, i32 7
  %pFd3 = getelementptr inbounds nuw %struct.SorterFile, ptr %file2, i32 0, i32 0
  %call = call i32 @vdbeSorterOpenTempFile(ptr noundef %5, i64 noundef 0, ptr noundef %pFd3)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %db, align 8
  %9 = load ptr, ptr %pTask.addr, align 8
  %file6 = getelementptr inbounds nuw %struct.SortSubtask, ptr %9, i32 0, i32 7
  %pFd7 = getelementptr inbounds nuw %struct.SorterFile, ptr %file6, i32 0, i32 0
  %10 = load ptr, ptr %pFd7, align 8
  %11 = load ptr, ptr %pTask.addr, align 8
  %file8 = getelementptr inbounds nuw %struct.SortSubtask, ptr %11, i32 0, i32 7
  %iEof = getelementptr inbounds nuw %struct.SorterFile, ptr %file8, i32 0, i32 1
  %12 = load i64, ptr %iEof, align 8
  %13 = load ptr, ptr %pList.addr, align 8
  %szPMA = getelementptr inbounds nuw %struct.SorterList, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %szPMA, align 8
  %conv = sext i32 %14 to i64
  %add = add nsw i64 %12, %conv
  %add9 = add nsw i64 %add, 9
  call void @vdbeSorterExtendFile(ptr noundef %8, ptr noundef %10, i64 noundef %add9)
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %15 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %15, 0
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end10
  %16 = load ptr, ptr %pTask.addr, align 8
  %17 = load ptr, ptr %pList.addr, align 8
  %call14 = call i32 @vdbeSorterSort(ptr noundef %16, ptr noundef %17)
  store i32 %call14, ptr %rc, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10
  %18 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %18, 0
  br i1 %cmp16, label %if.then18, label %if.end37

if.then18:                                        ; preds = %if.end15
  store ptr null, ptr %pNext, align 8
  %19 = load ptr, ptr %pTask.addr, align 8
  %file19 = getelementptr inbounds nuw %struct.SortSubtask, ptr %19, i32 0, i32 7
  %pFd20 = getelementptr inbounds nuw %struct.SorterFile, ptr %file19, i32 0, i32 0
  %20 = load ptr, ptr %pFd20, align 8
  %21 = load ptr, ptr %pTask.addr, align 8
  %pSorter21 = getelementptr inbounds nuw %struct.SortSubtask, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %pSorter21, align 8
  %pgsz = getelementptr inbounds nuw %struct.VdbeSorter, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %pgsz, align 4
  %24 = load ptr, ptr %pTask.addr, align 8
  %file22 = getelementptr inbounds nuw %struct.SortSubtask, ptr %24, i32 0, i32 7
  %iEof23 = getelementptr inbounds nuw %struct.SorterFile, ptr %file22, i32 0, i32 1
  %25 = load i64, ptr %iEof23, align 8
  call void @vdbePmaWriterInit(ptr noundef %20, ptr noundef %writer, i32 noundef %23, i64 noundef %25)
  %26 = load ptr, ptr %pTask.addr, align 8
  %nPMA = getelementptr inbounds nuw %struct.SortSubtask, ptr %26, i32 0, i32 5
  %27 = load i32, ptr %nPMA, align 8
  %inc = add nsw i32 %27, 1
  store i32 %inc, ptr %nPMA, align 8
  %28 = load ptr, ptr %pList.addr, align 8
  %szPMA24 = getelementptr inbounds nuw %struct.SorterList, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %szPMA24, align 8
  %conv25 = sext i32 %29 to i64
  call void @vdbePmaWriteVarint(ptr noundef %writer, i64 noundef %conv25)
  %30 = load ptr, ptr %pList.addr, align 8
  %pList26 = getelementptr inbounds nuw %struct.SorterList, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %pList26, align 8
  store ptr %31, ptr %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then18
  %32 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %32, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.SorterRecord, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %u, align 8
  store ptr %34, ptr %pNext, align 8
  %35 = load ptr, ptr %p, align 8
  %nVal = getelementptr inbounds nuw %struct.SorterRecord, ptr %35, i32 0, i32 0
  %36 = load i32, ptr %nVal, align 8
  %conv27 = sext i32 %36 to i64
  call void @vdbePmaWriteVarint(ptr noundef %writer, i64 noundef %conv27)
  %37 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds %struct.SorterRecord, ptr %37, i64 1
  %38 = load ptr, ptr %p, align 8
  %nVal28 = getelementptr inbounds nuw %struct.SorterRecord, ptr %38, i32 0, i32 0
  %39 = load i32, ptr %nVal28, align 8
  call void @vdbePmaWriteBlob(ptr noundef %writer, ptr noundef %add.ptr, i32 noundef %39)
  %40 = load ptr, ptr %pList.addr, align 8
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %aMemory, align 8
  %cmp29 = icmp eq ptr %41, null
  br i1 %cmp29, label %if.then31, label %if.end32

if.then31:                                        ; preds = %for.body
  %42 = load ptr, ptr %p, align 8
  call void @sqlite3_free(ptr noundef %42)
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %43 = load ptr, ptr %pNext, align 8
  store ptr %43, ptr %p, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %44 = load ptr, ptr %p, align 8
  %45 = load ptr, ptr %pList.addr, align 8
  %pList33 = getelementptr inbounds nuw %struct.SorterList, ptr %45, i32 0, i32 0
  store ptr %44, ptr %pList33, align 8
  %46 = load ptr, ptr %pTask.addr, align 8
  %file34 = getelementptr inbounds nuw %struct.SortSubtask, ptr %46, i32 0, i32 7
  %iEof35 = getelementptr inbounds nuw %struct.SorterFile, ptr %file34, i32 0, i32 1
  %call36 = call i32 @vdbePmaWriterFinish(ptr noundef %writer, ptr noundef %iEof35)
  store i32 %call36, ptr %rc, align 4
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end15
  %47 = load i32, ptr %rc, align 4
  ret i32 %47
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSorterOpenTempFile(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbeSorterExtendFile(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaWriterInit(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaWriteVarint(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @vdbePmaWriteBlob(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbePmaWriterFinish(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }

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
