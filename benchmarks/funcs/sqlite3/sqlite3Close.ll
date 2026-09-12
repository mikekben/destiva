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

@.str.1042 = external hidden unnamed_addr constant [68 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3MisuseError(i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3ErrorWithMsg(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3LeaveMutexAndCloseZombie(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @sqlite3Close(ptr noundef %db, i32 noundef %forceZombie) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %forceZombie.addr = alloca i32, align 4
  store ptr %db, ptr %db.addr, align 8
  store i32 %forceZombie, ptr %forceZombie.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %db.addr, align 8
  %call = call i32 @sqlite3SafetyCheckSickOrOk(ptr noundef %1)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @sqlite3MisuseError(i32 noundef 157333)
  store i32 %call3, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %2, i32 0, i32 3
  %3 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %3)
  %4 = load ptr, ptr %db.addr, align 8
  %mTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %4, i32 0, i32 26
  %5 = load i8, ptr %mTrace, align 8
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 8
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %6 = load ptr, ptr %db.addr, align 8
  %xTrace = getelementptr inbounds nuw %struct.sqlite3, ptr %6, i32 0, i32 43
  %7 = load ptr, ptr %xTrace, align 8
  %8 = load ptr, ptr %db.addr, align 8
  %pTraceArg = getelementptr inbounds nuw %struct.sqlite3, ptr %8, i32 0, i32 44
  %9 = load ptr, ptr %pTraceArg, align 8
  %10 = load ptr, ptr %db.addr, align 8
  %call7 = call i32 %7(i32 noundef 8, ptr noundef %9, ptr noundef %10, ptr noundef null)
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4
  %11 = load ptr, ptr %db.addr, align 8
  call void @disconnectAllVtab(ptr noundef %11)
  %12 = load ptr, ptr %db.addr, align 8
  %call9 = call i32 @sqlite3VtabRollback(ptr noundef %12)
  %13 = load i32, ptr %forceZombie.addr, align 4
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.end15, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end8
  %14 = load ptr, ptr %db.addr, align 8
  %call11 = call i32 @connectionIsBusy(ptr noundef %14)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %db.addr, align 8
  call void (ptr, i32, ptr, ...) @sqlite3ErrorWithMsg(ptr noundef %15, i32 noundef 5, ptr noundef @.str.1042)
  %16 = load ptr, ptr %db.addr, align 8
  %mutex14 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %mutex14, align 8
  call void @sqlite3_mutex_leave(ptr noundef %17)
  store i32 5, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %land.lhs.true, %if.end8
  %18 = load ptr, ptr %db.addr, align 8
  %magic = getelementptr inbounds nuw %struct.sqlite3, ptr %18, i32 0, i32 30
  store i32 1691352191, ptr %magic, align 8
  %19 = load ptr, ptr %db.addr, align 8
  call void @sqlite3LeaveMutexAndCloseZombie(ptr noundef %19)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end15, %if.then13, %if.then2, %if.then
  %20 = load i32, ptr %retval, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3SafetyCheckSickOrOk(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3VtabRollback(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @disconnectAllVtab(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @connectionIsBusy(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
