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

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInReadTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeBeginTrans(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetOneSchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeGetMeta(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeCommit(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @schemaIsValid(ptr noundef %pParse) #0 {
entry:
  %pParse.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %iDb = alloca i32, align 4
  %rc = alloca i32, align 4
  %cookie = alloca i32, align 4
  %openedTransaction = alloca i32, align 4
  %pBt = alloca ptr, align 8
  store ptr %pParse, ptr %pParse.addr, align 8
  %0 = load ptr, ptr %pParse.addr, align 8
  %db1 = getelementptr inbounds nuw %struct.Parse, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %db1, align 8
  store ptr %1, ptr %db, align 8
  store i32 0, ptr %iDb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %iDb, align 4
  %3 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 5
  %4 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %openedTransaction, align 4
  %5 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %aDb, align 8
  %7 = load i32, ptr %iDb, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %6, i64 %idxprom
  %pBt2 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %8 = load ptr, ptr %pBt2, align 8
  store ptr %8, ptr %pBt, align 8
  %9 = load ptr, ptr %pBt, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load ptr, ptr %pBt, align 8
  %call = call i32 @sqlite3BtreeIsInReadTrans(ptr noundef %10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end13, label %if.then4

if.then4:                                         ; preds = %if.end
  %11 = load ptr, ptr %pBt, align 8
  %call5 = call i32 @sqlite3BtreeBeginTrans(ptr noundef %11, i32 noundef 0, ptr noundef null)
  store i32 %call5, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %12, 7
  br i1 %cmp6, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %13 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %13, 3082
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %lor.lhs.false, %if.then4
  %14 = load ptr, ptr %db, align 8
  call void @sqlite3OomFault(ptr noundef %14)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %lor.lhs.false
  %15 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %15, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  br label %for.end

if.end12:                                         ; preds = %if.end9
  store i32 1, ptr %openedTransaction, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  %16 = load ptr, ptr %pBt, align 8
  call void @sqlite3BtreeGetMeta(ptr noundef %16, i32 noundef 1, ptr noundef %cookie)
  %17 = load i32, ptr %cookie, align 4
  %18 = load ptr, ptr %db, align 8
  %aDb14 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %aDb14, align 8
  %20 = load i32, ptr %iDb, align 4
  %idxprom15 = sext i32 %20 to i64
  %arrayidx16 = getelementptr inbounds %struct.Db, ptr %19, i64 %idxprom15
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx16, i32 0, i32 4
  %21 = load ptr, ptr %pSchema, align 8
  %schema_cookie = getelementptr inbounds nuw %struct.Schema, ptr %21, i32 0, i32 0
  %22 = load i32, ptr %schema_cookie, align 8
  %cmp17 = icmp ne i32 %17, %22
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end13
  %23 = load ptr, ptr %db, align 8
  %24 = load i32, ptr %iDb, align 4
  call void @sqlite3ResetOneSchema(ptr noundef %23, i32 noundef %24)
  %25 = load ptr, ptr %pParse.addr, align 8
  %rc19 = getelementptr inbounds nuw %struct.Parse, ptr %25, i32 0, i32 3
  store i32 17, ptr %rc19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end13
  %26 = load i32, ptr %openedTransaction, align 4
  %tobool21 = icmp ne i32 %26, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.end20
  %27 = load ptr, ptr %pBt, align 8
  %call23 = call i32 @sqlite3BtreeCommit(ptr noundef %27)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %if.then
  %28 = load i32, ptr %iDb, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, ptr %iDb, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then11, %for.cond
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
