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
%struct.VTable = type { ptr, ptr, ptr, i32, i8, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExpirePreparedStatements(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlock(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3VtabUnlockList(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %pDisconnect = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 71
  %1 = load ptr, ptr %pDisconnect, align 8
  store ptr %1, ptr %p, align 8
  %2 = load ptr, ptr %db.addr, align 8
  %pDisconnect1 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 71
  store ptr null, ptr %pDisconnect1, align 8
  %3 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %4, i32 noundef 0)
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %5 = load ptr, ptr %p, align 8
  %pNext2 = getelementptr inbounds nuw %struct.VTable, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %pNext2, align 8
  store ptr %6, ptr %pNext, align 8
  %7 = load ptr, ptr %p, align 8
  call void @sqlite3VtabUnlock(ptr noundef %7)
  %8 = load ptr, ptr %pNext, align 8
  store ptr %8, ptr %p, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load ptr, ptr %p, align 8
  %tobool3 = icmp ne ptr %9, null
  br i1 %tobool3, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
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
