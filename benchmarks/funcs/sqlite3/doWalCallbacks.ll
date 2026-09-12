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
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeave(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @doWalCallbacks(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %nEntry = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %aDb, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %4, i64 %idxprom
  %pBt1 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %6 = load ptr, ptr %pBt1, align 8
  store ptr %6, ptr %pBt, align 8
  %7 = load ptr, ptr %pBt, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %pBt, align 8
  call void @sqlite3BtreeEnter(ptr noundef %8)
  %9 = load ptr, ptr %pBt, align 8
  %call = call ptr @sqlite3BtreePager(ptr noundef %9)
  %call2 = call i32 @sqlite3PagerWalCallback(ptr noundef %call)
  store i32 %call2, ptr %nEntry, align 4
  %10 = load ptr, ptr %pBt, align 8
  call void @sqlite3BtreeLeave(ptr noundef %10)
  %11 = load i32, ptr %nEntry, align 4
  %cmp3 = icmp sgt i32 %11, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load ptr, ptr %db.addr, align 8
  %xWalCallback = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 54
  %13 = load ptr, ptr %xWalCallback, align 8
  %tobool4 = icmp ne ptr %13, null
  br i1 %tobool4, label %land.lhs.true5, label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %14 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %14, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %land.lhs.true5
  %15 = load ptr, ptr %db.addr, align 8
  %xWalCallback8 = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 54
  %16 = load ptr, ptr %xWalCallback8, align 8
  %17 = load ptr, ptr %db.addr, align 8
  %pWalArg = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 55
  %18 = load ptr, ptr %pWalArg, align 8
  %19 = load ptr, ptr %db.addr, align 8
  %20 = load ptr, ptr %db.addr, align 8
  %aDb9 = getelementptr inbounds nuw %struct.sqlite3, ptr %20, i32 0, i32 4
  %21 = load ptr, ptr %aDb9, align 8
  %22 = load i32, ptr %i, align 4
  %idxprom10 = sext i32 %22 to i64
  %arrayidx11 = getelementptr inbounds %struct.Db, ptr %21, i64 %idxprom10
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx11, i32 0, i32 0
  %23 = load ptr, ptr %zDbSName, align 8
  %24 = load i32, ptr %nEntry, align 4
  %call12 = call i32 %16(ptr noundef %18, ptr noundef %19, ptr noundef %23, i32 noundef %24)
  store i32 %call12, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true5, %land.lhs.true, %if.then
  br label %if.end13

if.end13:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %25 = load i32, ptr %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %26 = load i32, ptr %rc, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerWalCallback(ptr noundef) #0

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
