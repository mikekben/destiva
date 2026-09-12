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
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTrigger(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3UnlinkAndDeleteTrigger(ptr noundef %db, i32 noundef %iDb, ptr noundef %zName) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zName.addr = alloca ptr, align 8
  %pTrigger = alloca ptr, align 8
  %pHash = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pp = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zName, ptr %zName.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %aDb, align 8
  %2 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %1, i64 %idxprom
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %3 = load ptr, ptr %pSchema, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %3, i32 0, i32 4
  store ptr %trigHash, ptr %pHash, align 8
  %4 = load ptr, ptr %pHash, align 8
  %5 = load ptr, ptr %zName.addr, align 8
  %call = call ptr @sqlite3HashInsert(ptr noundef %4, ptr noundef %5, ptr noundef null)
  store ptr %call, ptr %pTrigger, align 8
  %6 = load ptr, ptr %pTrigger, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pTrigger, align 8
  %pSchema1 = getelementptr inbounds nuw %struct.Trigger, ptr %7, i32 0, i32 6
  %8 = load ptr, ptr %pSchema1, align 8
  %9 = load ptr, ptr %pTrigger, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %9, i32 0, i32 7
  %10 = load ptr, ptr %pTabSchema, align 8
  %cmp = icmp eq ptr %8, %10
  br i1 %cmp, label %if.then2, label %if.end9

if.then2:                                         ; preds = %if.then
  %11 = load ptr, ptr %pTrigger, align 8
  %call3 = call ptr @tableOfTrigger(ptr noundef %11)
  store ptr %call3, ptr %pTab, align 8
  %12 = load ptr, ptr %pTab, align 8
  %tobool4 = icmp ne ptr %12, null
  br i1 %tobool4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then2
  %13 = load ptr, ptr %pTab, align 8
  %pTrigger6 = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 19
  store ptr %pTrigger6, ptr %pp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then5
  %14 = load ptr, ptr %pp, align 8
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %pTrigger, align 8
  %cmp7 = icmp ne ptr %15, %16
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load ptr, ptr %pp, align 8
  %18 = load ptr, ptr %17, align 8
  %pNext = getelementptr inbounds nuw %struct.Trigger, ptr %18, i32 0, i32 9
  store ptr %pNext, ptr %pp, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %pp, align 8
  %20 = load ptr, ptr %19, align 8
  %pNext8 = getelementptr inbounds nuw %struct.Trigger, ptr %20, i32 0, i32 9
  %21 = load ptr, ptr %pNext8, align 8
  %22 = load ptr, ptr %pp, align 8
  store ptr %21, ptr %22, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load ptr, ptr %pTrigger, align 8
  call void @sqlite3DeleteTrigger(ptr noundef %23, ptr noundef %24)
  %25 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 6
  %26 = load i32, ptr %mDbFlags, align 4
  %or = or i32 %26, 1
  store i32 %or, ptr %mDbFlags, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @tableOfTrigger(ptr noundef) #0

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
