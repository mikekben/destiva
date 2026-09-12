; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SorterList = type { ptr, ptr, i32 }
%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterFile = type { ptr, i64 }
%struct.SorterRecord = type { i32, %union.anon.10 }
%union.anon.10 = type { ptr }
%struct.UnpackedRecord = type { ptr, ptr, i16, i8, i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MallocZero(i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vdbeSorterSort(ptr noundef %pTask, ptr noundef %pList) #0 {
entry:
  %retval = alloca i32, align 4
  %pTask.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %aSlot = alloca ptr, align 8
  %p = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pNext = alloca ptr, align 8
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pTask.addr, align 8
  %call = call i32 @vdbeSortAllocUnpacked(ptr noundef %0)
  store i32 %call, ptr %rc, align 4
  %1 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rc, align 4
  store i32 %2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pList.addr, align 8
  %pList1 = getelementptr inbounds nuw %struct.SorterList, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pList1, align 8
  store ptr %4, ptr %p, align 8
  %5 = load ptr, ptr %pTask.addr, align 8
  %pSorter = getelementptr inbounds nuw %struct.SortSubtask, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pSorter, align 8
  %call2 = call ptr @vdbeSorterGetCompare(ptr noundef %6)
  %7 = load ptr, ptr %pTask.addr, align 8
  %xCompare = getelementptr inbounds nuw %struct.SortSubtask, ptr %7, i32 0, i32 6
  store ptr %call2, ptr %xCompare, align 8
  %call3 = call ptr @sqlite3MallocZero(i64 noundef 512)
  store ptr %call3, ptr %aSlot, align 8
  %8 = load ptr, ptr %aSlot, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.end5
  %9 = load ptr, ptr %p, align 8
  %tobool6 = icmp ne ptr %9, null
  br i1 %tobool6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %pList.addr, align 8
  %aMemory = getelementptr inbounds nuw %struct.SorterList, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %aMemory, align 8
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %if.then8, label %if.else14

if.then8:                                         ; preds = %while.body
  %12 = load ptr, ptr %p, align 8
  %13 = load ptr, ptr %pList.addr, align 8
  %aMemory9 = getelementptr inbounds nuw %struct.SorterList, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %aMemory9, align 8
  %cmp10 = icmp eq ptr %12, %14
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.then8
  store ptr null, ptr %pNext, align 8
  br label %if.end13

if.else:                                          ; preds = %if.then8
  %15 = load ptr, ptr %pList.addr, align 8
  %aMemory12 = getelementptr inbounds nuw %struct.SorterList, ptr %15, i32 0, i32 1
  %16 = load ptr, ptr %aMemory12, align 8
  %17 = load ptr, ptr %p, align 8
  %u = getelementptr inbounds nuw %struct.SorterRecord, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %u, align 8
  %idxprom = sext i32 %18 to i64
  %arrayidx = getelementptr inbounds i8, ptr %16, i64 %idxprom
  store ptr %arrayidx, ptr %pNext, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then11
  br label %if.end16

if.else14:                                        ; preds = %while.body
  %19 = load ptr, ptr %p, align 8
  %u15 = getelementptr inbounds nuw %struct.SorterRecord, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %u15, align 8
  store ptr %20, ptr %pNext, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else14, %if.end13
  %21 = load ptr, ptr %p, align 8
  %u17 = getelementptr inbounds nuw %struct.SorterRecord, ptr %21, i32 0, i32 1
  store ptr null, ptr %u17, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end16
  %22 = load ptr, ptr %aSlot, align 8
  %23 = load i32, ptr %i, align 4
  %idxprom18 = sext i32 %23 to i64
  %arrayidx19 = getelementptr inbounds ptr, ptr %22, i64 %idxprom18
  %24 = load ptr, ptr %arrayidx19, align 8
  %tobool20 = icmp ne ptr %24, null
  br i1 %tobool20, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load ptr, ptr %pTask.addr, align 8
  %26 = load ptr, ptr %p, align 8
  %27 = load ptr, ptr %aSlot, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom21 = sext i32 %28 to i64
  %arrayidx22 = getelementptr inbounds ptr, ptr %27, i64 %idxprom21
  %29 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @vdbeSorterMerge(ptr noundef %25, ptr noundef %26, ptr noundef %29)
  store ptr %call23, ptr %p, align 8
  %30 = load ptr, ptr %aSlot, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom24 = sext i32 %31 to i64
  %arrayidx25 = getelementptr inbounds ptr, ptr %30, i64 %idxprom24
  store ptr null, ptr %arrayidx25, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, ptr %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %33 = load ptr, ptr %p, align 8
  %34 = load ptr, ptr %aSlot, align 8
  %35 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %35 to i64
  %arrayidx27 = getelementptr inbounds ptr, ptr %34, i64 %idxprom26
  store ptr %33, ptr %arrayidx27, align 8
  %36 = load ptr, ptr %pNext, align 8
  store ptr %36, ptr %p, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %p, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc42, %while.end
  %37 = load i32, ptr %i, align 4
  %cmp29 = icmp slt i32 %37, 64
  br i1 %cmp29, label %for.body30, label %for.end44

for.body30:                                       ; preds = %for.cond28
  %38 = load ptr, ptr %aSlot, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds ptr, ptr %38, i64 %idxprom31
  %40 = load ptr, ptr %arrayidx32, align 8
  %cmp33 = icmp eq ptr %40, null
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %for.body30
  br label %for.inc42

if.end35:                                         ; preds = %for.body30
  %41 = load ptr, ptr %p, align 8
  %tobool36 = icmp ne ptr %41, null
  br i1 %tobool36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end35
  %42 = load ptr, ptr %pTask.addr, align 8
  %43 = load ptr, ptr %p, align 8
  %44 = load ptr, ptr %aSlot, align 8
  %45 = load i32, ptr %i, align 4
  %idxprom37 = sext i32 %45 to i64
  %arrayidx38 = getelementptr inbounds ptr, ptr %44, i64 %idxprom37
  %46 = load ptr, ptr %arrayidx38, align 8
  %call39 = call ptr @vdbeSorterMerge(ptr noundef %42, ptr noundef %43, ptr noundef %46)
  br label %cond.end

cond.false:                                       ; preds = %if.end35
  %47 = load ptr, ptr %aSlot, align 8
  %48 = load i32, ptr %i, align 4
  %idxprom40 = sext i32 %48 to i64
  %arrayidx41 = getelementptr inbounds ptr, ptr %47, i64 %idxprom40
  %49 = load ptr, ptr %arrayidx41, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call39, %cond.true ], [ %49, %cond.false ]
  store ptr %cond, ptr %p, align 8
  br label %for.inc42

for.inc42:                                        ; preds = %cond.end, %if.then34
  %50 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %50, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond28, !llvm.loop !9

for.end44:                                        ; preds = %for.cond28
  %51 = load ptr, ptr %p, align 8
  %52 = load ptr, ptr %pList.addr, align 8
  %pList45 = getelementptr inbounds nuw %struct.SorterList, ptr %52, i32 0, i32 0
  store ptr %51, ptr %pList45, align 8
  %53 = load ptr, ptr %aSlot, align 8
  call void @sqlite3_free(ptr noundef %53)
  %54 = load ptr, ptr %pTask.addr, align 8
  %pUnpacked = getelementptr inbounds nuw %struct.SortSubtask, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %pUnpacked, align 8
  %errCode = getelementptr inbounds nuw %struct.UnpackedRecord, ptr %55, i32 0, i32 4
  %56 = load i8, ptr %errCode, align 1
  %conv = zext i8 %56 to i32
  store i32 %conv, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end44, %if.then4, %if.then
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vdbeSortAllocUnpacked(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeSorterGetCompare(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @vdbeSorterMerge(ptr noundef, ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
