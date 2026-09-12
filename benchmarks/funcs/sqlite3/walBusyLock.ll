; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @walLockExclusive(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @walBusyLock(ptr noundef %pWal, ptr noundef %xBusy, ptr noundef %pBusyArg, i32 noundef %lockIdx, i32 noundef %n) #0 {
entry:
  %pWal.addr = alloca ptr, align 8
  %xBusy.addr = alloca ptr, align 8
  %pBusyArg.addr = alloca ptr, align 8
  %lockIdx.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pWal, ptr %pWal.addr, align 8
  store ptr %xBusy, ptr %xBusy.addr, align 8
  store ptr %pBusyArg, ptr %pBusyArg.addr, align 8
  store i32 %lockIdx, ptr %lockIdx.addr, align 4
  store i32 %n, ptr %n.addr, align 4
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  %0 = load ptr, ptr %pWal.addr, align 8
  %1 = load i32, ptr %lockIdx.addr, align 4
  %2 = load i32, ptr %n.addr, align 4
  %call = call i32 @walLockExclusive(ptr noundef %0, i32 noundef %1, i32 noundef %2)
  store i32 %call, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %3 = load ptr, ptr %xBusy.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %do.cond
  %4 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %4, 5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %5 = load ptr, ptr %xBusy.addr, align 8
  %6 = load ptr, ptr %pBusyArg.addr, align 8
  %call1 = call i32 %5(ptr noundef %6)
  %tobool2 = icmp ne i32 %call1, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %do.cond
  %7 = phi i1 [ false, %land.lhs.true ], [ false, %do.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %land.end
  %8 = load i32, ptr %rc, align 4
  ret i32 %8
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
