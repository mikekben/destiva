; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analysisInfo = type { ptr, ptr }
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

@.str.343 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.344 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3MPrintf(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindTable(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3AnalysisLoad(ptr noundef %db, i32 noundef %iDb) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %sInfo = alloca %struct.analysisInfo, align 8
  %i = alloca ptr, align 8
  %zSql = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pSchema = alloca ptr, align 8
  %pTab = alloca ptr, align 8
  %pIdx = alloca ptr, align 8
  %pIdx26 = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %aDb, align 8
  %2 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %1, i64 %idxprom
  %pSchema1 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %3 = load ptr, ptr %pSchema1, align 8
  store ptr %3, ptr %pSchema, align 8
  %4 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %4, i32 0, i32 2
  %first = getelementptr inbounds nuw %struct.Hash, ptr %tblHash, i32 0, i32 2
  %5 = load ptr, ptr %first, align 8
  store ptr %5, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load ptr, ptr %i, align 8
  %tobool = icmp ne ptr %6, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %i, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %data, align 8
  store ptr %8, ptr %pTab, align 8
  %9 = load ptr, ptr %pTab, align 8
  %tabFlags = getelementptr inbounds nuw %struct.Table, ptr %9, i32 0, i32 9
  %10 = load i32, ptr %tabFlags, align 8
  %and = and i32 %10, -17
  store i32 %and, ptr %tabFlags, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load ptr, ptr %i, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %11, i32 0, i32 0
  %12 = load ptr, ptr %next, align 8
  store ptr %12, ptr %i, align 8
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %pSchema, align 8
  %idxHash = getelementptr inbounds nuw %struct.Schema, ptr %13, i32 0, i32 3
  %first2 = getelementptr inbounds nuw %struct.Hash, ptr %idxHash, i32 0, i32 2
  %14 = load ptr, ptr %first2, align 8
  store ptr %14, ptr %i, align 8
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc7, %for.end
  %15 = load ptr, ptr %i, align 8
  %tobool4 = icmp ne ptr %15, null
  br i1 %tobool4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond3
  %16 = load ptr, ptr %i, align 8
  %data6 = getelementptr inbounds nuw %struct.HashElem, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %data6, align 8
  store ptr %17, ptr %pIdx, align 8
  %18 = load ptr, ptr %pIdx, align 8
  %hasStat1 = getelementptr inbounds nuw %struct.Index, ptr %18, i32 0, i32 16
  %bf.load = load i16, ptr %hasStat1, align 1
  %bf.clear = and i16 %bf.load, -129
  %bf.set = or i16 %bf.clear, 0
  store i16 %bf.set, ptr %hasStat1, align 1
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %19 = load ptr, ptr %i, align 8
  %next8 = getelementptr inbounds nuw %struct.HashElem, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %next8, align 8
  store ptr %20, ptr %i, align 8
  br label %for.cond3, !llvm.loop !8

for.end9:                                         ; preds = %for.cond3
  %21 = load ptr, ptr %db.addr, align 8
  %db10 = getelementptr inbounds nuw %struct.analysisInfo, ptr %sInfo, i32 0, i32 0
  store ptr %21, ptr %db10, align 8
  %22 = load ptr, ptr %db.addr, align 8
  %aDb11 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %aDb11, align 8
  %24 = load i32, ptr %iDb.addr, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds %struct.Db, ptr %23, i64 %idxprom12
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx13, i32 0, i32 0
  %25 = load ptr, ptr %zDbSName, align 8
  %zDatabase = getelementptr inbounds nuw %struct.analysisInfo, ptr %sInfo, i32 0, i32 1
  store ptr %25, ptr %zDatabase, align 8
  %26 = load ptr, ptr %db.addr, align 8
  %zDatabase14 = getelementptr inbounds nuw %struct.analysisInfo, ptr %sInfo, i32 0, i32 1
  %27 = load ptr, ptr %zDatabase14, align 8
  %call = call ptr @sqlite3FindTable(ptr noundef %26, ptr noundef @.str.343, ptr noundef %27)
  %cmp = icmp ne ptr %call, null
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %for.end9
  %28 = load ptr, ptr %db.addr, align 8
  %zDatabase15 = getelementptr inbounds nuw %struct.analysisInfo, ptr %sInfo, i32 0, i32 1
  %29 = load ptr, ptr %zDatabase15, align 8
  %call16 = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %28, ptr noundef @.str.344, ptr noundef %29)
  store ptr %call16, ptr %zSql, align 8
  %30 = load ptr, ptr %zSql, align 8
  %cmp17 = icmp eq ptr %30, null
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then
  store i32 7, ptr %rc, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  %31 = load ptr, ptr %db.addr, align 8
  %32 = load ptr, ptr %zSql, align 8
  %call19 = call i32 @sqlite3_exec(ptr noundef %31, ptr noundef %32, ptr noundef @analysisLoader, ptr noundef %sInfo, ptr noundef null)
  store i32 %call19, ptr %rc, align 4
  %33 = load ptr, ptr %db.addr, align 8
  %34 = load ptr, ptr %zSql, align 8
  call void @sqlite3DbFree(ptr noundef %33, ptr noundef %34)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then18
  br label %if.end20

if.end20:                                         ; preds = %if.end, %for.end9
  %35 = load ptr, ptr %pSchema, align 8
  %idxHash21 = getelementptr inbounds nuw %struct.Schema, ptr %35, i32 0, i32 3
  %first22 = getelementptr inbounds nuw %struct.Hash, ptr %idxHash21, i32 0, i32 2
  %36 = load ptr, ptr %first22, align 8
  store ptr %36, ptr %i, align 8
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc34, %if.end20
  %37 = load ptr, ptr %i, align 8
  %tobool24 = icmp ne ptr %37, null
  br i1 %tobool24, label %for.body25, label %for.end36

for.body25:                                       ; preds = %for.cond23
  %38 = load ptr, ptr %i, align 8
  %data27 = getelementptr inbounds nuw %struct.HashElem, ptr %38, i32 0, i32 2
  %39 = load ptr, ptr %data27, align 8
  store ptr %39, ptr %pIdx26, align 8
  %40 = load ptr, ptr %pIdx26, align 8
  %hasStat128 = getelementptr inbounds nuw %struct.Index, ptr %40, i32 0, i32 16
  %bf.load29 = load i16, ptr %hasStat128, align 1
  %bf.lshr = lshr i16 %bf.load29, 7
  %bf.clear30 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear30 to i32
  %tobool31 = icmp ne i32 %bf.cast, 0
  br i1 %tobool31, label %if.end33, label %if.then32

if.then32:                                        ; preds = %for.body25
  %41 = load ptr, ptr %pIdx26, align 8
  call void @sqlite3DefaultRowEst(ptr noundef %41)
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %for.body25
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %42 = load ptr, ptr %i, align 8
  %next35 = getelementptr inbounds nuw %struct.HashElem, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %next35, align 8
  store ptr %43, ptr %i, align 8
  br label %for.cond23, !llvm.loop !9

for.end36:                                        ; preds = %for.cond23
  %44 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %44, 7
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %for.end36
  %45 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %45)
  br label %if.end39

if.end39:                                         ; preds = %if.then38, %for.end36
  %46 = load i32, ptr %rc, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
declare hidden i32 @analysisLoader(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DefaultRowEst(ptr noundef) #0

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
!9 = distinct !{!9, !7}
