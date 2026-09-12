; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SortSubtask = type { ptr, i32, ptr, ptr, %struct.SorterList, i32, ptr, %struct.SorterFile, %struct.SorterFile }
%struct.SorterList = type { ptr, ptr, i32 }
%struct.SorterFile = type { ptr, i64 }
%struct.SorterRecord = type { i32, %union.anon.10 }
%union.anon.10 = type { ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @vdbeSorterMerge(ptr noundef %pTask, ptr noundef %p1, ptr noundef %p2) #0 {
entry:
  %pTask.addr = alloca ptr, align 8
  %p1.addr = alloca ptr, align 8
  %p2.addr = alloca ptr, align 8
  %pFinal = alloca ptr, align 8
  %pp = alloca ptr, align 8
  %bCached = alloca i32, align 4
  %res = alloca i32, align 4
  store ptr %pTask, ptr %pTask.addr, align 8
  store ptr %p1, ptr %p1.addr, align 8
  store ptr %p2, ptr %p2.addr, align 8
  store ptr null, ptr %pFinal, align 8
  store ptr %pFinal, ptr %pp, align 8
  store i32 0, ptr %bCached, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %entry
  %0 = load ptr, ptr %pTask.addr, align 8
  %xCompare = getelementptr inbounds nuw %struct.SortSubtask, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %xCompare, align 8
  %2 = load ptr, ptr %pTask.addr, align 8
  %3 = load ptr, ptr %p1.addr, align 8
  %add.ptr = getelementptr inbounds %struct.SorterRecord, ptr %3, i64 1
  %4 = load ptr, ptr %p1.addr, align 8
  %nVal = getelementptr inbounds nuw %struct.SorterRecord, ptr %4, i32 0, i32 0
  %5 = load i32, ptr %nVal, align 8
  %6 = load ptr, ptr %p2.addr, align 8
  %add.ptr1 = getelementptr inbounds %struct.SorterRecord, ptr %6, i64 1
  %7 = load ptr, ptr %p2.addr, align 8
  %nVal2 = getelementptr inbounds nuw %struct.SorterRecord, ptr %7, i32 0, i32 0
  %8 = load i32, ptr %nVal2, align 8
  %call = call i32 %1(ptr noundef %2, ptr noundef %bCached, ptr noundef %add.ptr, i32 noundef %5, ptr noundef %add.ptr1, i32 noundef %8)
  store i32 %call, ptr %res, align 4
  %9 = load i32, ptr %res, align 4
  %cmp = icmp sle i32 %9, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %10 = load ptr, ptr %p1.addr, align 8
  %11 = load ptr, ptr %pp, align 8
  store ptr %10, ptr %11, align 8
  %12 = load ptr, ptr %p1.addr, align 8
  %u = getelementptr inbounds nuw %struct.SorterRecord, ptr %12, i32 0, i32 1
  store ptr %u, ptr %pp, align 8
  %13 = load ptr, ptr %p1.addr, align 8
  %u3 = getelementptr inbounds nuw %struct.SorterRecord, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %u3, align 8
  store ptr %14, ptr %p1.addr, align 8
  %15 = load ptr, ptr %p1.addr, align 8
  %cmp4 = icmp eq ptr %15, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %16 = load ptr, ptr %p2.addr, align 8
  %17 = load ptr, ptr %pp, align 8
  store ptr %16, ptr %17, align 8
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %if.end11

if.else:                                          ; preds = %for.cond
  %18 = load ptr, ptr %p2.addr, align 8
  %19 = load ptr, ptr %pp, align 8
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %p2.addr, align 8
  %u6 = getelementptr inbounds nuw %struct.SorterRecord, ptr %20, i32 0, i32 1
  store ptr %u6, ptr %pp, align 8
  %21 = load ptr, ptr %p2.addr, align 8
  %u7 = getelementptr inbounds nuw %struct.SorterRecord, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %u7, align 8
  store ptr %22, ptr %p2.addr, align 8
  store i32 0, ptr %bCached, align 4
  %23 = load ptr, ptr %p2.addr, align 8
  %cmp8 = icmp eq ptr %23, null
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.else
  %24 = load ptr, ptr %p1.addr, align 8
  %25 = load ptr, ptr %pp, align 8
  store ptr %24, ptr %25, align 8
  br label %for.end

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  br label %for.cond

for.end:                                          ; preds = %if.then9, %if.then5
  %26 = load ptr, ptr %pFinal, align 8
  ret ptr %26
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
