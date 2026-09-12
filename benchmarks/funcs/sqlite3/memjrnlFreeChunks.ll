; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MemJournal = type { ptr, i32, i32, i32, ptr, %struct.FilePoint, %struct.FilePoint, i32, ptr, ptr }
%struct.FilePoint = type { i64, ptr }
%struct.FileChunk = type { ptr, [8 x i8] }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @memjrnlFreeChunks(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pIter = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.MemJournal, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pFirst, align 8
  store ptr %1, ptr %pIter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pIter, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pIter, align 8
  %pNext1 = getelementptr inbounds nuw %struct.FileChunk, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pNext1, align 8
  store ptr %4, ptr %pNext, align 8
  %5 = load ptr, ptr %pIter, align 8
  call void @sqlite3_free(ptr noundef %5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load ptr, ptr %pNext, align 8
  store ptr %6, ptr %pIter, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %7 = load ptr, ptr %p.addr, align 8
  %pFirst2 = getelementptr inbounds nuw %struct.MemJournal, ptr %7, i32 0, i32 4
  store ptr null, ptr %pFirst2, align 8
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
