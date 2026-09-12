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
declare hidden void @sqlite3DbFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @sqlite3ApiExit(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_create_function16(ptr noundef %db, ptr noundef %zFunctionName, i32 noundef %nArg, i32 noundef %eTextRep, ptr noundef %p, ptr noundef %xSFunc, ptr noundef %xStep, ptr noundef %xFinal) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zFunctionName.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %eTextRep.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %xSFunc.addr = alloca ptr, align 8
  %xStep.addr = alloca ptr, align 8
  %xFinal.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %zFunc8 = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zFunctionName, ptr %zFunctionName.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store i32 %eTextRep, ptr %eTextRep.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %xSFunc, ptr %xSFunc.addr, align 8
  store ptr %xStep, ptr %xStep.addr, align 8
  store ptr %xFinal, ptr %xFinal.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %mutex = getelementptr inbounds nuw %struct.sqlite3, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %mutex, align 8
  call void @sqlite3_mutex_enter(ptr noundef %1)
  %2 = load ptr, ptr %db.addr, align 8
  %3 = load ptr, ptr %zFunctionName.addr, align 8
  %call = call ptr @sqlite3Utf16to8(ptr noundef %2, ptr noundef %3, i32 noundef -1, i8 noundef zeroext 2)
  store ptr %call, ptr %zFunc8, align 8
  %4 = load ptr, ptr %db.addr, align 8
  %5 = load ptr, ptr %zFunc8, align 8
  %6 = load i32, ptr %nArg.addr, align 4
  %7 = load i32, ptr %eTextRep.addr, align 4
  %8 = load ptr, ptr %p.addr, align 8
  %9 = load ptr, ptr %xSFunc.addr, align 8
  %10 = load ptr, ptr %xStep.addr, align 8
  %11 = load ptr, ptr %xFinal.addr, align 8
  %call1 = call i32 @sqlite3CreateFunc(ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call1, ptr %rc, align 4
  %12 = load ptr, ptr %db.addr, align 8
  %13 = load ptr, ptr %zFunc8, align 8
  call void @sqlite3DbFree(ptr noundef %12, ptr noundef %13)
  %14 = load ptr, ptr %db.addr, align 8
  %15 = load i32, ptr %rc, align 4
  %call2 = call i32 @sqlite3ApiExit(ptr noundef %14, i32 noundef %15)
  store i32 %call2, ptr %rc, align 4
  %16 = load ptr, ptr %db.addr, align 8
  %mutex3 = getelementptr inbounds nuw %struct.sqlite3, ptr %16, i32 0, i32 3
  %17 = load ptr, ptr %mutex3, align 8
  call void @sqlite3_mutex_leave(ptr noundef %17)
  %18 = load i32, ptr %rc, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden ptr @sqlite3Utf16to8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) #0

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
