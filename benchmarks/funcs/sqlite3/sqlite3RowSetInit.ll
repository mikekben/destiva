; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSet = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3DbMallocSize(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocRawNN(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3RowSetInit(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %N = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %call = call ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef 56)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %p, align 8
  %call1 = call i32 @sqlite3DbMallocSize(ptr noundef %2, ptr noundef %3)
  store i32 %call1, ptr %N, align 4
  %4 = load ptr, ptr %p, align 8
  %pChunk = getelementptr inbounds nuw %struct.RowSet, ptr %4, i32 0, i32 0
  store ptr null, ptr %pChunk, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %6 = load ptr, ptr %p, align 8
  %db2 = getelementptr inbounds nuw %struct.RowSet, ptr %6, i32 0, i32 1
  store ptr %5, ptr %db2, align 8
  %7 = load ptr, ptr %p, align 8
  %pEntry = getelementptr inbounds nuw %struct.RowSet, ptr %7, i32 0, i32 2
  store ptr null, ptr %pEntry, align 8
  %8 = load ptr, ptr %p, align 8
  %pLast = getelementptr inbounds nuw %struct.RowSet, ptr %8, i32 0, i32 3
  store ptr null, ptr %pLast, align 8
  %9 = load ptr, ptr %p, align 8
  %pForest = getelementptr inbounds nuw %struct.RowSet, ptr %9, i32 0, i32 5
  store ptr null, ptr %pForest, align 8
  %10 = load ptr, ptr %p, align 8
  %add.ptr = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load ptr, ptr %p, align 8
  %pFresh = getelementptr inbounds nuw %struct.RowSet, ptr %11, i32 0, i32 4
  store ptr %add.ptr, ptr %pFresh, align 8
  %12 = load i32, ptr %N, align 4
  %conv = sext i32 %12 to i64
  %sub = sub i64 %conv, 56
  %div = udiv i64 %sub, 24
  %conv3 = trunc i64 %div to i16
  %13 = load ptr, ptr %p, align 8
  %nFresh = getelementptr inbounds nuw %struct.RowSet, ptr %13, i32 0, i32 6
  store i16 %conv3, ptr %nFresh, align 8
  %14 = load ptr, ptr %p, align 8
  %rsFlags = getelementptr inbounds nuw %struct.RowSet, ptr %14, i32 0, i32 7
  store i16 1, ptr %rsFlags, align 2
  %15 = load ptr, ptr %p, align 8
  %iBatch = getelementptr inbounds nuw %struct.RowSet, ptr %15, i32 0, i32 8
  store i32 0, ptr %iBatch, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %16 = load ptr, ptr %p, align 8
  ret ptr %16
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
