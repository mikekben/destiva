; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @rowSetEntryMerge(ptr noundef %pA, ptr noundef %pB) #0 {
entry:
  %pA.addr = alloca ptr, align 8
  %pB.addr = alloca ptr, align 8
  %head = alloca %struct.RowSetEntry, align 8
  %pTail = alloca ptr, align 8
  store ptr %pA, ptr %pA.addr, align 8
  store ptr %pB, ptr %pB.addr, align 8
  store ptr %head, ptr %pTail, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %entry
  %0 = load ptr, ptr %pA.addr, align 8
  %v = getelementptr inbounds nuw %struct.RowSetEntry, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %v, align 8
  %2 = load ptr, ptr %pB.addr, align 8
  %v1 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %2, i32 0, i32 0
  %3 = load i64, ptr %v1, align 8
  %cmp = icmp sle i64 %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr %pA.addr, align 8
  %v2 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %4, i32 0, i32 0
  %5 = load i64, ptr %v2, align 8
  %6 = load ptr, ptr %pB.addr, align 8
  %v3 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %6, i32 0, i32 0
  %7 = load i64, ptr %v3, align 8
  %cmp4 = icmp slt i64 %5, %7
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %pA.addr, align 8
  %9 = load ptr, ptr %pTail, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %9, i32 0, i32 1
  store ptr %8, ptr %pRight, align 8
  store ptr %8, ptr %pTail, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %10 = load ptr, ptr %pA.addr, align 8
  %pRight6 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pRight6, align 8
  store ptr %11, ptr %pA.addr, align 8
  %12 = load ptr, ptr %pA.addr, align 8
  %cmp7 = icmp eq ptr %12, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  %13 = load ptr, ptr %pB.addr, align 8
  %14 = load ptr, ptr %pTail, align 8
  %pRight9 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %14, i32 0, i32 1
  store ptr %13, ptr %pRight9, align 8
  br label %for.end

if.end10:                                         ; preds = %if.end
  br label %if.end17

if.else:                                          ; preds = %for.cond
  %15 = load ptr, ptr %pB.addr, align 8
  %16 = load ptr, ptr %pTail, align 8
  %pRight11 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %16, i32 0, i32 1
  store ptr %15, ptr %pRight11, align 8
  store ptr %15, ptr %pTail, align 8
  %17 = load ptr, ptr %pB.addr, align 8
  %pRight12 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %17, i32 0, i32 1
  %18 = load ptr, ptr %pRight12, align 8
  store ptr %18, ptr %pB.addr, align 8
  %19 = load ptr, ptr %pB.addr, align 8
  %cmp13 = icmp eq ptr %19, null
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.else
  %20 = load ptr, ptr %pA.addr, align 8
  %21 = load ptr, ptr %pTail, align 8
  %pRight15 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %21, i32 0, i32 1
  store ptr %20, ptr %pRight15, align 8
  br label %for.end

if.end16:                                         ; preds = %if.else
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end10
  br label %for.cond

for.end:                                          ; preds = %if.then14, %if.then8
  %pRight18 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %head, i32 0, i32 1
  %22 = load ptr, ptr %pRight18, align 8
  ret ptr %22
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
