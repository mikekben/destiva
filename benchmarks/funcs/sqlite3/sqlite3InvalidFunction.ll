; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.1070 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_free(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_mprintf(ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @sqlite3InvalidFunction(ptr noundef %context, i32 noundef %NotUsed, ptr noundef %NotUsed2) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %NotUsed.addr = alloca i32, align 4
  %NotUsed2.addr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %NotUsed, ptr %NotUsed.addr, align 4
  store ptr %NotUsed2, ptr %NotUsed2.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %call = call ptr @sqlite3_user_data(ptr noundef %0)
  store ptr %call, ptr %zName, align 8
  %1 = load i32, ptr %NotUsed.addr, align 4
  %2 = load ptr, ptr %NotUsed2.addr, align 8
  %3 = load ptr, ptr %zName, align 8
  %call1 = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef @.str.1070, ptr noundef %3)
  store ptr %call1, ptr %zErr, align 8
  %4 = load ptr, ptr %context.addr, align 8
  %5 = load ptr, ptr %zErr, align 8
  call void @sqlite3_result_error(ptr noundef %4, ptr noundef %5, i32 noundef -1)
  %6 = load ptr, ptr %zErr, align 8
  call void @sqlite3_free(ptr noundef %6)
  ret void
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
