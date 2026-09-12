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
declare hidden i32 @sqlite3FindDbName(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3DbNameToBtree(ptr noundef %db, ptr noundef %zDbName) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zDbName.addr = alloca ptr, align 8
  %iDb = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDbName, ptr %zDbName.addr, align 8
  %0 = load ptr, ptr %zDbName.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %2 = load ptr, ptr %zDbName.addr, align 8
  %call = call i32 @sqlite3FindDbName(ptr noundef %1, ptr noundef %2)
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, ptr %iDb, align 4
  %3 = load i32, ptr %iDb, align 4
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %cond.true1, label %cond.false2

cond.true1:                                       ; preds = %cond.end
  br label %cond.end3

cond.false2:                                      ; preds = %cond.end
  %4 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %aDb, align 8
  %6 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %5, i64 %idxprom
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %7 = load ptr, ptr %pBt, align 8
  br label %cond.end3

cond.end3:                                        ; preds = %cond.false2, %cond.true1
  %cond4 = phi ptr [ null, %cond.true1 ], [ %7, %cond.false2 ]
  ret ptr %cond4
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
