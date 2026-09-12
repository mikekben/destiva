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
declare hidden i32 @sqlite3BtreeSetPagerFlags(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @setAllPagerFlags(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 17
  %1 = load i8, ptr %autoCommit, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  store ptr %3, ptr %pDb, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 5
  %5 = load i32, ptr %nDb, align 8
  store i32 %5, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %6 = load i32, ptr %n, align 4
  %dec = add nsw i32 %6, -1
  store i32 %dec, ptr %n, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %pDb, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %7, i32 0, i32 1
  %8 = load ptr, ptr %pBt, align 8
  %tobool1 = icmp ne ptr %8, null
  br i1 %tobool1, label %if.then2, label %if.end

if.then2:                                         ; preds = %while.body
  %9 = load ptr, ptr %pDb, align 8
  %pBt3 = getelementptr inbounds nuw %struct.Db, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %pBt3, align 8
  %11 = load ptr, ptr %pDb, align 8
  %safety_level = getelementptr inbounds nuw %struct.Db, ptr %11, i32 0, i32 2
  %12 = load i8, ptr %safety_level, align 8
  %conv = zext i8 %12 to i64
  %13 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 7
  %14 = load i64, ptr %flags, align 8
  %and = and i64 %14, 56
  %or = or i64 %conv, %and
  %conv4 = trunc i64 %or to i32
  %call = call i32 @sqlite3BtreeSetPagerFlags(ptr noundef %10, i32 noundef %conv4)
  br label %if.end

if.end:                                           ; preds = %if.then2, %while.body
  %15 = load ptr, ptr %pDb, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Db, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %pDb, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  br label %if.end5

if.end5:                                          ; preds = %while.end, %entry
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
