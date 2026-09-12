; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @vtabDisconnectAll(ptr noundef %db, ptr noundef %p) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %pRet = alloca ptr, align 8
  %pVTable = alloca ptr, align 8
  %db2 = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %p, ptr %p.addr, align 8
  store ptr null, ptr %pRet, align 8
  %0 = load ptr, ptr %p.addr, align 8
  %pVTable1 = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 18
  %1 = load ptr, ptr %pVTable1, align 8
  store ptr %1, ptr %pVTable, align 8
  %2 = load ptr, ptr %p.addr, align 8
  %pVTable2 = getelementptr inbounds nuw %struct.Table, ptr %2, i32 0, i32 18
  store ptr null, ptr %pVTable2, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %3 = load ptr, ptr %pVTable, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pVTable, align 8
  %db3 = getelementptr inbounds nuw %struct.VTable, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %db3, align 8
  store ptr %5, ptr %db2, align 8
  %6 = load ptr, ptr %pVTable, align 8
  %pNext4 = getelementptr inbounds nuw %struct.VTable, ptr %6, i32 0, i32 6
  %7 = load ptr, ptr %pNext4, align 8
  store ptr %7, ptr %pNext, align 8
  %8 = load ptr, ptr %db2, align 8
  %9 = load ptr, ptr %db.addr, align 8
  %cmp = icmp eq ptr %8, %9
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %10 = load ptr, ptr %pVTable, align 8
  store ptr %10, ptr %pRet, align 8
  %11 = load ptr, ptr %pRet, align 8
  %12 = load ptr, ptr %p.addr, align 8
  %pVTable5 = getelementptr inbounds nuw %struct.Table, ptr %12, i32 0, i32 18
  store ptr %11, ptr %pVTable5, align 8
  %13 = load ptr, ptr %pRet, align 8
  %pNext6 = getelementptr inbounds nuw %struct.VTable, ptr %13, i32 0, i32 6
  store ptr null, ptr %pNext6, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %14 = load ptr, ptr %db2, align 8
  %pDisconnect = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 71
  %15 = load ptr, ptr %pDisconnect, align 8
  %16 = load ptr, ptr %pVTable, align 8
  %pNext7 = getelementptr inbounds nuw %struct.VTable, ptr %16, i32 0, i32 6
  store ptr %15, ptr %pNext7, align 8
  %17 = load ptr, ptr %pVTable, align 8
  %18 = load ptr, ptr %db2, align 8
  %pDisconnect8 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 71
  store ptr %17, ptr %pDisconnect8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load ptr, ptr %pNext, align 8
  store ptr %19, ptr %pVTable, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %20 = load ptr, ptr %pRet, align 8
  ret ptr %20
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
