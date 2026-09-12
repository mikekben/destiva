; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RowSetEntry = type { i64, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @rowSetListToTree(ptr noundef %pList) #0 {
entry:
  %pList.addr = alloca ptr, align 8
  %iDepth = alloca i32, align 4
  %p = alloca ptr, align 8
  %pLeft = alloca ptr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  %0 = load ptr, ptr %pList.addr, align 8
  store ptr %0, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %pRight = getelementptr inbounds nuw %struct.RowSetEntry, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pRight, align 8
  store ptr %2, ptr %pList.addr, align 8
  %3 = load ptr, ptr %p, align 8
  %pRight1 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %3, i32 0, i32 1
  store ptr null, ptr %pRight1, align 8
  %4 = load ptr, ptr %p, align 8
  %pLeft2 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %4, i32 0, i32 2
  store ptr null, ptr %pLeft2, align 8
  store i32 1, ptr %iDepth, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %pList.addr, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %p, align 8
  store ptr %6, ptr %pLeft, align 8
  %7 = load ptr, ptr %pList.addr, align 8
  store ptr %7, ptr %p, align 8
  %8 = load ptr, ptr %p, align 8
  %pRight3 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %8, i32 0, i32 1
  %9 = load ptr, ptr %pRight3, align 8
  store ptr %9, ptr %pList.addr, align 8
  %10 = load ptr, ptr %pLeft, align 8
  %11 = load ptr, ptr %p, align 8
  %pLeft4 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %11, i32 0, i32 2
  store ptr %10, ptr %pLeft4, align 8
  %12 = load i32, ptr %iDepth, align 4
  %call = call ptr @rowSetNDeepTree(ptr noundef %pList.addr, i32 noundef %12)
  %13 = load ptr, ptr %p, align 8
  %pRight5 = getelementptr inbounds nuw %struct.RowSetEntry, ptr %13, i32 0, i32 1
  store ptr %call, ptr %pRight5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %iDepth, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %iDepth, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %15 = load ptr, ptr %p, align 8
  ret ptr %15
}

; Function Attrs: nounwind uwtable
declare hidden ptr @rowSetNDeepTree(ptr noundef, i32 noundef) #0

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
