; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSet = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3RowSetTest(ptr noundef %pRowSet, i32 noundef %iBatch, i64 noundef %iRowid) #0 {
entry:
  %retval = alloca i32, align 4
  %pRowSet.addr = alloca ptr, align 8
  %iBatch.addr = alloca i32, align 4
  %iRowid.addr = alloca i64, align 8
  %p = alloca ptr, align 8
  %pTree = alloca ptr, align 8
  %ppPrevTree = alloca ptr, align 8
  %pAux = alloca ptr, align 8
  %pTail = alloca ptr, align 8
  store ptr %pRowSet, ptr %pRowSet.addr, align 8
  store i32 %iBatch, ptr %iBatch.addr, align 4
  store i64 %iRowid, ptr %iRowid.addr, align 8
  %0 = load i32, ptr %iBatch.addr, align 4
  %1 = load ptr, ptr %pRowSet.addr, align 8
  %iBatch1 = getelementptr inbounds nuw %struct.RowSet, ptr %1, i32 0, i32 8
  %2 = load i32, ptr %iBatch1, align 4
  %cmp = icmp ne i32 %0, %2
  br i1 %cmp, label %if.then, label %if.end35

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pRowSet.addr, align 8
  %pEntry = getelementptr inbounds nuw %struct.RowSet, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %pEntry, align 8
  store ptr %4, ptr %p, align 8
  %5 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then2, label %if.end33

if.then2:                                         ; preds = %if.then
  %6 = load ptr, ptr %pRowSet.addr, align 8
  %pForest = getelementptr inbounds nuw %struct.RowSet, ptr %6, i32 0, i32 5
  store ptr %pForest, ptr %ppPrevTree, align 8
  %7 = load ptr, ptr %pRowSet.addr, align 8
  %rsFlags = getelementptr inbounds nuw %struct.RowSet, ptr %7, i32 0, i32 7
  %8 = load i16, ptr %rsFlags, align 2
  %conv = zext i16 %8 to i32
  %and = and i32 %conv, 1
  %cmp3 = icmp eq i32 %and, 0
  br i1 %cmp3, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %p, align 8
  %call = call ptr @rowSetEntrySort(ptr noundef %9)
  store ptr %call, ptr %p, align 8
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then2
  %10 = load ptr, ptr %pRowSet.addr, align 8
  %pForest6 = getelementptr inbounds nuw %struct.RowSet, ptr %10, i32 0, i32 5
  %11 = load ptr, ptr %pForest6, align 8
  store ptr %11, ptr %pTree, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %12 = load ptr, ptr %pTree, align 8
  %tobool7 = icmp ne ptr %12, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pTree, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %13, i32 0, i32 1
  store ptr %pRight, ptr %ppPrevTree, align 8
  %14 = load ptr, ptr %pTree, align 8
  %pLeft = getelementptr inbounds nuw %struct.RowSetEntry, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pLeft, align 8
  %cmp8 = icmp eq ptr %15, null
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  %16 = load ptr, ptr %p, align 8
  %call11 = call ptr @rowSetListToTree(ptr noundef %16)
  %17 = load ptr, ptr %pTree, align 8
  %pLeft12 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %17, i32 0, i32 2
  store ptr %call11, ptr %pLeft12, align 8
  br label %for.end

if.else:                                          ; preds = %for.body
  %18 = load ptr, ptr %pTree, align 8
  %pLeft13 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pLeft13, align 8
  call void @rowSetTreeToList(ptr noundef %19, ptr noundef %pAux, ptr noundef %pTail)
  %20 = load ptr, ptr %pTree, align 8
  %pLeft14 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %20, i32 0, i32 2
  store ptr null, ptr %pLeft14, align 8
  %21 = load ptr, ptr %pAux, align 8
  %22 = load ptr, ptr %p, align 8
  %call15 = call ptr @rowSetEntryMerge(ptr noundef %21, ptr noundef %22)
  store ptr %call15, ptr %p, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %if.end16
  %23 = load ptr, ptr %pTree, align 8
  %pRight17 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pRight17, align 8
  store ptr %24, ptr %pTree, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then10, %for.cond
  %25 = load ptr, ptr %pTree, align 8
  %cmp18 = icmp eq ptr %25, null
  br i1 %cmp18, label %if.then20, label %if.end28

if.then20:                                        ; preds = %for.end
  %26 = load ptr, ptr %pRowSet.addr, align 8
  %call21 = call ptr @rowSetEntryAlloc(ptr noundef %26)
  store ptr %call21, ptr %pTree, align 8
  %27 = load ptr, ptr %ppPrevTree, align 8
  store ptr %call21, ptr %27, align 8
  %28 = load ptr, ptr %pTree, align 8
  %tobool22 = icmp ne ptr %28, null
  br i1 %tobool22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.then20
  %29 = load ptr, ptr %pTree, align 8
  %v = getelementptr inbounds nuw %struct.RowSetEntry, ptr %29, i32 0, i32 0
  store i64 0, ptr %v, align 8
  %30 = load ptr, ptr %pTree, align 8
  %pRight24 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %30, i32 0, i32 1
  store ptr null, ptr %pRight24, align 8
  %31 = load ptr, ptr %p, align 8
  %call25 = call ptr @rowSetListToTree(ptr noundef %31)
  %32 = load ptr, ptr %pTree, align 8
  %pLeft26 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %32, i32 0, i32 2
  store ptr %call25, ptr %pLeft26, align 8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then20
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.end
  %33 = load ptr, ptr %pRowSet.addr, align 8
  %pEntry29 = getelementptr inbounds nuw %struct.RowSet, ptr %33, i32 0, i32 2
  store ptr null, ptr %pEntry29, align 8
  %34 = load ptr, ptr %pRowSet.addr, align 8
  %pLast = getelementptr inbounds nuw %struct.RowSet, ptr %34, i32 0, i32 3
  store ptr null, ptr %pLast, align 8
  %35 = load ptr, ptr %pRowSet.addr, align 8
  %rsFlags30 = getelementptr inbounds nuw %struct.RowSet, ptr %35, i32 0, i32 7
  %36 = load i16, ptr %rsFlags30, align 2
  %conv31 = zext i16 %36 to i32
  %or = or i32 %conv31, 1
  %conv32 = trunc i32 %or to i16
  store i16 %conv32, ptr %rsFlags30, align 2
  br label %if.end33

if.end33:                                         ; preds = %if.end28, %if.then
  %37 = load i32, ptr %iBatch.addr, align 4
  %38 = load ptr, ptr %pRowSet.addr, align 8
  %iBatch34 = getelementptr inbounds nuw %struct.RowSet, ptr %38, i32 0, i32 8
  store i32 %37, ptr %iBatch34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %entry
  %39 = load ptr, ptr %pRowSet.addr, align 8
  %pForest36 = getelementptr inbounds nuw %struct.RowSet, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %pForest36, align 8
  store ptr %40, ptr %pTree, align 8
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc56, %if.end35
  %41 = load ptr, ptr %pTree, align 8
  %tobool38 = icmp ne ptr %41, null
  br i1 %tobool38, label %for.body39, label %for.end58

for.body39:                                       ; preds = %for.cond37
  %42 = load ptr, ptr %pTree, align 8
  %pLeft40 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pLeft40, align 8
  store ptr %43, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end55, %for.body39
  %44 = load ptr, ptr %p, align 8
  %tobool41 = icmp ne ptr %44, null
  br i1 %tobool41, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %45 = load ptr, ptr %p, align 8
  %v42 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %45, i32 0, i32 0
  %46 = load i64, ptr %v42, align 8
  %47 = load i64, ptr %iRowid.addr, align 8
  %cmp43 = icmp slt i64 %46, %47
  br i1 %cmp43, label %if.then45, label %if.else47

if.then45:                                        ; preds = %while.body
  %48 = load ptr, ptr %p, align 8
  %pRight46 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %48, i32 0, i32 1
  %49 = load ptr, ptr %pRight46, align 8
  store ptr %49, ptr %p, align 8
  br label %if.end55

if.else47:                                        ; preds = %while.body
  %50 = load ptr, ptr %p, align 8
  %v48 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %50, i32 0, i32 0
  %51 = load i64, ptr %v48, align 8
  %52 = load i64, ptr %iRowid.addr, align 8
  %cmp49 = icmp sgt i64 %51, %52
  br i1 %cmp49, label %if.then51, label %if.else53

if.then51:                                        ; preds = %if.else47
  %53 = load ptr, ptr %p, align 8
  %pLeft52 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %53, i32 0, i32 2
  %54 = load ptr, ptr %pLeft52, align 8
  store ptr %54, ptr %p, align 8
  br label %if.end54

if.else53:                                        ; preds = %if.else47
  store i32 1, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.then51
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then45
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  br label %for.inc56

for.inc56:                                        ; preds = %while.end
  %55 = load ptr, ptr %pTree, align 8
  %pRight57 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %55, i32 0, i32 1
  %56 = load ptr, ptr %pRight57, align 8
  store ptr %56, ptr %pTree, align 8
  br label %for.cond37, !llvm.loop !9

for.end58:                                        ; preds = %for.cond37
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end58, %if.else53
  %57 = load i32, ptr %retval, align 4
  ret i32 %57
}

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetEntryAlloc(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetEntrySort(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetEntryMerge(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetListToTree(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @rowSetTreeToList(ptr noundef, ptr noundef, ptr noundef) #0

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
