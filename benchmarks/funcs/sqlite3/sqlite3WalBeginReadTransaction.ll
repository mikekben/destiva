; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @walTryBeginRead(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3WalBeginReadTransaction(ptr noundef %pWal, ptr noundef %pChanged) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %pChanged.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cnt = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %pChanged, ptr %pChanged.addr, align 8
  store i32 0, ptr %cnt, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %pWal.addr, align 8
  %1 = load ptr, ptr %pChanged.addr, align 8
  %2 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %cnt, align 4
  %call = call i32 @walTryBeginRead(ptr noundef %0, ptr noundef %1, i32 noundef 0, i32 noundef %inc)
  store i32 %call, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, -1
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  %4 = load i32, ptr %rc, align 4
  ret i32 %4
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
