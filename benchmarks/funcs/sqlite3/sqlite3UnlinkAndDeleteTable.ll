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

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3UnlinkAndDeleteTable(ptr noundef %db, i32 noundef %iDb, ptr noundef %zTabName) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zTabName.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zTabName, ptr %zTabName.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %aDb, align 8
  %2 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %1, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  %3 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %zTabName.addr, align 8
  %call = call ptr @sqlite3HashInsert(ptr noundef %tblHash, ptr noundef %5, ptr noundef null)
  store ptr %call, ptr %p, align 8
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %p, align 8
  call void @sqlite3DeleteTable(ptr noundef %6, ptr noundef %7)
  %8 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %mDbFlags, align 4
  %or = or i32 %9, 1
  store i32 %or, ptr %mDbFlags, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashInsert(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
