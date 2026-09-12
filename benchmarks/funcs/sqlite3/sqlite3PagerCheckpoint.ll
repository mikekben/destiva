; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pager = type { ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i32, i32, [16 x i8], i32, i64, ptr, i16, i16, i32, i32, i32, i32, i64, ptr, ptr, ptr, ptr, [4 x i32], ptr, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3WalCheckpoint(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3PagerCheckpoint(ptr noundef %pPager, ptr noundef %db, i32 noundef %eMode, ptr noundef %pnLog, ptr noundef %pnCkpt) #0 {
entry:
  %pPager.addr = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %pnLog.addr = alloca ptr, align 8
  %pnCkpt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pPager, ptr %pPager.addr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store ptr %pnLog, ptr %pnLog.addr, align 8
  store ptr %pnCkpt, ptr %pnCkpt.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pPager.addr, align 8
  %pWal = getelementptr inbounds nuw %struct.Pager, ptr %0, i32 0, i32 59
  %1 = load ptr, ptr %pWal, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pPager.addr, align 8
  %pWal1 = getelementptr inbounds nuw %struct.Pager, ptr %2, i32 0, i32 59
  %3 = load ptr, ptr %pWal1, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load i32, ptr %eMode.addr, align 4
  %6 = load i32, ptr %eMode.addr, align 4
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load ptr, ptr %pPager.addr, align 8
  %xBusyHandler = getelementptr inbounds nuw %struct.Pager, ptr %7, i32 0, i32 52
  %8 = load ptr, ptr %xBusyHandler, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ null, %cond.true ], [ %8, %cond.false ]
  %9 = load ptr, ptr %pPager.addr, align 8
  %pBusyHandlerArg = getelementptr inbounds nuw %struct.Pager, ptr %9, i32 0, i32 53
  %10 = load ptr, ptr %pBusyHandlerArg, align 8
  %11 = load ptr, ptr %pPager.addr, align 8
  %walSyncFlags = getelementptr inbounds nuw %struct.Pager, ptr %11, i32 0, i32 8
  %12 = load i8, ptr %walSyncFlags, align 1
  %conv = zext i8 %12 to i32
  %13 = load ptr, ptr %pPager.addr, align 8
  %pageSize = getelementptr inbounds nuw %struct.Pager, ptr %13, i32 0, i32 47
  %14 = load i32, ptr %pageSize, align 4
  %15 = load ptr, ptr %pPager.addr, align 8
  %pTmpSpace = getelementptr inbounds nuw %struct.Pager, ptr %15, i32 0, i32 57
  %16 = load ptr, ptr %pTmpSpace, align 8
  %17 = load ptr, ptr %pnLog.addr, align 8
  %18 = load ptr, ptr %pnCkpt.addr, align 8
  %call = call i32 @sqlite3WalCheckpoint(ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %cond, ptr noundef %10, i32 noundef %conv, i32 noundef %14, ptr noundef %16, ptr noundef %17, ptr noundef %18)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %entry
  %19 = load i32, ptr %rc, align 4
  ret i32 %19
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
