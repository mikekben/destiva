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
declare dso_local ptr @sqlite3_value_text(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_errmsg(ptr noundef %db) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call ptr @sqlite3ErrStr(i32 noundef 7)
  store ptr %call, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %call1 = call i32 @sqlite3SafetyCheckSickOrOk(ptr noundef %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call i32 @sqlite3MisuseError(i32 noundef 158644)
  %call5 = call ptr @sqlite3ErrStr(i32 noundef %call4)
  store ptr %call5, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %tobool7 = icmp ne i8 %5, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %call9 = call ptr @sqlite3ErrStr(i32 noundef 7)
  store ptr %call9, ptr %z, align 8
  br label %if.end16

if.else:                                          ; preds = %if.end6
  %6 = load ptr, ptr %db.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 12
  %7 = load i32, ptr %errCode, align 8
  %tobool10 = icmp ne i32 %7, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %8 = load ptr, ptr %db.addr, align 8
  %pErr = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 59
  %9 = load ptr, ptr %pErr, align 8
  %call11 = call ptr @sqlite3_value_text(ptr noundef %9)
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call11, %cond.true ], [ null, %cond.false ]
  store ptr %cond, ptr %z, align 8
  %10 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %10, null
  br i1 %cmp, label %if.then12, label %if.end15

if.then12:                                        ; preds = %cond.end
  %11 = load ptr, ptr %db.addr, align 8
  %errCode13 = getelementptr inbounds nuw %struct.sqlite3, ptr %11, i32 0, i32 12
  %12 = load i32, ptr %errCode13, align 8
  %call14 = call ptr @sqlite3ErrStr(i32 noundef %12)
  store ptr %call14, ptr %z, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %cond.end
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then8
  %13 = load ptr, ptr %db.addr, align 8
  %mutex17 = getelementptr inbounds nuw %struct.sqlite3, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %mutex17, align 8
  call void @sqlite3_mutex_leave(ptr noundef %14)
  %15 = load ptr, ptr %z, align 8
  store ptr %15, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end16, %if.then3, %if.then
  %16 = load ptr, ptr %retval, align 8
  ret ptr %16
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SafetyCheckSickOrOk(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
