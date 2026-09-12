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
%struct.Trigger = type { ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.3 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.904 = external hidden unnamed_addr constant [21 x i8], align 1
@.str.905 = external hidden unnamed_addr constant [26 x i8], align 1
@.str.906 = external hidden unnamed_addr constant [22 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_snprintf(i32 noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3StrICmp(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInReadTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_context_db_handle(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeClose(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CollapseDatabaseArray(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @detachFunc(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %db = alloca ptr, align 8
  %i = alloca i32, align 4
  %pDb = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %zErr = alloca [128 x i8], align 16
  %pTrig = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @sqlite3_value_text(ptr noundef %1)
  store ptr %call, ptr %zName, align 8
  %2 = load ptr, ptr %context.addr, align 8
  %call1 = call ptr @sqlite3_context_db_handle(ptr noundef %2)
  store ptr %call1, ptr %db, align 8
  store ptr null, ptr %pDb, align 8
  %3 = load i32, ptr %NotUsed.addr, align 4
  %4 = load ptr, ptr %zName, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr @.str.3, ptr %zName, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, ptr %i, align 4
  %6 = load ptr, ptr %db, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 5
  %7 = load i32, ptr %nDb, align 8
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %db, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %aDb, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx3 = getelementptr inbounds %struct.Db, ptr %9, i64 %idxprom
  store ptr %arrayidx3, ptr %pDb, align 8
  %11 = load ptr, ptr %pDb, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %11, i32 0, i32 1
  %12 = load ptr, ptr %pBt, align 8
  %cmp4 = icmp eq ptr %12, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %for.body
  br label %for.inc

if.end6:                                          ; preds = %for.body
  %13 = load ptr, ptr %pDb, align 8
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zDbSName, align 8
  %15 = load ptr, ptr %zName, align 8
  %call7 = call i32 @sqlite3StrICmp(ptr noundef %14, ptr noundef %15)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  br label %for.end

if.end10:                                         ; preds = %if.end6
  br label %for.inc

for.inc:                                          ; preds = %if.end10, %if.then5
  %16 = load i32, ptr %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then9, %for.cond
  %17 = load i32, ptr %i, align 4
  %18 = load ptr, ptr %db, align 8
  %nDb11 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %nDb11, align 8
  %cmp12 = icmp sge i32 %17, %19
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %for.end
  %arraydecay = getelementptr inbounds [128 x i8], ptr %zErr, i64 0, i64 0
  %20 = load ptr, ptr %zName, align 8
  %call14 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 128, ptr noundef %arraydecay, ptr noundef @.str.904, ptr noundef %20)
  br label %detach_error

if.end15:                                         ; preds = %for.end
  %21 = load i32, ptr %i, align 4
  %cmp16 = icmp slt i32 %21, 2
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end15
  %arraydecay18 = getelementptr inbounds [128 x i8], ptr %zErr, i64 0, i64 0
  %22 = load ptr, ptr %zName, align 8
  %call19 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 128, ptr noundef %arraydecay18, ptr noundef @.str.905, ptr noundef %22)
  br label %detach_error

if.end20:                                         ; preds = %if.end15
  %23 = load ptr, ptr %pDb, align 8
  %pBt21 = getelementptr inbounds nuw %struct.Db, ptr %23, i32 0, i32 1
  %24 = load ptr, ptr %pBt21, align 8
  %call22 = call i32 @sqlite3BtreeIsInReadTrans(ptr noundef %24)
  %tobool = icmp ne i32 %call22, 0
  br i1 %tobool, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end20
  %25 = load ptr, ptr %pDb, align 8
  %pBt23 = getelementptr inbounds nuw %struct.Db, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %pBt23, align 8
  %call24 = call i32 @sqlite3BtreeIsInBackup(ptr noundef %26)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.then26, label %if.end29

if.then26:                                        ; preds = %lor.lhs.false, %if.end20
  %arraydecay27 = getelementptr inbounds [128 x i8], ptr %zErr, i64 0, i64 0
  %27 = load ptr, ptr %zName, align 8
  %call28 = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 128, ptr noundef %arraydecay27, ptr noundef @.str.906, ptr noundef %27)
  br label %detach_error

if.end29:                                         ; preds = %lor.lhs.false
  %28 = load ptr, ptr %db, align 8
  %aDb30 = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %aDb30, align 8
  %arrayidx31 = getelementptr inbounds %struct.Db, ptr %29, i64 1
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx31, i32 0, i32 4
  %30 = load ptr, ptr %pSchema, align 8
  %trigHash = getelementptr inbounds nuw %struct.Schema, ptr %30, i32 0, i32 4
  %first = getelementptr inbounds nuw %struct.Hash, ptr %trigHash, i32 0, i32 2
  %31 = load ptr, ptr %first, align 8
  store ptr %31, ptr %pEntry, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %if.end29
  %32 = load ptr, ptr %pEntry, align 8
  %tobool32 = icmp ne ptr %32, null
  br i1 %tobool32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %33 = load ptr, ptr %pEntry, align 8
  %data = getelementptr inbounds nuw %struct.HashElem, ptr %33, i32 0, i32 2
  %34 = load ptr, ptr %data, align 8
  store ptr %34, ptr %pTrig, align 8
  %35 = load ptr, ptr %pTrig, align 8
  %pTabSchema = getelementptr inbounds nuw %struct.Trigger, ptr %35, i32 0, i32 7
  %36 = load ptr, ptr %pTabSchema, align 8
  %37 = load ptr, ptr %pDb, align 8
  %pSchema33 = getelementptr inbounds nuw %struct.Db, ptr %37, i32 0, i32 4
  %38 = load ptr, ptr %pSchema33, align 8
  %cmp34 = icmp eq ptr %36, %38
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %while.body
  %39 = load ptr, ptr %pTrig, align 8
  %pSchema36 = getelementptr inbounds nuw %struct.Trigger, ptr %39, i32 0, i32 6
  %40 = load ptr, ptr %pSchema36, align 8
  %41 = load ptr, ptr %pTrig, align 8
  %pTabSchema37 = getelementptr inbounds nuw %struct.Trigger, ptr %41, i32 0, i32 7
  store ptr %40, ptr %pTabSchema37, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %while.body
  %42 = load ptr, ptr %pEntry, align 8
  %next = getelementptr inbounds nuw %struct.HashElem, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %next, align 8
  store ptr %43, ptr %pEntry, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  %44 = load ptr, ptr %pDb, align 8
  %pBt39 = getelementptr inbounds nuw %struct.Db, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %pBt39, align 8
  %call40 = call i32 @sqlite3BtreeClose(ptr noundef %45)
  %46 = load ptr, ptr %pDb, align 8
  %pBt41 = getelementptr inbounds nuw %struct.Db, ptr %46, i32 0, i32 1
  store ptr null, ptr %pBt41, align 8
  %47 = load ptr, ptr %pDb, align 8
  %pSchema42 = getelementptr inbounds nuw %struct.Db, ptr %47, i32 0, i32 4
  store ptr null, ptr %pSchema42, align 8
  %48 = load ptr, ptr %db, align 8
  call void @sqlite3CollapseDatabaseArray(ptr noundef %48)
  br label %return

detach_error:                                     ; preds = %if.then26, %if.then17, %if.then13
  %49 = load ptr, ptr %context.addr, align 8
  %arraydecay43 = getelementptr inbounds [128 x i8], ptr %zErr, i64 0, i64 0
  call void @sqlite3_result_error(ptr noundef %49, ptr noundef %arraydecay43, i32 noundef -1)
  br label %return

return:                                           ; preds = %detach_error, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInBackup(ptr noundef) #0

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
