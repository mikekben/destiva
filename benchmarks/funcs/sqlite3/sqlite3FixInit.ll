; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.DbFixer = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }

; Function Attrs: nounwind uwtable
define hidden void @sqlite3FixInit(ptr noundef %pFix, ptr noundef %pParse, i32 noundef %iDb, ptr noundef %zType, ptr noundef %pName) #0 {
entry:
  %pFix.addr = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %zType.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  store ptr %pFix, ptr %pFix.addr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store ptr %zType, ptr %zType.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %3 = load ptr, ptr %pFix.addr, align 8
  %pParse2 = getelementptr inbounds nuw %struct.DbFixer, ptr %3, i32 0, i32 0
  store ptr %2, ptr %pParse2, align 8
  %4 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %aDb, align 8
  %6 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %5, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %7 = load ptr, ptr %zDbSName, align 8
  %8 = load ptr, ptr %pFix.addr, align 8
  %zDb = getelementptr inbounds nuw %struct.DbFixer, ptr %8, i32 0, i32 3
  store ptr %7, ptr %zDb, align 8
  %9 = load ptr, ptr %db, align 8
  %aDb3 = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %aDb3, align 8
  %11 = load i32, ptr %iDb.addr, align 4
  %idxprom4 = sext i32 %11 to i64
  %arrayidx5 = getelementptr inbounds %struct.Db, ptr %10, i64 %idxprom4
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx5, i32 0, i32 4
  %12 = load ptr, ptr %pSchema, align 8
  %13 = load ptr, ptr %pFix.addr, align 8
  %pSchema6 = getelementptr inbounds nuw %struct.DbFixer, ptr %13, i32 0, i32 1
  store ptr %12, ptr %pSchema6, align 8
  %14 = load ptr, ptr %zType.addr, align 8
  %15 = load ptr, ptr %pFix.addr, align 8
  %zType7 = getelementptr inbounds nuw %struct.DbFixer, ptr %15, i32 0, i32 4
  store ptr %14, ptr %zType7, align 8
  %16 = load ptr, ptr %pName.addr, align 8
  %17 = load ptr, ptr %pFix.addr, align 8
  %pName8 = getelementptr inbounds nuw %struct.DbFixer, ptr %17, i32 0, i32 5
  store ptr %16, ptr %pName8, align 8
  %18 = load i32, ptr %iDb.addr, align 4
  %cmp = icmp eq i32 %18, 1
  %conv = zext i1 %cmp to i32
  %19 = load ptr, ptr %pFix.addr, align 8
  %bVarOnly = getelementptr inbounds nuw %struct.DbFixer, ptr %19, i32 0, i32 2
  store i32 %conv, ptr %bVarOnly, align 8
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
