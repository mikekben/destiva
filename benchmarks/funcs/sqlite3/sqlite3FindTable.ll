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

@.str.320 = external hidden unnamed_addr constant [14 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [19 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_stricmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @sqlite3FindTable(ptr noundef %db, ptr noundef %zName, ptr noundef %zDatabase) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %zDatabase.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store ptr %zDatabase, ptr %zDatabase.addr, align 8
  store ptr null, ptr %p, align 8
  br label %while.body

while.body:                                       ; preds = %if.end20, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4
  %cmp1 = icmp slt i32 %3, 2
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i32, ptr %i, align 4
  %xor = xor i32 %4, 1
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %xor, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, ptr %j, align 4
  %6 = load ptr, ptr %zDatabase.addr, align 8
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %7 = load ptr, ptr %zDatabase.addr, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %aDb, align 8
  %10 = load i32, ptr %j, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %9, i64 %idxprom
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 0
  %11 = load ptr, ptr %zDbSName, align 8
  %call = call i32 @sqlite3StrICmp(ptr noundef %7, ptr noundef %11)
  %cmp3 = icmp eq i32 %call, 0
  br i1 %cmp3, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %12 = load ptr, ptr %db.addr, align 8
  %aDb4 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %aDb4, align 8
  %14 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %14 to i64
  %arrayidx6 = getelementptr inbounds %struct.Db, ptr %13, i64 %idxprom5
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx6, i32 0, i32 4
  %15 = load ptr, ptr %pSchema, align 8
  %tblHash = getelementptr inbounds nuw %struct.Schema, ptr %15, i32 0, i32 2
  %16 = load ptr, ptr %zName.addr, align 8
  %call7 = call ptr @sqlite3HashFind(ptr noundef %tblHash, ptr noundef %16)
  store ptr %call7, ptr %p, align 8
  %17 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %17, null
  br i1 %tobool, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %18 = load ptr, ptr %p, align 8
  store ptr %18, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %19 = load i32, ptr %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %20 = load ptr, ptr %zName.addr, align 8
  %call10 = call i32 @sqlite3StrICmp(ptr noundef %20, ptr noundef @.str.320)
  %cmp11 = icmp ne i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  br label %while.end

if.end13:                                         ; preds = %for.end
  %21 = load ptr, ptr %zDatabase.addr, align 8
  %22 = load ptr, ptr %db.addr, align 8
  %aDb14 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %aDb14, align 8
  %arrayidx15 = getelementptr inbounds %struct.Db, ptr %23, i64 1
  %zDbSName16 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx15, i32 0, i32 0
  %24 = load ptr, ptr %zDbSName16, align 8
  %call17 = call i32 @sqlite3_stricmp(ptr noundef %21, ptr noundef %24)
  %cmp18 = icmp ne i32 %call17, 0
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end13
  br label %while.end

if.end20:                                         ; preds = %if.end13
  store ptr @.str.331, ptr %zName.addr, align 8
  br label %while.body

while.end:                                        ; preds = %if.then19, %if.then12
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %while.end, %if.then8
  %25 = load ptr, ptr %retval, align 8
  ret ptr %25
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3HashFind(ptr noundef, ptr noundef) #0

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
