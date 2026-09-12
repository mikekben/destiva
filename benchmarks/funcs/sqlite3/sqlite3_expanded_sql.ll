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
declare dso_local ptr @sqlite3_sql(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_expanded_sql(ptr noundef %pStmt) #0 {
entry:
  %pStmt.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %pStmt, ptr %pStmt.addr, align 8
  store ptr null, ptr %z, align 8
  %0 = load ptr, ptr %pStmt.addr, align 8
  %call = call ptr @sqlite3_sql(ptr noundef %0)
  store ptr %call, ptr %zSql, align 8
  %1 = load ptr, ptr %zSql, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pStmt.addr, align 8
  store ptr %2, ptr %p, align 8
  %3 = load ptr, ptr %p, align 8
  %db = getelementptr inbounds nuw %struct.Vdbe, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %db, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %5)
  %6 = load ptr, ptr %p, align 8
  %7 = load ptr, ptr %zSql, align 8
  %call1 = call ptr @sqlite3VdbeExpandSql(ptr noundef %6, ptr noundef %7)
  store ptr %call1, ptr %z, align 8
  %8 = load ptr, ptr %p, align 8
  %db2 = getelementptr inbounds nuw %struct.Vdbe, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %db2, align 8
  %mutex3 = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %mutex3, align 8
  call void @sqlite3_mutex_leave(ptr noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %11 = load ptr, ptr %z, align 8
  ret ptr %11
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3VdbeExpandSql(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
