; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
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
declare hidden void @sqlite3VdbeClearObject(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_stmt_status(ptr noundef %pStmt, i32 noundef %op, i32 noundef %resetFlag) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %op.addr = alloca i32, align 4
  %resetFlag.addr = alloca i32, align 4
  %pVdbe = alloca ptr, align 8
  %v = alloca i32, align 4
  %db = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store i32 %op, ptr %op.addr, align 4
  store i32 %resetFlag, ptr %resetFlag.addr, align 4
  %0 = load ptr, ptr %pStmt.addr, align 8
  store ptr %0, ptr %pVdbe, align 8
  %1 = load i32, ptr %op.addr, align 4
  %cmp = icmp eq i32 %1, 99
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pVdbe, align 8
  %db1 = getelementptr inbounds nuw %struct.Vdbe, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db1, align 8
  store ptr %3, ptr %db, align 8
  %4 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %5)
  store i32 0, ptr %v, align 4
  %6 = load ptr, ptr %db, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 82
  store ptr %v, ptr %pnBytesFreed, align 8
  %7 = load ptr, ptr %db, align 8
  %8 = load ptr, ptr %pVdbe, align 8
  call void @sqlite3VdbeClearObject(ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %db, align 8
  %10 = load ptr, ptr %pVdbe, align 8
  call void @sqlite3DbFree(ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %db, align 8
  %pnBytesFreed2 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 82
  store ptr null, ptr %pnBytesFreed2, align 8
  %12 = load ptr, ptr %db, align 8
  %mutex3 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %mutex3, align 8
  call void @sqlite3_mutex_leave(ptr noundef %13)
  br label %if.end8

if.else:                                          ; preds = %entry
  %14 = load ptr, ptr %pVdbe, align 8
  %aCounter = getelementptr inbounds nuw %struct.Vdbe, ptr %14, i32 0, i32 39
  %15 = load i32, ptr %op.addr, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [7 x i32], ptr %aCounter, i64 0, i64 %idxprom
  %16 = load i32, ptr %arrayidx, align 4
  store i32 %16, ptr %v, align 4
  %17 = load i32, ptr %resetFlag.addr, align 4
  %tobool = icmp ne i32 %17, 0
  br i1 %tobool, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %18 = load ptr, ptr %pVdbe, align 8
  %aCounter5 = getelementptr inbounds nuw %struct.Vdbe, ptr %18, i32 0, i32 39
  %19 = load i32, ptr %op.addr, align 4
  %idxprom6 = sext i32 %19 to i64
  %arrayidx7 = getelementptr inbounds [7 x i32], ptr %aCounter5, i64 0, i64 %idxprom6
  store i32 0, ptr %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  %20 = load i32, ptr %v, align 4
  ret i32 %20
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
