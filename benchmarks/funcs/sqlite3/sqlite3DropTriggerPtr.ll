; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Parse = type { ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.Token, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, [8 x i32], %struct.Token, %struct.Token, i16, i8, i8, i8, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.Token, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Token = type { ptr, i32 }
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sqlite3 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i64, i64, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, [12 x i32], i32, %struct.sqlite3InitInfo, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon, %struct.Lookaside, ptr, ptr, ptr, ptr, i32, i32, %struct.Hash, ptr, ptr, ptr, %struct.Hash, %struct.Hash, %struct.BusyHandler, [2 x %struct.Db], ptr, i32, i32, i32, i64, i64, ptr }
%struct.sqlite3InitInfo = type { i32, i8, i8, i8, ptr }
%union.anon = type { double }
%struct.Lookaside = type { i32, i16, i8, i32, [3 x i32], ptr, ptr, ptr, ptr }
%struct.Hash = type { i32, i32, ptr, ptr }
%struct.BusyHandler = type { ptr, ptr, i32, i8 }
%struct.Db = type { ptr, ptr, i8, i8, ptr }
%struct.Table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i8, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.716 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SchemaToIndex(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @tableOfTrigger(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3GetVdbe(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VdbeAddOp4(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3AuthCheck(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3NestedParse(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ChangeCookie(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3DropTriggerPtr(ptr noundef %pParse, ptr noundef %pTrigger) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %pTrigger.addr = alloca ptr, align 8
  %pTable = alloca ptr, align 8
  %v = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %code = alloca i32, align 4
  %zDb = alloca ptr, align 8
  %zTab = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  store ptr %pTrigger, ptr %pTrigger.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  %2 = load ptr, ptr %pParse.addr, align 8
  %db2 = getelementptr inbounds nuw %struct.Parse, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %db2, align 8
  %4 = load ptr, ptr %pTrigger.addr, align 8
  %pSchema = getelementptr inbounds nuw %struct.Trigger, ptr %4, i32 0, i32 6
  %5 = load ptr, ptr %pSchema, align 8
  %call = call i32 @sqlite3SchemaToIndex(ptr noundef %3, ptr noundef %5)
  store i32 %call, ptr %iDb, align 4
  %6 = load ptr, ptr %pTrigger.addr, align 8
  %call3 = call ptr @tableOfTrigger(ptr noundef %6)
  store ptr %call3, ptr %pTable, align 8
  %7 = load ptr, ptr %pTable, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  store i32 16, ptr %code, align 4
  %8 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %aDb, align 8
  %10 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %9, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %11 = load ptr, ptr %zDbSName, align 8
  store ptr %11, ptr %zDb, align 8
  %12 = load i32, ptr %iDb, align 4
  %cmp = icmp eq i32 %12, 1
  %13 = zext i1 %cmp to i64
  %cond = select i1 %cmp, ptr @.str.331, ptr @.str.320
  store ptr %cond, ptr %zTab, align 8
  %14 = load i32, ptr %iDb, align 4
  %cmp4 = icmp eq i32 %14, 1
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  store i32 14, ptr %code, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  %15 = load ptr, ptr %pParse.addr, align 8
  %16 = load i32, ptr %code, align 4
  %17 = load ptr, ptr %pTrigger.addr, align 8
  %zName = getelementptr inbounds nuw %struct.Trigger, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zName, align 8
  %19 = load ptr, ptr %pTable, align 8
  %zName6 = getelementptr inbounds nuw %struct.Table, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %zName6, align 8
  %21 = load ptr, ptr %zDb, align 8
  %call7 = call i32 @sqlite3AuthCheck(ptr noundef %15, i32 noundef %16, ptr noundef %18, ptr noundef %20, ptr noundef %21)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %22 = load ptr, ptr %pParse.addr, align 8
  %23 = load ptr, ptr %zTab, align 8
  %24 = load ptr, ptr %zDb, align 8
  %call9 = call i32 @sqlite3AuthCheck(ptr noundef %22, i32 noundef 9, ptr noundef %23, ptr noundef null, ptr noundef %24)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %lor.lhs.false, %if.end
  br label %if.end24

if.end12:                                         ; preds = %lor.lhs.false
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %25 = load ptr, ptr %pParse.addr, align 8
  %call14 = call ptr @sqlite3GetVdbe(ptr noundef %25)
  store ptr %call14, ptr %v, align 8
  %cmp15 = icmp ne ptr %call14, null
  br i1 %cmp15, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end13
  %26 = load ptr, ptr %pParse.addr, align 8
  %27 = load ptr, ptr %db, align 8
  %aDb17 = getelementptr inbounds nuw %struct.sqlite3, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %aDb17, align 8
  %29 = load i32, ptr %iDb, align 4
  %idxprom18 = sext i32 %29 to i64
  %arrayidx19 = getelementptr inbounds %struct.Db, ptr %28, i64 %idxprom18
  %zDbSName20 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx19, i32 0, i32 0
  %30 = load ptr, ptr %zDbSName20, align 8
  %31 = load ptr, ptr %pTrigger.addr, align 8
  %zName21 = getelementptr inbounds nuw %struct.Trigger, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %zName21, align 8
  call void (ptr, ptr, ...) @sqlite3NestedParse(ptr noundef %26, ptr noundef @.str.716, ptr noundef %30, ptr noundef @.str.320, ptr noundef %32)
  %33 = load ptr, ptr %pParse.addr, align 8
  %34 = load i32, ptr %iDb, align 4
  call void @sqlite3ChangeCookie(ptr noundef %33, i32 noundef %34)
  %35 = load ptr, ptr %v, align 8
  %36 = load i32, ptr %iDb, align 4
  %37 = load ptr, ptr %pTrigger.addr, align 8
  %zName22 = getelementptr inbounds nuw %struct.Trigger, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %zName22, align 8
  %call23 = call i32 @sqlite3VdbeAddOp4(ptr noundef %35, i32 noundef 145, i32 noundef %36, i32 noundef 0, i32 noundef 0, ptr noundef %38, i32 noundef 0)
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.end13, %if.then11
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
