; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @attachBackupObject(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %pp = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pSrc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %0, i32 0, i32 6
  %1 = load ptr, ptr %pSrc, align 8
  %call = call ptr @sqlite3BtreePager(ptr noundef %1)
  %call1 = call ptr @sqlite3PagerBackupPtr(ptr noundef %call)
  store ptr %call1, ptr %pp, align 8
  %2 = load ptr, ptr %pp, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %4, i32 0, i32 11
  store ptr %3, ptr %pNext, align 8
  %5 = load ptr, ptr %p.addr, align 8
  %6 = load ptr, ptr %pp, align 8
  store ptr %5, ptr %6, align 8
  %7 = load ptr, ptr %p.addr, align 8
  %isAttached = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %7, i32 0, i32 10
  store i32 1, ptr %isAttached, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3PagerBackupPtr(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
