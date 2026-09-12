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
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeEnterAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3BtreeLeaveAll(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SafetyCheckOk(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3LockAndPrepare(ptr noundef %db, ptr noundef %zSql, i32 noundef %nBytes, i32 noundef %prepFlags, ptr noundef %pOld, ptr noundef %ppStmt, ptr noundef %pzTail) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zSql.addr = alloca ptr, align 8
  %nBytes.addr = alloca i32, align 4
  %prepFlags.addr = alloca i32, align 4
  %pOld.addr = alloca ptr, align 8
  %ppStmt.addr = alloca ptr, align 8
  %pzTail.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cnt = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zSql, ptr %zSql.addr, align 8
  store i32 %nBytes, ptr %nBytes.addr, align 4
  store i32 %prepFlags, ptr %prepFlags.addr, align 4
  store ptr %pOld, ptr %pOld.addr, align 8
  store ptr %ppStmt, ptr %ppStmt.addr, align 8
  store ptr %pzTail, ptr %pzTail.addr, align 8
  store i32 0, ptr %cnt, align 4
  %0 = load ptr, ptr %ppStmt.addr, align 8
  store ptr null, ptr %0, align 8
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3SafetyCheckOk(ptr noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %zSql.addr, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %call1 = call i32 @sqlite3MisuseError(i32 noundef 125394)
  store i32 %call1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %3, i32 0, i32 3
  %4 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %4)
  %5 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeEnterAll(ptr noundef %5)
  br label %do.body

do.body:                                          ; preds = %lor.end, %if.end
  %6 = load ptr, ptr %db.addr, align 8
  %7 = load ptr, ptr %zSql.addr, align 8
  %8 = load i32, ptr %nBytes.addr, align 4
  %9 = load i32, ptr %prepFlags.addr, align 4
  %10 = load ptr, ptr %pOld.addr, align 8
  %11 = load ptr, ptr %ppStmt.addr, align 8
  %12 = load ptr, ptr %pzTail.addr, align 8
  %call2 = call i32 @sqlite3Prepare(ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef %12)
  store i32 %call2, ptr %rc, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %13 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %13, 513
  br i1 %cmp3, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %do.cond
  %14 = load i32, ptr %rc, align 4
  %cmp4 = icmp eq i32 %14, 17
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs
  %15 = load ptr, ptr %db.addr, align 8
  call void @sqlite3ResetOneSchema(ptr noundef %15, i32 noundef -1)
  %16 = load i32, ptr %cnt, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %cnt, align 4
  %cmp5 = icmp eq i32 %16, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs
  %17 = phi i1 [ false, %lor.rhs ], [ %cmp5, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %do.cond
  %18 = phi i1 [ true, %do.cond ], [ %17, %land.end ]
  br i1 %18, label %do.body, label %do.end, !llvm.loop !6

do.end:                                           ; preds = %lor.end
  %19 = load ptr, ptr %db.addr, align 8
  call void @sqlite3BtreeLeaveAll(ptr noundef %19)
  %20 = load ptr, ptr %db.addr, align 8
  %21 = load i32, ptr %rc, align 4
  %call6 = call i32 @sqlite3ApiExit(ptr noundef %20, i32 noundef %21)
  store i32 %call6, ptr %rc, align 4
  %22 = load ptr, ptr %db.addr, align 8
  %mutex7 = getelementptr inbounds nuw %struct.sqlite3, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %mutex7, align 8
  call void @sqlite3_mutex_leave(ptr noundef %23)
  %24 = load i32, ptr %rc, align 4
  store i32 %24, ptr %retval, align 4
  br label %return

return:                                           ; preds = %do.end, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ResetOneSchema(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #0

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
