; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Schema = type { i32, i32, %struct.Hash, %struct.Hash, %struct.Hash, %struct.Hash, ptr, i8, i8, i16, i32 }
%struct.HashElem = type { ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden void @reindexDatabases(ptr noundef %pParse, ptr noundef %zColl) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %zColl.addr = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %db = alloca ptr, align 8
  %k = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %zColl, ptr %zColl.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store i32 0, ptr %iDb, align 4
  %2 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  store ptr %3, ptr %pDb, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc4, %entry
  %4 = load i32, ptr %iDb, align 4
  %5 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 5
  %6 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end5

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %8, i32 0, i32 2
  %first = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 2
  %9 = load ptr, ptr %first, align 8
  store ptr %9, ptr %k, align 8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %10 = load ptr, ptr %k, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond2
  %11 = load ptr, ptr %k, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %data, align 8
  store ptr %12, ptr %pTab, align 8
  %13 = load ptr, ptr %pParse.addr, align 8
  %14 = load ptr, ptr %pTab, align 8
  %15 = load ptr, ptr %zColl.addr, align 8
  call void @reindexTable(ptr noundef %13, ptr noundef %14, ptr noundef %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %16 = load ptr, ptr %k, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %next, align 8
  store ptr %17, ptr %k, align 8
  br label %for.cond2, !llvm.loop !6

for.end:                                          ; preds = %for.cond2
  br label %for.inc4

for.inc4:                                         ; preds = %for.end
  %18 = load i32, ptr %iDb, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %iDb, align 4
  %19 = load ptr, ptr %pDb, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.Db, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %pDb, align 8
  br label %for.cond, !llvm.loop !8

for.end5:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @reindexTable(ptr noundef, ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
