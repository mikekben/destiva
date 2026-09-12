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
%struct.Index = type <{ ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i8, i16, [3 x i8], i64 }>

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RootPageMoved(ptr noundef %db, i32 noundef %iDb, i32 noundef %iFrom, i32 noundef %iTo) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %iFrom.addr = alloca i32, align 4
  %iTo.addr = alloca i32, align 4
  %pElem = alloca ptr, align 8
  %pHash = alloca ptr, align 8
  %pDb = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store i32 %iFrom, ptr %iFrom.addr, align 4
  store i32 %iTo, ptr %iTo.addr, align 4
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
  store ptr %tblHash, ptr %pHash, align 8
  %5 = load ptr, ptr %pHash, align 8
  %first = getelementptr inbounds nuw %struct.Hash, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %first, align 8
  store ptr %6, ptr %pElem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load ptr, ptr %pElem, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %pElem, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %data, align 8
  store ptr %9, ptr %pTab, align 8
  %10 = load ptr, ptr %pTab, align 8
  %tnum = getelementptr inbounds nuw %struct.Table, ptr %10, i32 0, i32 7
  %11 = load i32, ptr %tnum, align 8
  %12 = load i32, ptr %iFrom.addr, align 4
  %cmp = icmp eq i32 %11, %12
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %13 = load i32, ptr %iTo.addr, align 4
  %14 = load ptr, ptr %pTab, align 8
  %tnum1 = getelementptr inbounds nuw %struct.Table, ptr %14, i32 0, i32 7
  store i32 %13, ptr %tnum1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load ptr, ptr %pElem, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %next, align 8
  store ptr %16, ptr %pElem, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %pDb, align 8
  %pSchema2 = getelementptr inbounds nuw %struct.Db, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pSchema2, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %18, i32 0, i32 3
  store ptr %idxHash, ptr %pHash, align 8
  %19 = load ptr, ptr %pHash, align 8
  %first3 = getelementptr inbounds nuw %struct.Hash, ptr %19, i32 0, i32 2
  %20 = load ptr, ptr %first3, align 8
  store ptr %20, ptr %pElem, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc13, %for.end
  %21 = load ptr, ptr %pElem, align 8
  %tobool5 = icmp ne ptr %21, null
  br i1 %tobool5, label %for.body6, label %for.end15

for.body6:                                        ; preds = %for.cond4
  %22 = load ptr, ptr %pElem, align 8
  %data7 = getelementptr inbounds nuw %struct.HashElem, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %data7, align 8
  store ptr %23, ptr %pIdx, align 8
  %24 = load ptr, ptr %pIdx, align 8
  %tnum8 = getelementptr inbounds nuw %struct.Index, ptr %24, i32 0, i32 11
  %25 = load i32, ptr %tnum8, align 8
  %26 = load i32, ptr %iFrom.addr, align 4
  %cmp9 = icmp eq i32 %25, %26
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body6
  %27 = load i32, ptr %iTo.addr, align 4
  %28 = load ptr, ptr %pIdx, align 8
  %tnum11 = getelementptr inbounds nuw %struct.Index, ptr %28, i32 0, i32 11
  store i32 %27, ptr %tnum11, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body6
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %29 = load ptr, ptr %pElem, align 8
  %next14 = getelementptr inbounds nuw %struct.HashElem, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %next14, align 8
  store ptr %30, ptr %pElem, align 8
  br label %for.cond4, !llvm.loop !8

for.end15:                                        ; preds = %for.cond4
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
!8 = distinct !{!8, !7}
