; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSet = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.RowSetChunk = type { ptr, [42 x %struct.RowSetEntry] }
%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @rowSetEntryAlloc(ptr noundef %p) #0 {
entry:
  %retval = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %nFresh = getelementptr inbounds nuw %struct.RowSet, ptr %0, i32 0, i32 6
  %1 = load i16, ptr %nFresh, align 8
  %conv = zext i16 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.RowSet, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %3, i64 noundef 1016)
  store ptr %call, ptr %pNew, align 8
  %4 = load ptr, ptr %pNew, align 8
  %cmp2 = icmp eq ptr %4, null
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load ptr, ptr %p.addr, align 8
  %pChunk = getelementptr inbounds nuw %struct.RowSet, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pChunk, align 8
  %7 = load ptr, ptr %pNew, align 8
  %pNextChunk = getelementptr inbounds nuw %struct.RowSetChunk, ptr %7, i32 0, i32 0
  store ptr %6, ptr %pNextChunk, align 8
  %8 = load ptr, ptr %pNew, align 8
  %9 = load ptr, ptr %p.addr, align 8
  %pChunk5 = getelementptr inbounds nuw %struct.RowSet, ptr %9, i32 0, i32 0
  store ptr %8, ptr %pChunk5, align 8
  %10 = load ptr, ptr %pNew, align 8
  %aEntry = getelementptr inbounds nuw %struct.RowSetChunk, ptr %10, i32 0, i32 1
  %arraydecay = getelementptr inbounds [42 x %struct.RowSetEntry], ptr %aEntry, i64 0, i64 0
  %11 = load ptr, ptr %p.addr, align 8
  %pFresh = getelementptr inbounds nuw %struct.RowSet, ptr %11, i32 0, i32 4
  store ptr %arraydecay, ptr %pFresh, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %nFresh6 = getelementptr inbounds nuw %struct.RowSet, ptr %12, i32 0, i32 6
  store i16 42, ptr %nFresh6, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %13 = load ptr, ptr %p.addr, align 8
  %nFresh8 = getelementptr inbounds nuw %struct.RowSet, ptr %13, i32 0, i32 6
  %14 = load i16, ptr %nFresh8, align 8
  %dec = add i16 %14, -1
  store i16 %dec, ptr %nFresh8, align 8
  %15 = load ptr, ptr %p.addr, align 8
  %pFresh9 = getelementptr inbounds nuw %struct.RowSet, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pFresh9, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.RowSetEntry, ptr %16, i32 1
  store ptr %incdec.ptr, ptr %pFresh9, align 8
  store ptr %16, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then4
  %17 = load ptr, ptr %retval, align 8
  ret ptr %17
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
