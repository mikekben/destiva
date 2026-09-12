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
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_create_function_v2(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_overload_function(ptr noundef %db, ptr noundef %zName, i32 noundef %nArg) #0 {
entry:
  %retval = alloca i32, align 4
  %db.addr = alloca ptr, align 8
  %zName.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %zCopy = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zName, ptr %zName.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %zName.addr, align 8
  %4 = load i32, ptr %nArg.addr, align 4
  %call = call ptr @sqlite3FindFunction(ptr noundef %2, ptr noundef %3, i32 noundef %4, i8 noundef zeroext 1, i8 noundef zeroext 0)
  %cmp = icmp ne ptr %call, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, ptr %rc, align 4
  %5 = load ptr, ptr %db.addr, align 8
  %mutex1 = getelementptr inbounds nuw %struct.sqlite3, ptr %5, i32 0, i32 3
  %6 = load ptr, ptr %mutex1, align 8
  call void @sqlite3_mutex_leave(ptr noundef %6)
  %7 = load i32, ptr %rc, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %zName.addr, align 8
  %call2 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef %8)
  store ptr %call2, ptr %zCopy, align 8
  %9 = load ptr, ptr %zCopy, align 8
  %cmp3 = icmp eq ptr %9, null
  br i1 %cmp3, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 7, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %10 = load ptr, ptr %db.addr, align 8
  %11 = load ptr, ptr %zName.addr, align 8
  %12 = load i32, ptr %nArg.addr, align 4
  %13 = load ptr, ptr %zCopy, align 8
  %call7 = call i32 @sqlite3_create_function_v2(ptr noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef 1, ptr noundef %13, ptr noundef @sqlite3InvalidFunction, ptr noundef null, ptr noundef null, ptr noundef @sqlite3_free)
  store i32 %call7, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3FindFunction(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3InvalidFunction(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
