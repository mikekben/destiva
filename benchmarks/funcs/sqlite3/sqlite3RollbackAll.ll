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
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetAllSchemasOfConnection(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeRollback(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ExpirePreparedStatements(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3BtreeIsInTrans(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BeginBenignMalloc() #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3EndBenignMalloc() #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3RollbackAll(ptr noundef %db, i32 noundef %tripCode) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %tripCode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %inTrans = alloca i32, align 4
  %schemaChange = alloca i32, align 4
  %p = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store i32 %tripCode, ptr %tripCode.addr, align 4
  store i32 0, ptr %inTrans, align 4
  call void @sqlite3BeginBenignMalloc()
  %0 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %0)
  %1 = load ptr, ptr %db.addr, align 8
  %mDbFlags = getelementptr inbounds nuw %struct.sqlite3, ptr %1, i32 0, i32 6
  %2 = load i32, ptr %mDbFlags, align 4
  %and = and i32 %2, 1
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load ptr, ptr %db.addr, align 8
  %init = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 35
  %busy = getelementptr inbounds nuw %struct.sqlite3InitInfo, ptr %init, i32 0, i32 2
  %4 = load i8, ptr %busy, align 1
  %conv = zext i8 %4 to i32
  %cmp1 = icmp eq i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %5 to i32
  store i32 %land.ext, ptr %schemaChange, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %land.end
  %6 = load i32, ptr %i, align 4
  %7 = load ptr, ptr %db.addr, align 8
  %nDb = getelementptr inbounds nuw %struct.sqlite3, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %nDb, align 8
  %cmp3 = icmp slt i32 %6, %8
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %db.addr, align 8
  %aDb = getelementptr inbounds nuw %struct.sqlite3, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %aDb, align 8
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds %struct.Db, ptr %10, i64 %idxprom
  %pBt = getelementptr inbounds nuw %struct.Db, ptr %arrayidx, i32 0, i32 1
  %12 = load ptr, ptr %pBt, align 8
  store ptr %12, ptr %p, align 8
  %13 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %14 = load ptr, ptr %p, align 8
  %call = call i32 @sqlite3BtreeIsInTrans(ptr noundef %14)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 1, ptr %inTrans, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %15 = load ptr, ptr %p, align 8
  %16 = load i32, ptr %tripCode.addr, align 4
  %17 = load i32, ptr %schemaChange, align 4
  %tobool7 = icmp ne i32 %17, 0
  %lnot = xor i1 %tobool7, true
  %lnot.ext = zext i1 %lnot to i32
  %call8 = call i32 @sqlite3BtreeRollback(ptr noundef %15, i32 noundef %16, i32 noundef %lnot.ext)
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
  %call10 = call i32 @sqlite3VtabRollback(ptr noundef %19)
  call void @sqlite3EndBenignMalloc()
  %20 = load i32, ptr %schemaChange, align 4
  %tobool11 = icmp ne i32 %20, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.end
  %21 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ExpirePreparedStatements(ptr noundef %21, i32 noundef 0)
  %22 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ResetAllSchemasOfConnection(ptr noundef %22)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end
  %23 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %23)
  %24 = load ptr, ptr %db.addr, align 8
  %nDeferredCons = getelementptr inbounds nuw %struct.sqlite3, ptr %24, i32 0, i32 80
  store i64 0, ptr %nDeferredCons, align 8
  %25 = load ptr, ptr %db.addr, align 8
  %nDeferredImmCons = getelementptr inbounds nuw %struct.sqlite3, ptr %25, i32 0, i32 81
  store i64 0, ptr %nDeferredImmCons, align 8
  %26 = load ptr, ptr %db.addr, align 8
  %flags = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 7
  %27 = load i64, ptr %flags, align 8
  %and14 = and i64 %27, -524289
  store i64 %and14, ptr %flags, align 8
  %28 = load ptr, ptr %db.addr, align 8
  %xRollbackCallback = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 50
  %29 = load ptr, ptr %xRollbackCallback, align 8
  %tobool15 = icmp ne ptr %29, null
  br i1 %tobool15, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %30 = load i32, ptr %inTrans, align 4
  %tobool16 = icmp ne i32 %30, 0
  br i1 %tobool16, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %31 = load ptr, ptr %db.addr, align 8
  %autoCommit = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 17
  %32 = load i8, ptr %autoCommit, align 1
  %tobool17 = icmp ne i8 %32, 0
  br i1 %tobool17, label %if.end20, label %if.then18

if.then18:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %33 = load ptr, ptr %db.addr, align 8
  %xRollbackCallback19 = getelementptr inbounds nuw %struct.sqlite3, ptr %33, i32 0, i32 50
  %34 = load ptr, ptr %xRollbackCallback19, align 8
  %35 = load ptr, ptr %db.addr, align 8
  %pRollbackArg = getelementptr inbounds nuw %struct.sqlite3, ptr %35, i32 0, i32 49
  %36 = load ptr, ptr %pRollbackArg, align 8
  call void %34(ptr noundef %36)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %lor.lhs.false, %if.end13
  ret void
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabRollback(ptr noundef) #0

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
