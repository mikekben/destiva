; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FreeIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExprListDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @deleteTable(ptr noundef %db, ptr noundef %pTable) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %pTable.addr = alloca ptr, align 8
  %pIndex = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %zName = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %pTable, ptr %pTable.addr, align 8
  %0 = load ptr, ptr %pTable.addr, align 8
  %pIndex1 = getelementptr inbounds nuw %struct.Table, ptr %0, i32 0, i32 2
  %1 = load ptr, ptr %pIndex1, align 8
  store ptr %1, ptr %pIndex, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load ptr, ptr %pIndex, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %pIndex, align 8
  %pNext2 = getelementptr inbounds nuw %struct.Index, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pNext2, align 8
  store ptr %4, ptr %pNext, align 8
  %5 = load ptr, ptr %db.addr, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %6 = load ptr, ptr %db.addr, align 8
  %pnBytesFreed = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 82
  %7 = load ptr, ptr %pnBytesFreed, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %8 = load ptr, ptr %pTable.addr, align 8
  %nModuleArg = getelementptr inbounds nuw %struct.Table, ptr %8, i32 0, i32 16
  %9 = load i32, ptr %nModuleArg, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load ptr, ptr %pIndex, align 8
  %zName5 = getelementptr inbounds nuw %struct.Index, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zName5, align 8
  store ptr %11, ptr %zName, align 8
  %12 = load ptr, ptr %pIndex, align 8
  %pSchema = getelementptr inbounds nuw %struct.Index, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %pSchema, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %zName, align 8
  %call = call ptr @sqlite3HashInsert(ptr noundef %idxHash, ptr noundef %14, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %pIndex, align 8
  call void @sqlite3FreeIndex(ptr noundef %15, ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load ptr, ptr %pNext, align 8
  store ptr %17, ptr %pIndex, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load ptr, ptr %db.addr, align 8
  %19 = load ptr, ptr %pTable.addr, align 8
  call void @sqlite3FkDelete(ptr noundef %18, ptr noundef %19)
  %20 = load ptr, ptr %db.addr, align 8
  %21 = load ptr, ptr %pTable.addr, align 8
  call void @sqlite3DeleteColumnNames(ptr noundef %20, ptr noundef %21)
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load ptr, ptr %pTable.addr, align 8
  %zName6 = getelementptr inbounds nuw %struct.Table, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %zName6, align 8
  call void @sqlite3DbFree(ptr noundef %22, ptr noundef %24)
  %25 = load ptr, ptr %db.addr, align 8
  %26 = load ptr, ptr %pTable.addr, align 8
  %zColAff = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 5
  %27 = load ptr, ptr %zColAff, align 8
  call void @sqlite3DbFree(ptr noundef %25, ptr noundef %27)
  %28 = load ptr, ptr %db.addr, align 8
  %29 = load ptr, ptr %pTable.addr, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %pSelect, align 8
  call void @sqlite3SelectDelete(ptr noundef %28, ptr noundef %30)
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %pTable.addr, align 8
  %pCheck = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %pCheck, align 8
  call void @sqlite3ExprListDelete(ptr noundef %31, ptr noundef %33)
  %34 = load ptr, ptr %db.addr, align 8
  %35 = load ptr, ptr %pTable.addr, align 8
  call void @sqlite3VtabClear(ptr noundef %34, ptr noundef %35)
  %36 = load ptr, ptr %db.addr, align 8
  %37 = load ptr, ptr %pTable.addr, align 8
  call void @sqlite3DbFree(ptr noundef %36, ptr noundef %37)
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3FkDelete(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabClear(ptr noundef, ptr noundef) #0

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
