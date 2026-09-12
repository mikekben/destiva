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
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3UnlinkAndDeleteIndex(ptr noundef %db, i32 noundef %iDb, ptr noundef %zIdxName) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zIdxName.addr = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %pHash = alloca ptr, align 8
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zIdxName, ptr %zIdxName.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %aDb, align 8
  %2 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %1, i64 %idxprom
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %3 = load ptr, ptr %pSchema, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %3, i32 0, i32 3
  store ptr %idxHash, ptr %pHash, align 8
  %4 = load ptr, ptr %pHash, align 8
  %5 = load ptr, ptr %zIdxName.addr, align 8
  %call = call ptr @sqlite3HashInsert(ptr noundef %4, ptr noundef %5, ptr noundef null)
  store ptr %call, ptr %pIndex, align 8
  %6 = load ptr, ptr %pIndex, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %if.then, label %if.end18

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %pIndex, align 8
  %pTable = getelementptr inbounds nuw %struct.Index, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pTable, align 8
  %pIndex1 = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pIndex1, align 8
  %10 = load ptr, ptr %pIndex, align 8
  %cmp = icmp eq ptr %9, %10
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %11 = load ptr, ptr %pIndex, align 8
  %pNext = getelementptr inbounds nuw %struct.Index, ptr %11, i32 0, i32 5
  %12 = load ptr, ptr %pNext, align 8
  %13 = load ptr, ptr %pIndex, align 8
  %pTable3 = getelementptr inbounds nuw %struct.Index, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pTable3, align 8
  %pIndex4 = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 2
  store ptr %12, ptr %pIndex4, align 8
  br label %if.end17

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %pIndex, align 8
  %pTable5 = getelementptr inbounds nuw %struct.Index, ptr %15, i32 0, i32 3
  %16 = load ptr, ptr %pTable5, align 8
  %pIndex6 = getelementptr inbounds nuw %struct.Table, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pIndex6, align 8
  store ptr %17, ptr %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %18 = load ptr, ptr %p, align 8
  %tobool7 = icmp ne ptr %18, null
  br i1 %tobool7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load ptr, ptr %p, align 8
  %pNext8 = getelementptr inbounds nuw %struct.Index, ptr %19, i32 0, i32 5
  %20 = load ptr, ptr %pNext8, align 8
  %21 = load ptr, ptr %pIndex, align 8
  %cmp9 = icmp ne ptr %20, %21
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp9, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load ptr, ptr %p, align 8
  %pNext10 = getelementptr inbounds nuw %struct.Index, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %pNext10, align 8
  store ptr %24, ptr %p, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %25 = load ptr, ptr %p, align 8
  %tobool11 = icmp ne ptr %25, null
  br i1 %tobool11, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.end
  %26 = load ptr, ptr %p, align 8
  %pNext12 = getelementptr inbounds nuw %struct.Index, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %pNext12, align 8
  %28 = load ptr, ptr %pIndex, align 8
  %cmp13 = icmp eq ptr %27, %28
  br i1 %cmp13, label %if.then14, label %if.end

if.then14:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %pIndex, align 8
  %pNext15 = getelementptr inbounds nuw %struct.Index, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %pNext15, align 8
  %31 = load ptr, ptr %p, align 8
  %pNext16 = getelementptr inbounds nuw %struct.Index, ptr %31, i32 0, i32 5
  store ptr %30, ptr %pNext16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then14, %land.lhs.true, %while.end
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then2
  %32 = load ptr, ptr %db.addr, align 8
  %33 = load ptr, ptr %pIndex, align 8
  call void @sqlite3FreeIndex(ptr noundef %32, ptr noundef %33)
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %entry
  %34 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %34, i32 0, i32 6
  %35 = load i32, ptr %mDbFlags, align 4
  %or = or i32 %35, 1
  store i32 %or, ptr %mDbFlags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FreeIndex(ptr noundef, ptr noundef) #0

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
