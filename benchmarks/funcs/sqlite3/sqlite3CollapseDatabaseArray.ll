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

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @sqlite3CollapseDatabaseArray(ptr noundef %db) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pDb = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 2, ptr %j, align 4
  store i32 2, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 5
  %2 = load i32, ptr %nDb, align 8
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 4
  %4 = load ptr, ptr %aDb, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %4, i64 %idxprom
  store ptr %arrayidx, ptr %pDb, align 8
  %6 = load ptr, ptr %pDb, align 8
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pBt, align 8
  %cmp1 = icmp eq ptr %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %db.addr, align 8
  %9 = load ptr, ptr %pDb, align 8
  %zDbSName = getelementptr inbounds nuw %struct.Db, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zDbSName, align 8
  call void @sqlite3DbFree(ptr noundef %8, ptr noundef %10)
  %11 = load ptr, ptr %pDb, align 8
  %zDbSName2 = getelementptr inbounds nuw %struct.Db, ptr %11, i32 0, i32 0
  store ptr null, ptr %zDbSName2, align 8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %12 = load i32, ptr %j, align 4
  %13 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %12, %13
  br i1 %cmp3, label %if.then4, label %if.end11

if.then4:                                         ; preds = %if.end
  %14 = load ptr, ptr %db.addr, align 8
  %aDb5 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 4
  %15 = load ptr, ptr %aDb5, align 8
  %16 = load i32, ptr %j, align 4
  %idxprom6 = sext i32 %16 to i64
  %arrayidx7 = getelementptr inbounds %struct.Db, ptr %15, i64 %idxprom6
  %17 = load ptr, ptr %db.addr, align 8
  %aDb8 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %aDb8, align 8
  %19 = load i32, ptr %i, align 4
  %idxprom9 = sext i32 %19 to i64
  %arrayidx10 = getelementptr inbounds %struct.Db, ptr %18, i64 %idxprom9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx7, ptr align 8 %arrayidx10, i64 32, i1 false)
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end
  %20 = load i32, ptr %j, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.then
  %21 = load i32, ptr %i, align 4
  %inc12 = add nsw i32 %21, 1
  store i32 %inc12, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %22 = load i32, ptr %j, align 4
  %23 = load ptr, ptr %db.addr, align 8
  %nDb13 = getelementptr inbounds nuw %struct.sqlite3, ptr %23, i32 0, i32 5
  store i32 %22, ptr %nDb13, align 8
  %24 = load ptr, ptr %db.addr, align 8
  %nDb14 = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 5
  %25 = load i32, ptr %nDb14, align 8
  %cmp15 = icmp sle i32 %25, 2
  br i1 %cmp15, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %for.end
  %26 = load ptr, ptr %db.addr, align 8
  %aDb16 = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 4
  %27 = load ptr, ptr %aDb16, align 8
  %28 = load ptr, ptr %db.addr, align 8
  %aDbStatic = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 75
  %arraydecay = getelementptr inbounds [2 x %struct.Db], ptr %aDbStatic, i64 0, i64 0
  %cmp17 = icmp ne ptr %27, %arraydecay
  br i1 %cmp17, label %if.then18, label %if.end26

if.then18:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %db.addr, align 8
  %aDbStatic19 = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 75
  %arraydecay20 = getelementptr inbounds [2 x %struct.Db], ptr %aDbStatic19, i64 0, i64 0
  %30 = load ptr, ptr %db.addr, align 8
  %aDb21 = getelementptr inbounds nuw %struct.sqlite3, ptr %30, i32 0, i32 4
  %31 = load ptr, ptr %aDb21, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arraydecay20, ptr align 8 %31, i64 64, i1 false)
  %32 = load ptr, ptr %db.addr, align 8
  %33 = load ptr, ptr %db.addr, align 8
  %aDb22 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %aDb22, align 8
  call void @sqlite3DbFree(ptr noundef %32, ptr noundef %34)
  %35 = load ptr, ptr %db.addr, align 8
  %aDbStatic23 = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 75
  %arraydecay24 = getelementptr inbounds [2 x %struct.Db], ptr %aDbStatic23, i64 0, i64 0
  %36 = load ptr, ptr %db.addr, align 8
  %aDb25 = getelementptr inbounds nuw %struct.sqlite3, ptr %36, i32 0, i32 4
  store ptr %arraydecay24, ptr %aDb25, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then18, %land.lhs.true, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
