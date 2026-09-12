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

@sqlite3_errmsg16.outOfMem = external hidden constant [14 x i16], align 16
@sqlite3_errmsg16.misuse = external hidden constant [34 x i16], align 16

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_text16(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3ErrStr(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SafetyCheckSickOrOk(ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_errmsg16(ptr noundef %db) #0 {
entry:
  %retval = alloca ptr, align 8
  %db.addr = alloca ptr, align 8
  %z = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @sqlite3_errmsg16.outOfMem, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3SafetyCheckSickOrOk(ptr noundef %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  store ptr @sqlite3_errmsg16.misuse, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  %mallocFailed = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 19
  %5 = load i8, ptr %mallocFailed, align 1
  %tobool4 = icmp ne i8 %5, 0
  br i1 %tobool4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  store ptr @sqlite3_errmsg16.outOfMem, ptr %z, align 8
  br label %if.end13

if.else:                                          ; preds = %if.end3
  %6 = load ptr, ptr %db.addr, align 8
  %pErr = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 59
  %7 = load ptr, ptr %pErr, align 8
  %call6 = call ptr @sqlite3_value_text16(ptr noundef %7)
  store ptr %call6, ptr %z, align 8
  %8 = load ptr, ptr %z, align 8
  %cmp = icmp eq ptr %8, null
  br i1 %cmp, label %if.then7, label %if.end12

if.then7:                                         ; preds = %if.else
  %9 = load ptr, ptr %db.addr, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %errCode = getelementptr inbounds nuw %struct.sqlite3, ptr %10, i32 0, i32 12
  %11 = load i32, ptr %errCode, align 8
  %12 = load ptr, ptr %db.addr, align 8
  %errCode8 = getelementptr inbounds nuw %struct.sqlite3, ptr %12, i32 0, i32 12
  %13 = load i32, ptr %errCode8, align 8
  %call9 = call ptr @sqlite3ErrStr(i32 noundef %13)
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %9, i32 noundef %11, ptr noundef %call9)
  %14 = load ptr, ptr %db.addr, align 8
  %pErr10 = getelementptr inbounds nuw %struct.sqlite3, ptr %14, i32 0, i32 59
  %15 = load ptr, ptr %pErr10, align 8
  %call11 = call ptr @sqlite3_value_text16(ptr noundef %15)
  store ptr %call11, ptr %z, align 8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %if.else
  %16 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomClear(ptr noundef %16)
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.then5
  %17 = load ptr, ptr %db.addr, align 8
  %mutex14 = getelementptr inbounds nuw %struct.sqlite3, ptr %17, i32 0, i32 3
  %18 = load ptr, ptr %mutex14, align 8
  call void @sqlite3_mutex_leave(ptr noundef %18)
  %19 = load ptr, ptr %z, align 8
  store ptr %19, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end13, %if.then2, %if.then
  %20 = load ptr, ptr %retval, align 8
  ret ptr %20
}

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomClear(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
