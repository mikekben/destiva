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

@.str.27 = external hidden unnamed_addr constant [21 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3Error(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_wal_checkpoint_v2(ptr noundef %db, ptr noundef %zDb, i32 noundef %eMode, ptr noundef %pnLog, ptr noundef %pnCkpt) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zDb.addr = alloca ptr, align 8
  %eMode.addr = alloca i32, align 4
  %pnLog.addr = alloca ptr, align 8
  %pnCkpt.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %iDb = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store ptr %zDb, ptr %zDb.addr, align 8
  store i32 %eMode, ptr %eMode.addr, align 4
  store ptr %pnLog, ptr %pnLog.addr, align 8
  store ptr %pnCkpt, ptr %pnCkpt.addr, align 8
  store i32 10, ptr %iDb, align 4
  %0 = load ptr, ptr %pnLog.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pnLog.addr, align 8
  store i32 -1, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pnCkpt.addr, align 8
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %pnCkpt.addr, align 8
  store i32 -1, ptr %3, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load i32, ptr %eMode.addr, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end3
  %5 = load i32, ptr %eMode.addr, align 4
  %cmp4 = icmp sgt i32 %5, 3
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 21, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %6 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %7)
  %8 = load ptr, ptr %zDb.addr, align 8
  %tobool7 = icmp ne ptr %8, null
  br i1 %tobool7, label %land.lhs.true, label %if.end10

land.lhs.true:                                    ; preds = %if.end6
  %9 = load ptr, ptr %zDb.addr, align 8
  %arrayidx = getelementptr inbounds i8, ptr %9, i64 0
  %10 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %tobool8 = icmp ne i32 %conv, 0
  br i1 %tobool8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %db.addr, align 8
  %12 = load ptr, ptr %zDb.addr, align 8
  %call = call i32 @sqlite3FindDbName(ptr noundef %11, ptr noundef %12)
  store i32 %call, ptr %iDb, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true, %if.end6
  %13 = load i32, ptr %iDb, align 4
  %cmp11 = icmp slt i32 %13, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  store i32 1, ptr %rc, align 4
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load ptr, ptr %zDb.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %14, i32 noundef 1, ptr noundef @.str.27, ptr noundef %15)
  br label %if.end15

if.else:                                          ; preds = %if.end10
  %16 = load ptr, ptr %db.addr, align 8
  %busyHandler = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 74
  %nBusy = getelementptr inbounds nuw %struct.BusyHandler, ptr %busyHandler, i32 0, i32 2
  store i32 0, ptr %nBusy, align 8
  %17 = load ptr, ptr %db.addr, align 8
  %18 = load i32, ptr %iDb, align 4
  %19 = load i32, ptr %eMode.addr, align 4
  %20 = load ptr, ptr %pnLog.addr, align 8
  %21 = load ptr, ptr %pnCkpt.addr, align 8
  %call14 = call i32 @sqlite3Checkpoint(ptr noundef %17, i32 noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %21)
  store i32 %call14, ptr %rc, align 4
  %22 = load ptr, ptr %db.addr, align 8
  %23 = load i32, ptr %rc, align 4
  call void @sqlite3Error(ptr noundef %22, i32 noundef %23)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then13
  %24 = load ptr, ptr %db.addr, align 8
  %25 = load i32, ptr %rc, align 4
  %call16 = call i32 @sqlite3ApiExit(ptr noundef %24, i32 noundef %25)
  store i32 %call16, ptr %rc, align 4
  %26 = load ptr, ptr %db.addr, align 8
  %nVdbeActive = getelementptr inbounds nuw %struct.sqlite3, ptr %26, i32 0, i32 36
  %27 = load i32, ptr %nVdbeActive, align 8
  %cmp17 = icmp eq i32 %27, 0
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end15
  %28 = load ptr, ptr %db.addr, align 8
  %u1 = getelementptr inbounds nuw %struct.sqlite3, ptr %28, i32 0, i32 60
  store volatile i32 0, ptr %u1, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end15
  %29 = load ptr, ptr %db.addr, align 8
  %mutex21 = getelementptr inbounds nuw %struct.sqlite3, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %mutex21, align 8
  call void @sqlite3_mutex_leave(ptr noundef %30)
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then5
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3FindDbName(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3Checkpoint(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
