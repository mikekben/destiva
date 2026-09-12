; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.996 = external hidden unnamed_addr constant [17 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local double @sqlite3_value_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_value_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @absFunc(ptr noundef %context, i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %context.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %rVal = alloca double, align 8
  store ptr %context, ptr %context.addr, align 8
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @sqlite3_value_type(ptr noundef %2)
  switch i32 %call, label %sw.default [
    i32 1, label %sw.bb
    i32 5, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  %3 = load ptr, ptr %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx1, align 8
  %call2 = call i64 @sqlite3_value_int64(ptr noundef %4)
  store i64 %call2, ptr %iVal, align 8
  %5 = load i64, ptr %iVal, align 8
  %cmp = icmp slt i64 %5, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %sw.bb
  %6 = load i64, ptr %iVal, align 8
  %cmp3 = icmp eq i64 %6, -9223372036854775808
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %7 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_error(ptr noundef %7, ptr noundef @.str.996, i32 noundef -1)
  br label %sw.epilog

if.end:                                           ; preds = %if.then
  %8 = load i64, ptr %iVal, align 8
  %sub = sub nsw i64 0, %8
  store i64 %sub, ptr %iVal, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.end, %sw.bb
  %9 = load ptr, ptr %context.addr, align 8
  %10 = load i64, ptr %iVal, align 8
  call void @sqlite3_result_int64(ptr noundef %9, i64 noundef %10)
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %11 = load ptr, ptr %context.addr, align 8
  call void @sqlite3_result_null(ptr noundef %11)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %12 = load ptr, ptr %argv.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %12, i64 0
  %13 = load ptr, ptr %arrayidx7, align 8
  %call8 = call double @sqlite3_value_double(ptr noundef %13)
  store double %call8, ptr %rVal, align 8
  %14 = load double, ptr %rVal, align 8
  %cmp9 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %sw.default
  %15 = load double, ptr %rVal, align 8
  %fneg = fneg double %15
  store double %fneg, ptr %rVal, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %sw.default
  %16 = load ptr, ptr %context.addr, align 8
  %17 = load double, ptr %rVal, align 8
  call void @sqlite3_result_double(ptr noundef %16, double noundef %17)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end11, %sw.bb6, %if.end5, %if.then4
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
