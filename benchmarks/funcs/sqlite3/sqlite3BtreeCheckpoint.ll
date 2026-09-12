; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Btree = type { ptr, ptr, i8, i8, i8, i8, i32, i32, i32, ptr, ptr, %struct.BtLock }
%struct.BtLock = type { ptr, i32, i8, ptr }
%struct.BtShared = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3BtreeCheckpoint(ptr noundef %p, i32 noundef %eMode, ptr noundef %pnLog, ptr noundef %pnCkpt) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %pnLog.addr = alloca ptr, align 8
  %pnCkpt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store ptr %pnLog, ptr %pnLog.addr, align 8
  store ptr %pnCkpt, ptr %pnCkpt.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %p.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %p.addr, align 8
  %pBt1 = getelementptr inbounds nuw %struct.Btree, ptr %1, i32 0, i32 1
  %2 = load ptr, ptr %pBt1, align 8
  store ptr %2, ptr %pBt, align 8
  %3 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeEnter(ptr noundef %3)
  %4 = load ptr, ptr %pBt, align 8
  %inTransaction = getelementptr inbounds nuw %struct.BtShared, ptr %4, i32 0, i32 8
  %5 = load i8, ptr %inTransaction, align 4
  %conv = zext i8 %5 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  store i32 6, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %pBt, align 8
  %pPager = getelementptr inbounds nuw %struct.BtShared, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pPager, align 8
  %8 = load ptr, ptr %p.addr, align 8
  %db = getelementptr inbounds nuw %struct.Btree, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db, align 8
  %10 = load i32, ptr %eMode.addr, align 4
  %11 = load ptr, ptr %pnLog.addr, align 8
  %12 = load ptr, ptr %pnCkpt.addr, align 8
  %call = call i32 @sqlite3PagerCheckpoint(ptr noundef %7, ptr noundef %9, i32 noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  %13 = load ptr, ptr %p.addr, align 8
  call void @sqlite3BtreeLeave(ptr noundef %13)
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %14 = load i32, ptr %rc, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerCheckpoint(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
