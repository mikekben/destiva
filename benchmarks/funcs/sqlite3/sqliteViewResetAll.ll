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
%struct.HashElem = type { ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteColumnNames(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqliteViewResetAll(ptr noundef %db, i32 noundef %idx) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %idx.addr = alloca i32, align 4
  %i = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %idx, ptr %idx.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %aDb, align 8
  %2 = load i32, ptr %idx.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %1, i64 %idxprom
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %3 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %3, i32 0, i32 9
  %4 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %4 to i32
  %and = and i32 %conv, 2
  %cmp = icmp eq i32 %and, 2
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %db.addr, align 8
  %aDb2 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %aDb2, align 8
  %7 = load i32, ptr %idx.addr, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds %struct.Db, ptr %6, i64 %idxprom3
  %pSchema5 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx4, i32 0, i32 4
  %8 = load ptr, ptr %pSchema5, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %8, i32 0, i32 2
  %first = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 2
  %9 = load ptr, ptr %first, align 8
  store ptr %9, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load ptr, ptr %i, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %i, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %data, align 8
  store ptr %12, ptr %pTab, align 8
  %13 = load ptr, ptr %pTab, align 8
  %pSelect = getelementptr inbounds nuw %struct.Table, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pSelect, align 8
  %tobool6 = icmp ne ptr %14, null
  br i1 %tobool6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %for.body
  %15 = load ptr, ptr %db.addr, align 8
  %16 = load ptr, ptr %pTab, align 8
  call void @sqlite3DeleteColumnNames(ptr noundef %15, ptr noundef %16)
  %17 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %17, i32 0, i32 1
  store ptr null, ptr %aCol, align 8
  %18 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %18, i32 0, i32 11
  store i16 0, ptr %nCol, align 2
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %19 = load ptr, ptr %i, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next, align 8
  store ptr %20, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %db.addr, align 8
  %aDb9 = getelementptr inbounds nuw %struct.sqlite3, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %aDb9, align 8
  %23 = load i32, ptr %idx.addr, align 4
  %idxprom10 = sext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds %struct.Db, ptr %22, i64 %idxprom10
  %pSchema12 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx11, i32 0, i32 4
  %24 = load ptr, ptr %pSchema12, align 8
  %schemaFlags13 = getelementptr inbounds nuw %struct.Schema, ptr %24, i32 0, i32 9
  %25 = load i16, ptr %schemaFlags13, align 2
  %conv14 = zext i16 %25 to i32
  %and15 = and i32 %conv14, -3
  %conv16 = trunc i32 %and15 to i16
  store i16 %conv16, ptr %schemaFlags13, align 2
  br label %return

return:                                           ; preds = %for.end, %if.then
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
