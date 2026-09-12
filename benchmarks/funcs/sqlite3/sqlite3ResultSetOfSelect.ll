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
%struct.Select = type { ptr, i8, i16, i32, i32, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DeleteTable(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3DbMallocZero(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3ResultSetOfSelect(ptr noundef %pParse, ptr noundef %pSelect, i8 noundef signext %aff) #0 {
entry:
  %retval = alloca ptr, align 8
  %pParse.addr = alloca ptr, align 8
  %pSelect.addr = alloca ptr, align 8
  %aff.addr = alloca i8, align 1
  %pTab = alloca ptr, align 8
  %db = alloca ptr, align 8
  %savedFlags = alloca i64, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pSelect, ptr %pSelect.addr, align 8
  store i8 %aff, ptr %aff.addr, align 1
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %db, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 7
  %3 = load i64, ptr %flags, align 8
  store i64 %3, ptr %savedFlags, align 8
  %4 = load ptr, ptr %db, align 8
  %flags2 = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 7
  %5 = load i64, ptr %flags2, align 8
  %and = and i64 %5, -5
  store i64 %and, ptr %flags2, align 8
  %6 = load ptr, ptr %db, align 8
  %flags3 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 7
  %7 = load i64, ptr %flags3, align 8
  %or = or i64 %7, 64
  store i64 %or, ptr %flags3, align 8
  %8 = load ptr, ptr %pParse.addr, align 8
  %9 = load ptr, ptr %pSelect.addr, align 8
  call void @sqlite3SelectPrep(ptr noundef %8, ptr noundef %9, ptr noundef null)
  %10 = load i64, ptr %savedFlags, align 8
  %11 = load ptr, ptr %db, align 8
  %flags4 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 7
  store i64 %10, ptr %flags4, align 8
  %12 = load ptr, ptr %pParse.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.Parse, ptr %12, i32 0, i32 16
  %13 = load i32, ptr %nErr, align 8
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %14 = load ptr, ptr %pSelect.addr, align 8
  %pPrior = getelementptr inbounds nuw %struct.Select, ptr %14, i32 0, i32 13
  %15 = load ptr, ptr %pPrior, align 8
  %tobool5 = icmp ne ptr %15, null
  br i1 %tobool5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %pSelect.addr, align 8
  %pPrior6 = getelementptr inbounds nuw %struct.Select, ptr %16, i32 0, i32 13
  %17 = load ptr, ptr %pPrior6, align 8
  store ptr %17, ptr %pSelect.addr, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %db, align 8
  %call = call ptr @sqlite3DbMallocZero(ptr noundef %18, i64 noundef 128)
  store ptr %call, ptr %pTab, align 8
  %19 = load ptr, ptr %pTab, align 8
  %cmp = icmp eq ptr %19, null
  br i1 %cmp, label %if.then7, label %if.end8

if.then7:                                         ; preds = %while.end
  store ptr null, ptr %retval, align 8
  br label %return

if.end8:                                          ; preds = %while.end
  %20 = load ptr, ptr %pTab, align 8
  %nTabRef = getelementptr inbounds nuw %struct.Table, ptr %20, i32 0, i32 8
  store i32 1, ptr %nTabRef, align 4
  %21 = load ptr, ptr %pTab, align 8
  %zName = getelementptr inbounds nuw %struct.Table, ptr %21, i32 0, i32 0
  store ptr null, ptr %zName, align 8
  %22 = load ptr, ptr %pTab, align 8
  %nRowLogEst = getelementptr inbounds nuw %struct.Table, ptr %22, i32 0, i32 12
  store i16 200, ptr %nRowLogEst, align 8
  %23 = load ptr, ptr %pParse.addr, align 8
  %24 = load ptr, ptr %pSelect.addr, align 8
  %pEList = getelementptr inbounds nuw %struct.Select, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pEList, align 8
  %26 = load ptr, ptr %pTab, align 8
  %nCol = getelementptr inbounds nuw %struct.Table, ptr %26, i32 0, i32 11
  %27 = load ptr, ptr %pTab, align 8
  %aCol = getelementptr inbounds nuw %struct.Table, ptr %27, i32 0, i32 1
  %call9 = call i32 @sqlite3ColumnsFromExprList(ptr noundef %23, ptr noundef %25, ptr noundef %nCol, ptr noundef %aCol)
  %28 = load ptr, ptr %pParse.addr, align 8
  %29 = load ptr, ptr %pTab, align 8
  %30 = load ptr, ptr %pSelect.addr, align 8
  %31 = load i8, ptr %aff.addr, align 1
  call void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef %28, ptr noundef %29, ptr noundef %30, i8 noundef signext %31)
  %32 = load ptr, ptr %pTab, align 8
  %iPKey = getelementptr inbounds nuw %struct.Table, ptr %32, i32 0, i32 10
  store i16 -1, ptr %iPKey, align 4
  %33 = load ptr, ptr %db, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 19
  %34 = load i8, ptr %mallocFailed, align 1
  %tobool10 = icmp ne i8 %34, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  %35 = load ptr, ptr %db, align 8
  %36 = load ptr, ptr %pTab, align 8
  call void @sqlite3DeleteTable(ptr noundef %35, ptr noundef %36)
  store ptr null, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %if.end8
  %37 = load ptr, ptr %pTab, align 8
  store ptr %37, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then
  %38 = load ptr, ptr %retval, align 8
  ret ptr %38
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectPrep(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ColumnsFromExprList(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SelectAddColumnTypeAndCollation(ptr noundef, ptr noundef, ptr noundef, i8 noundef signext) #0

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
