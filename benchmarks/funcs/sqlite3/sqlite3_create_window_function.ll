; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
declare hidden i32 @createFunctionApi(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @sqlite3_create_window_function(ptr noundef %db, ptr noundef %zFunc, i32 noundef %nArg, i32 noundef %enc, ptr noundef %p, ptr noundef %xStep, ptr noundef %xFinal, ptr noundef %xValue, ptr noundef %xInverse, ptr noundef %xDestroy) #0 {
entry:
  %db.addr = alloca ptr, align 8
  %zFunc.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %enc.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %xStep.addr = alloca ptr, align 8
  %xFinal.addr = alloca ptr, align 8
  %xValue.addr = alloca ptr, align 8
  %xInverse.addr = alloca ptr, align 8
  %xDestroy.addr = alloca ptr, align 8
  store ptr %db, ptr %db.addr, align 8
  store ptr %zFunc, ptr %zFunc.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store i32 %enc, ptr %enc.addr, align 4
  store ptr %p, ptr %p.addr, align 8
  store ptr %xStep, ptr %xStep.addr, align 8
  store ptr %xFinal, ptr %xFinal.addr, align 8
  store ptr %xValue, ptr %xValue.addr, align 8
  store ptr %xInverse, ptr %xInverse.addr, align 8
  store ptr %xDestroy, ptr %xDestroy.addr, align 8
  %0 = load ptr, ptr %db.addr, align 8
  %1 = load ptr, ptr %zFunc.addr, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %3 = load i32, ptr %enc.addr, align 4
  %4 = load ptr, ptr %p.addr, align 8
  %5 = load ptr, ptr %xStep.addr, align 8
  %6 = load ptr, ptr %xFinal.addr, align 8
  %7 = load ptr, ptr %xValue.addr, align 8
  %8 = load ptr, ptr %xInverse.addr, align 8
  %9 = load ptr, ptr %xDestroy.addr, align 8
  %call = call i32 @createFunctionApi(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef null, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret i32 %call
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
