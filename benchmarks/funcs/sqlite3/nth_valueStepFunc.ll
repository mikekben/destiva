; ModuleID = 'bench/sqlite3.ll'
source_filename = "sqlite-amalgamation-3300100/sqlite3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NthValueCtx = type { i64, ptr }

@.str.782 = external hidden unnamed_addr constant [56 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local double @sqlite3_value_double(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @sqlite3_value_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_value_dup(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @sqlite3_result_error_nomem(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @sqlite3_aggregate_context(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @sqlite3_value_numeric_type(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @nth_valueStepFunc(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %iVal = alloca i64, align 8
  %fVal = alloca double, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @sqlite3_aggregate_context(ptr noundef %0, i32 noundef 16)
  store ptr %call, ptr %p, align 8
  %1 = load ptr, ptr %p, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end26

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @sqlite3_value_numeric_type(ptr noundef %3)
  switch i32 %call1, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.then
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i64 @sqlite3_value_int64(ptr noundef %5)
  store i64 %call3, ptr %iVal, align 8
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.then
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %6, i64 1
  %7 = load ptr, ptr %arrayidx5, align 8
  %call6 = call double @sqlite3_value_double(ptr noundef %7)
  store double %call6, ptr %fVal, align 8
  %8 = load double, ptr %fVal, align 8
  %conv = fptosi double %8 to i64
  %conv7 = sitofp i64 %conv to double
  %9 = load double, ptr %fVal, align 8
  %cmp = fcmp une double %conv7, %9
  br i1 %cmp, label %if.then9, label %if.end

if.then9:                                         ; preds = %sw.bb4
  br label %error_out

if.end:                                           ; preds = %sw.bb4
  %10 = load double, ptr %fVal, align 8
  %conv10 = fptosi double %10 to i64
  store i64 %conv10, ptr %iVal, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %error_out

sw.epilog:                                        ; preds = %if.end, %sw.bb
  %11 = load i64, ptr %iVal, align 8
  %cmp11 = icmp sle i64 %11, 0
  br i1 %cmp11, label %if.then13, label %if.end14

if.then13:                                        ; preds = %sw.epilog
  br label %error_out

if.end14:                                         ; preds = %sw.epilog
  %12 = load ptr, ptr %p, align 8
  %nStep = getelementptr inbounds nuw %struct.NthValueCtx, ptr %12, i32 0, i32 0
  %13 = load i64, ptr %nStep, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %nStep, align 8
  %14 = load i64, ptr %iVal, align 8
  %15 = load ptr, ptr %p, align 8
  %nStep15 = getelementptr inbounds nuw %struct.NthValueCtx, ptr %15, i32 0, i32 0
  %16 = load i64, ptr %nStep15, align 8
  %cmp16 = icmp eq i64 %14, %16
  br i1 %cmp16, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end14
  %17 = load ptr, ptr %apArg.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx19, align 8
  %call20 = call ptr @sqlite3_value_dup(ptr noundef %18)
  %19 = load ptr, ptr %p, align 8
  %pValue = getelementptr inbounds nuw %struct.NthValueCtx, ptr %19, i32 0, i32 1
  store ptr %call20, ptr %pValue, align 8
  %20 = load ptr, ptr %p, align 8
  %pValue21 = getelementptr inbounds nuw %struct.NthValueCtx, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pValue21, align 8
  %tobool22 = icmp ne ptr %21, null
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.then18
  %22 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error_nomem(ptr noundef %22)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.end14
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %entry
  %23 = load i32, ptr %nArg.addr, align 4
  %24 = load ptr, ptr %apArg.addr, align 8
  br label %return

error_out:                                        ; preds = %if.then13, %sw.default, %if.then9
  %25 = load ptr, ptr %pCtx.addr, align 8
  call void @sqlite3_result_error(ptr noundef %25, ptr noundef @.str.782, i32 noundef -1)
  br label %return

return:                                           ; preds = %error_out, %if.end26
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
