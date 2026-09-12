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

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %pDb = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %0)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %aDb, align 8
  %6 = load i32, ptr %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %5, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  %7 = load ptr, ptr %pDb, align 8
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pSchema, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %db.addr, align 8
  %nSchemaLock = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 10
  %10 = load i32, ptr %nSchemaLock, align 8
  %cmp1 = icmp eq i32 %10, 0
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %11 = load ptr, ptr %pDb, align 8
  %pSchema3 = getelementptr inbounds nuw %struct.Db, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pSchema3, align 8
  call void @sqlite3SchemaClear(ptr noundef %12)
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load ptr, ptr %db.addr, align 8
  %aDb4 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %aDb4, align 8
  %15 = load i32, ptr %i, align 4
  %idxprom5 = sext i32 %15 to i64
  %arrayidx6 = getelementptr inbounds %struct.Db, ptr %14, i64 %idxprom5
  %pSchema7 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx6, i32 0, i32 4
  %16 = load ptr, ptr %pSchema7, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %16, i32 0, i32 9
  %17 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %17 to i32
  %or = or i32 %conv, 8
  %conv8 = trunc i32 %or to i16
  store i16 %conv8, ptr %schemaFlags, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %18 = load i32, ptr %i, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %19 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %19, i32 0, i32 6
  %20 = load i32, ptr %mDbFlags, align 4
  %and = and i32 %20, -18
  store i32 %and, ptr %mDbFlags, align 4
  %21 = load ptr, ptr %db.addr, align 8
  call void @sqlite3VtabUnlockList(ptr noundef %21)
  %22 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %22)
  %23 = load ptr, ptr %db.addr, align 8
  %nSchemaLock10 = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 10
  %24 = load i32, ptr %nSchemaLock10, align 8
  %cmp11 = icmp eq i32 %24, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.end
  %25 = load ptr, ptr %db.addr, align 8
  call void @sqlite3CollapseDatabaseArray(ptr noundef %25)
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SchemaClear(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3VtabUnlockList(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CollapseDatabaseArray(ptr noundef) #0

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
