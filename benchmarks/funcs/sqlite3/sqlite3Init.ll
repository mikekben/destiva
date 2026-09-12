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
define hidden i32 @sqlite3Init(ptr noundef %db, ptr noundef %pzErrMsg) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %pzErrMsg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %commit_internal = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %pzErrMsg, ptr %pzErrMsg.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 6
  %1 = load i32, ptr %mDbFlags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, ptr %commit_internal, align 4
  %2 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %aDb, align 8
  %arrayidx = getelementptr inbounds %struct.Db, ptr %3, i64 0
  %pSchema = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 4
  %4 = load ptr, ptr %pSchema, align 8
  %enc = getelementptr inbounds nuw %struct.Schema, ptr %4, i32 0, i32 8
  %5 = load i8, ptr %enc, align 1
  %6 = load ptr, ptr %db.addr, align 8
  %enc1 = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 16
  store i8 %5, ptr %enc1, align 2
  %7 = load ptr, ptr %db.addr, align 8
  %aDb2 = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %aDb2, align 8
  %arrayidx3 = getelementptr inbounds %struct.Db, ptr %8, i64 0
  %pSchema4 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx3, i32 0, i32 4
  %9 = load ptr, ptr %pSchema4, align 8
  %schemaFlags = getelementptr inbounds nuw %struct.Schema, ptr %9, i32 0, i32 9
  %10 = load i16, ptr %schemaFlags, align 2
  %conv = zext i16 %10 to i32
  %and5 = and i32 %conv, 1
  %cmp = icmp eq i32 %and5, 1
  br i1 %cmp, label %if.end9, label %if.then

if.then:                                          ; preds = %entry
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %pzErrMsg.addr, align 8
  %call = call i32 @sqlite3InitOne(ptr noundef %11, i32 noundef 0, ptr noundef %12, i32 noundef 0)
  store i32 %call, ptr %rc, align 4
  %13 = load i32, ptr %rc, align 4
  %tobool7 = icmp ne i32 %13, 0
  br i1 %tobool7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %14 = load i32, ptr %rc, align 4
  store i32 %14, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry
  %15 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %nDb, align 8
  %sub = sub nsw i32 %16, 1
  store i32 %sub, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end9
  %17 = load i32, ptr %i, align 4
  %cmp10 = icmp sgt i32 %17, 0
  br i1 %cmp10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %18 = load ptr, ptr %db.addr, align 8
  %aDb12 = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %aDb12, align 8
  %20 = load i32, ptr %i, align 4
  %idxprom = sext i32 %20 to i64
  %arrayidx13 = getelementptr inbounds %struct.Db, ptr %19, i64 %idxprom
  %pSchema14 = getelementptr inbounds nuw %struct.Db, ptr %arrayidx13, i32 0, i32 4
  %21 = load ptr, ptr %pSchema14, align 8
  %schemaFlags15 = getelementptr inbounds nuw %struct.Schema, ptr %21, i32 0, i32 9
  %22 = load i16, ptr %schemaFlags15, align 2
  %conv16 = zext i16 %22 to i32
  %and17 = and i32 %conv16, 1
  %cmp18 = icmp eq i32 %and17, 1
  br i1 %cmp18, label %if.end25, label %if.then20

if.then20:                                        ; preds = %for.body
  %23 = load ptr, ptr %db.addr, align 8
  %24 = load i32, ptr %i, align 4
  %25 = load ptr, ptr %pzErrMsg.addr, align 8
  %call21 = call i32 @sqlite3InitOne(ptr noundef %23, i32 noundef %24, ptr noundef %25, i32 noundef 0)
  store i32 %call21, ptr %rc, align 4
  %26 = load i32, ptr %rc, align 4
  %tobool22 = icmp ne i32 %26, 0
  br i1 %tobool22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %if.then20
  %27 = load i32, ptr %rc, align 4
  store i32 %27, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %if.then20
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %28 = load i32, ptr %i, align 4
  %dec = add nsw i32 %28, -1
  store i32 %dec, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %29 = load i32, ptr %commit_internal, align 4
  %tobool26 = icmp ne i32 %29, 0
  br i1 %tobool26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end
  %30 = load ptr, ptr %db.addr, align 8
  call void @sqlite3CommitInternalChanges(ptr noundef %30)
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then23, %if.then8
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3CommitInternalChanges(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3InitOne(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

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
