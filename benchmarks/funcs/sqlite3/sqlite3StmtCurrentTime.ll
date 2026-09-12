; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sqlite3_context = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, [1 x ptr] }
%struct.Vdbe = type <{ ptr, ptr, ptr, ptr, i16, [2 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i16, i8, i8, i8, i16, i8, i32, i32, [7 x i32], [4 x i8], ptr, ptr, ptr, ptr, i32, i32, ptr, ptr }>
%struct.sqlite3_value = type { %union.MemValue, i16, i8, i8, i32, ptr, ptr, i32, i32, ptr, ptr }
%union.MemValue = type { double }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3OsCurrentTimeInt64(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i64 @sqlite3StmtCurrentTime(ptr noundef %p) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %piTime = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pVdbe = getelementptr inbounds nuw %struct.sqlite3_context, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pVdbe, align 8
  %iCurrentTime = getelementptr inbounds nuw %struct.Vdbe, ptr %1, i32 0, i32 15
  store ptr %iCurrentTime, ptr %piTime, align 8
  %2 = load ptr, ptr %piTime, align 8
  %3 = load i64, ptr %2, align 8
  %cmp = icmp eq i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %p.addr, align 8
  %pOut = getelementptr inbounds nuw %struct.sqlite3_context, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pOut, align 8
  %db = getelementptr inbounds nuw %struct.sqlite3_value, ptr %5, i32 0, i32 9
  %6 = load ptr, ptr %db, align 8
  %pVfs = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pVfs, align 8
  %8 = load ptr, ptr %piTime, align 8
  %call = call i32 @sqlite3OsCurrentTimeInt64(ptr noundef %7, ptr noundef %8)
  store i32 %call, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %10 = load ptr, ptr %piTime, align 8
  store i64 0, ptr %10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %11 = load ptr, ptr %piTime, align 8
  %12 = load i64, ptr %11, align 8
  ret i64 %12
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
