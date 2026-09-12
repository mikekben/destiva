; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_backup = type { ptr, ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @isFatalError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @backupOnePage(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @backupUpdate(ptr noundef %p, i32 noundef %iPage, ptr noundef %aData) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %iPage.addr = alloca i32, align 4
  %aData.addr = alloca ptr, align 8
  %rc1 = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  store i32 %iPage, ptr %iPage.addr, align 4
  store ptr %aData, ptr %aData.addr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load ptr, ptr %p.addr, align 8
  %rc = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %rc, align 8
  %call = call i32 @isFatalError(i32 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end8, label %land.lhs.true

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %iPage.addr, align 4
  %3 = load ptr, ptr %p.addr, align 8
  %iNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %3, i32 0, i32 4
  %4 = load i32, ptr %iNext, align 8
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %p.addr, align 8
  %pDestDb = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pDestDb, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %7)
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load i32, ptr %iPage.addr, align 4
  %10 = load ptr, ptr %aData.addr, align 8
  %call2 = call i32 @backupOnePage(ptr noundef %8, i32 noundef %9, ptr noundef %10, i32 noundef 1)
  store i32 %call2, ptr %rc1, align 4
  %11 = load ptr, ptr %p.addr, align 8
  %pDestDb3 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %pDestDb3, align 8
  %mutex4 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %mutex4, align 8
  call void @sqlite3_mutex_leave(ptr noundef %13)
  %14 = load i32, ptr %rc1, align 4
  %cmp5 = icmp ne i32 %14, 0
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %15 = load i32, ptr %rc1, align 4
  %16 = load ptr, ptr %p.addr, align 8
  %rc7 = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %16, i32 0, i32 7
  store i32 %15, ptr %rc7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end8
  %17 = load ptr, ptr %p.addr, align 8
  %pNext = getelementptr inbounds nuw %struct.sqlite3_backup, ptr %17, i32 0, i32 11
  %18 = load ptr, ptr %pNext, align 8
  store ptr %18, ptr %p.addr, align 8
  %cmp9 = icmp ne ptr %18, null
  br i1 %cmp9, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
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
