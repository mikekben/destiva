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
define dso_local void @sqlite3_progress_handler(ptr noundef %db, i32 noundef %nOps, ptr noundef %xProgress, ptr noundef %pArg) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %nOps.addr = alloca i32, align 4
  %xProgress.addr = alloca ptr, align 8
  %pArg.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %nOps, ptr %nOps.addr, align 4
  store ptr %xProgress, ptr %xProgress.addr, align 8
  store ptr %pArg, ptr %pArg.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load i32, ptr %nOps.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %xProgress.addr, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %xProgress1 = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 64
  store ptr %3, ptr %xProgress1, align 8
  %5 = load i32, ptr %nOps.addr, align 4
  %6 = load ptr, ptr %db.addr, align 8
  %nProgressOps = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 66
  store i32 %5, ptr %nProgressOps, align 8
  %7 = load ptr, ptr %pArg.addr, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %pProgressArg = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 65
  store ptr %7, ptr %pProgressArg, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load ptr, ptr %db.addr, align 8
  %xProgress2 = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 64
  store ptr null, ptr %xProgress2, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %nProgressOps3 = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 66
  store i32 0, ptr %nProgressOps3, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %pProgressArg4 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 65
  store ptr null, ptr %pProgressArg4, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load ptr, ptr %db.addr, align 8
  %mutex5 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 3
  %13 = load ptr, ptr %mutex5, align 8
  call void @sqlite3_mutex_leave(ptr noundef %13)
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
