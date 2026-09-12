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
define hidden void @sqlite3ResetOneSchema(ptr noundef %db, i32 noundef %iDb) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %iDb.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %iDb, ptr %iDb.addr, align 4
  %0 = load i32, ptr %iDb.addr, align 4
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %aDb, align 8
  %3 = load i32, ptr %iDb.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %2, i64 %idxprom
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %4 = load ptr, ptr %pSchema, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %4, i32 0, i32 9
  %5 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %5 to i32
  %or = or i32 %conv, 8
  %conv1 = trunc i32 %or to i16
  store i16 %conv1, ptr %schemaFlags, align 2
  %6 = load ptr, ptr %db.addr, align 8
  %aDb2 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %aDb2, align 8
  %arrayidx3 = getelementptr inbounds %struct.Db, ptr %7, i64 1
  %pSchema4 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3, i32 0, i32 4
  %8 = load ptr, ptr %pSchema4, align 8
  %schemaFlags5 = getelementptr inbounds nuw %struct.Schema, ptr %8, i32 0, i32 9
  %9 = load i16, ptr %schemaFlags5, align 2
  %conv6 = zext i16 %9 to i32
  %or7 = or i32 %conv6, 8
  %conv8 = trunc i32 %or7 to i16
  store i16 %conv8, ptr %schemaFlags5, align 2
  %10 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %mDbFlags, align 4
  %and = and i32 %11, -17
  store i32 %and, ptr %mDbFlags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load ptr, ptr %db.addr, align 8
  %nSchemaLock = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 10
  %13 = load i32, ptr %nSchemaLock, align 8
  %cmp9 = icmp eq i32 %13, 0
  br i1 %cmp9, label %if.then11, label %if.end29

if.then11:                                        ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then11
  %14 = load i32, ptr %i, align 4
  %15 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %nDb, align 8
  %cmp12 = icmp slt i32 %14, %16
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load ptr, ptr %db.addr, align 8
  %aDb14 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %aDb14, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds %struct.Db, ptr %18, i64 %idxprom15
  %pSchema17 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx16, i32 0, i32 4
  %20 = load ptr, ptr %pSchema17, align 8
  %schemaFlags18 = getelementptr inbounds nuw %struct.Schema, ptr %20, i32 0, i32 9
  %21 = load i16, ptr %schemaFlags18, align 2
  %conv19 = zext i16 %21 to i32
  %and20 = and i32 %conv19, 8
  %cmp21 = icmp eq i32 %and20, 8
  br i1 %cmp21, label %if.then23, label %if.end28

if.then23:                                        ; preds = %for.body
  %22 = load ptr, ptr %db.addr, align 8
  %aDb24 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %aDb24, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom25 = sext i32 %24 to i64
  %arrayidx26 = getelementptr inbounds %struct.Db, ptr %23, i64 %idxprom25
  %pSchema27 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx26, i32 0, i32 4
  %25 = load ptr, ptr %pSchema27, align 8
  call void @sqlite3SchemaClear(ptr noundef %25)
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %26 = load i32, ptr %i, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  br label %if.end29

if.end29:                                         ; preds = %for.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3SchemaClear(ptr noundef) #0

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
