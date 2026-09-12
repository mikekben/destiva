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
%struct.Savepoint = type { ptr, i64, i64, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CloseSavepoints(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %db.addr, align 8
  %pSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 76
  %1 = load ptr, ptr %pSavepoint, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %db.addr, align 8
  %pSavepoint1 = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 76
  %3 = load ptr, ptr %pSavepoint1, align 8
  store ptr %3, ptr %pTmp, align 8
  %4 = load ptr, ptr %pTmp, align 8
  %pNext = getelementptr inbounds nuw %struct.Savepoint, ptr %4, i32 0, i32 3
  %5 = load ptr, ptr %pNext, align 8
  %6 = load ptr, ptr %db.addr, align 8
  %pSavepoint2 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 76
  store ptr %5, ptr %pSavepoint2, align 8
  %7 = load ptr, ptr %db.addr, align 8
  %8 = load ptr, ptr %pTmp, align 8
  call void @sqlite3DbFree(ptr noundef %7, ptr noundef %8)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %9 = load ptr, ptr %db.addr, align 8
  %nSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 78
  store i32 0, ptr %nSavepoint, align 4
  %10 = load ptr, ptr %db.addr, align 8
  %nStatement = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 79
  store i32 0, ptr %nStatement, align 8
  %11 = load ptr, ptr %db.addr, align 8
  %isTransactionSavepoint = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 25
  store i8 0, ptr %isTransactionSavepoint, align 1
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
