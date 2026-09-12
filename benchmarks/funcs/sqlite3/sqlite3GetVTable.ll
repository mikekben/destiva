; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3GetVTable(ptr noundef %db, ptr noundef %pTab) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTab.addr = alloca ptr, align 8
  %pVtab = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTab, ptr %pTab.addr, align 8
  %0 = load ptr, ptr %pTab.addr, align 8
  %pVTable = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pVTable, align 8
  store ptr %1, ptr %pVtab, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pVtab, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pVtab, align 8
  %db1 = getelementptr inbounds nuw %struct.VTable, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db1, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %cmp = icmp ne ptr %4, %5
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %6 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %6, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load ptr, ptr %pVtab, align 8
  %pNext = getelementptr inbounds nuw %struct.VTable, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %pNext, align 8
  store ptr %8, ptr %pVtab, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %9 = load ptr, ptr %pVtab, align 8
  ret ptr %9
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
