; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSet = type { ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.RowSetChunk = type { ptr, [42 x %struct.RowSetEntry] }
%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RowSetClear(ptr noundef %pArg) #0 {
entry:
  %pArg.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pChunk = alloca ptr, align 8
  %pNextChunk = alloca ptr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %pArg.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %pChunk1 = getelementptr inbounds nuw %struct.RowSet, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pChunk1, align 8
  store ptr %2, ptr %pChunk, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %pChunk, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %pChunk, align 8
  %pNextChunk2 = getelementptr inbounds nuw %struct.RowSetChunk, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pNextChunk2, align 8
  store ptr %5, ptr %pNextChunk, align 8
  %6 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds nuw %struct.RowSet, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %db, align 8
  %8 = load ptr, ptr %pChunk, align 8
  call void @sqlite3DbFree(ptr noundef %7, ptr noundef %8)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load ptr, ptr %pNextChunk, align 8
  store ptr %9, ptr %pChunk, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %10 = load ptr, ptr %p, align 8
  %pChunk3 = getelementptr inbounds nuw %struct.RowSet, ptr %10, i32 0, i32 0
  store ptr null, ptr %pChunk3, align 8
  %11 = load ptr, ptr %p, align 8
  %nFresh = getelementptr inbounds nuw %struct.RowSet, ptr %11, i32 0, i32 6
  store i16 0, ptr %nFresh, align 8
  %12 = load ptr, ptr %p, align 8
  %pEntry = getelementptr inbounds nuw %struct.RowSet, ptr %12, i32 0, i32 2
  store ptr null, ptr %pEntry, align 8
  %13 = load ptr, ptr %p, align 8
  %pLast = getelementptr inbounds nuw %struct.RowSet, ptr %13, i32 0, i32 3
  store ptr null, ptr %pLast, align 8
  %14 = load ptr, ptr %p, align 8
  %pForest = getelementptr inbounds nuw %struct.RowSet, ptr %14, i32 0, i32 5
  store ptr null, ptr %pForest, align 8
  %15 = load ptr, ptr %p, align 8
  %rsFlags = getelementptr inbounds nuw %struct.RowSet, ptr %15, i32 0, i32 7
  store i16 1, ptr %rsFlags, align 2
  ret void
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
