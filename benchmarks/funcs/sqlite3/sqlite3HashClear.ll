; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash = type { i32, i32, ptr, ptr }
%struct.HashElem = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3HashClear(ptr noundef %pH) #0 {
entry:
  %pH.addr = alloca ptr, align 8
  %elem = alloca ptr, align 8
  %next_elem = alloca ptr, align 8
  store ptr %pH, ptr %pH.addr, align 8
  %0 = load ptr, ptr %pH.addr, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %first, align 8
  store ptr %1, ptr %elem, align 8
  %2 = load ptr, ptr %pH.addr, align 8
  %first1 = getelementptr inbounds nuw %struct.Hash, ptr %2, i32 0, i32 2
  store ptr null, ptr %first1, align 8
  %3 = load ptr, ptr %pH.addr, align 8
  %ht = getelementptr inbounds nuw %struct.Hash, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %ht, align 8
  call void @sqlite3_free(ptr noundef %4)
  %5 = load ptr, ptr %pH.addr, align 8
  %ht2 = getelementptr inbounds nuw %struct.Hash, ptr %5, i32 0, i32 3
  store ptr null, ptr %ht2, align 8
  %6 = load ptr, ptr %pH.addr, align 8
  %htsize = getelementptr inbounds nuw %struct.Hash, ptr %6, i32 0, i32 0
  store i32 0, ptr %htsize, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %7 = load ptr, ptr %elem, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %elem, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %next, align 8
  store ptr %9, ptr %next_elem, align 8
  %10 = load ptr, ptr %elem, align 8
  call void @sqlite3_free(ptr noundef %10)
  %11 = load ptr, ptr %next_elem, align 8
  store ptr %11, ptr %elem, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %12 = load ptr, ptr %pH.addr, align 8
  %count = getelementptr inbounds nuw %struct.Hash, ptr %12, i32 0, i32 1
  store i32 0, ptr %count, align 4
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
