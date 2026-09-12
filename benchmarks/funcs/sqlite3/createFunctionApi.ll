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
%struct.FuncDestructor = type { i32, ptr, ptr }

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_enter(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_mutex_leave(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Malloc(i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @sqlite3OomFault(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @createFunctionApi(ptr noundef %db, ptr noundef %zFunc, i32 noundef %nArg, i32 noundef %enc, ptr noundef %p, ptr noundef %xSFunc, ptr noundef %xStep, ptr noundef %xFinal, ptr noundef %xValue, ptr noundef %xInverse, ptr noundef %xDestroy) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zFunc.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %enc.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %xSFunc.addr = alloca ptr, align 8
  %xStep.addr = alloca ptr, align 8
  %xFinal.addr = alloca ptr, align 8
  %xValue.addr = alloca ptr, align 8
  %xInverse.addr = alloca ptr, align 8
  %xDestroy.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pArg = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zFunc, ptr %zFunc.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store i32 %enc, ptr %enc.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %xSFunc, ptr %xSFunc.addr, align 8
  store ptr %xStep, ptr %xStep.addr, align 8
  store ptr %xFinal, ptr %xFinal.addr, align 8
  store ptr %xValue, ptr %xValue.addr, align 8
  store ptr %xInverse, ptr %xInverse.addr, align 8
  store ptr %xDestroy, ptr %xDestroy.addr, align 8
  store i32 1, ptr %rc, align 4
  store ptr null, ptr %pArg, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %xDestroy.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = call ptr @sqlite3Malloc(i64 noundef 24)
  store ptr %call, ptr %pArg, align 8
  %3 = load ptr, ptr %pArg, align 8
  %tobool1 = icmp ne ptr %3, null
  br i1 %tobool1, label %if.end, label %if.then2

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %db.addr, align 8
  call void @sqlite3OomFault(ptr noundef %4)
  %5 = load ptr, ptr %xDestroy.addr, align 8
  %6 = load ptr, ptr %p.addr, align 8
  call void %5(ptr noundef %6)
  br label %out

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %pArg, align 8
  %nRef = getelementptr inbounds nuw %struct.FuncDestructor, ptr %7, i32 0, i32 0
  store i32 0, ptr %nRef, align 8
  %8 = load ptr, ptr %xDestroy.addr, align 8
  %9 = load ptr, ptr %pArg, align 8
  %xDestroy3 = getelementptr inbounds nuw %struct.FuncDestructor, ptr %9, i32 0, i32 1
  store ptr %8, ptr %xDestroy3, align 8
  %10 = load ptr, ptr %p.addr, align 8
  %11 = load ptr, ptr %pArg, align 8
  %pUserData = getelementptr inbounds nuw %struct.FuncDestructor, ptr %11, i32 0, i32 2
  store ptr %10, ptr %pUserData, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %zFunc.addr, align 8
  %14 = load i32, ptr %nArg.addr, align 4
  %15 = load i32, ptr %enc.addr, align 4
  %16 = load ptr, ptr %p.addr, align 8
  %17 = load ptr, ptr %xSFunc.addr, align 8
  %18 = load ptr, ptr %xStep.addr, align 8
  %19 = load ptr, ptr %xFinal.addr, align 8
  %20 = load ptr, ptr %xValue.addr, align 8
  %21 = load ptr, ptr %xInverse.addr, align 8
  %22 = load ptr, ptr %pArg, align 8
  %call5 = call i32 @sqlite3CreateFunc(ptr noundef %12, ptr noundef %13, i32 noundef %14, i32 noundef %15, ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22)
  store i32 %call5, ptr %rc, align 4
  %23 = load ptr, ptr %pArg, align 8
  %tobool6 = icmp ne ptr %23, null
  br i1 %tobool6, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end4
  %24 = load ptr, ptr %pArg, align 8
  %nRef7 = getelementptr inbounds nuw %struct.FuncDestructor, ptr %24, i32 0, i32 0
  %25 = load i32, ptr %nRef7, align 8
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true
  %26 = load ptr, ptr %xDestroy.addr, align 8
  %27 = load ptr, ptr %p.addr, align 8
  call void %26(ptr noundef %27)
  %28 = load ptr, ptr %pArg, align 8
  call void @sqlite3_free(ptr noundef %28)
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true, %if.end4
  br label %out

out:                                              ; preds = %if.end9, %if.then2
  %29 = load ptr, ptr %db.addr, align 8
  %30 = load i32, ptr %rc, align 4
  %call10 = call i32 @sqlite3ApiExit(ptr noundef %29, i32 noundef %30)
  store i32 %call10, ptr %rc, align 4
  %31 = load ptr, ptr %db.addr, align 8
  %mutex11 = getelementptr inbounds nuw %struct.sqlite3, ptr %31, i32 0, i32 3
  %32 = load ptr, ptr %mutex11, align 8
  call void @sqlite3_mutex_leave(ptr noundef %32)
  %33 = load i32, ptr %rc, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3CreateFunc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
