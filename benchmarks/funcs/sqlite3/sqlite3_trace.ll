; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
define dso_local ptr @sqlite3_trace(ptr noundef %db, ptr noundef %xTrace, ptr noundef %pArg) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %xTrace.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %xTrace, ptr %xTrace.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %pTraceArg = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 44
  %3 = load ptr, ptr %pTraceArg, align 8
  store ptr %3, ptr %pOld, align 8
  %4 = load ptr, ptr %xTrace.addr, align 8
  %tobool = icmp ne ptr %4, null
  %5 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i32 64, i32 0
  %conv = trunc i32 %cond to i8
  %6 = load ptr, ptr %db.addr, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 26
  store i8 %conv, ptr %mTrace, align 8
  %7 = load ptr, ptr %xTrace.addr, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %xTrace1 = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 43
  store ptr %7, ptr %xTrace1, align 8
  %9 = load ptr, ptr %pArg.addr, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %pTraceArg2 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 44
  store ptr %9, ptr %pTraceArg2, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %mutex3 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %mutex3, align 8
  call void @sqlite3_mutex_leave(ptr noundef %12)
  %13 = load ptr, ptr %pOld, align 8
  ret ptr %13
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
