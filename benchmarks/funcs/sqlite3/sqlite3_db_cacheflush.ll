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
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3BtreePager(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_db_cacheflush(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %bSeenBusy = alloca i32, align 4
  %pBt = alloca ptr, align 8
  %pPager = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 0, ptr %rc, align 4
  store i32 0, ptr %bSeenBusy, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %2)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %nDb, align 8
  %cmp1 = icmp slt i32 %4, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %aDb, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %9, i64 %idxprom
  %pBt2 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %11 = load ptr, ptr %pBt2, align 8
  store ptr %11, ptr %pBt, align 8
  %12 = load ptr, ptr %pBt, align 8
  %tobool = icmp ne ptr %12, null
  br i1 %tobool, label %land.lhs.true, label %if.end8

land.lhs.true:                                    ; preds = %for.body
  %13 = load ptr, ptr %pBt, align 8
  %call = call i32 @sqlite3BtreeIsInTrans(ptr noundef %13)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.then, label %if.end8

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %pBt, align 8
  %call4 = call ptr @sqlite3BtreePager(ptr noundef %14)
  store ptr %call4, ptr %pPager, align 8
  %15 = load ptr, ptr %pPager, align 8
  %call5 = call i32 @sqlite3PagerFlush(ptr noundef %15)
  store i32 %call5, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %16, 5
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 1, ptr %bSeenBusy, align 4
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %land.end
  %18 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %18)
  %19 = load ptr, ptr %db.addr, align 8
  %mutex9 = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 3
  %20 = load ptr, ptr %mutex9, align 8
  call void @sqlite3_mutex_leave(ptr noundef %20)
  %21 = load i32, ptr %rc, align 4
  %cmp10 = icmp eq i32 %21, 0
  br i1 %cmp10, label %land.lhs.true11, label %cond.false

land.lhs.true11:                                  ; preds = %for.end
  %22 = load i32, ptr %bSeenBusy, align 4
  %tobool12 = icmp ne i32 %22, 0
  br i1 %tobool12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true11
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true11, %for.end
  %23 = load i32, ptr %rc, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %23, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3PagerFlush(ptr noundef) #0

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
