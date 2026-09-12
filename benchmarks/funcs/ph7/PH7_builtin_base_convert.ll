; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1
@.str.523 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.964 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.965 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.966 = external hidden unnamed_addr constant [4 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string_format(ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHexStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBinaryStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyOctalStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrToInt64(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_base_convert(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %iFbase = alloca i32, align 4
  %iTobase = alloca i32, align 4
  %zNum = alloca ptr, align 8
  %iNum = alloca i64, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_string(ptr noundef %1, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 1
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_to_int(ptr noundef %3)
  store i32 %call1, ptr %iFbase, align 4
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 2
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_to_int(ptr noundef %5)
  store i32 %call3, ptr %iTobase, align 4
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @ph7_value_is_string(ptr noundef %7)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_string(ptr noundef %9, ptr noundef %nLen)
  store ptr %call8, ptr %zNum, align 8
  %10 = load i32, ptr %nLen, align 4
  %cmp9 = icmp slt i32 %10, 1
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then6
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_string(ptr noundef %11, ptr noundef @.str.4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.then6
  %12 = load i32, ptr %iFbase, align 4
  switch i32 %12, label %sw.default [
    i32 16, label %sw.bb
    i32 8, label %sw.bb14
    i32 2, label %sw.bb16
  ]

sw.bb:                                            ; preds = %if.end12
  %13 = load ptr, ptr %zNum, align 8
  %14 = load i32, ptr %nLen, align 4
  %call13 = call i32 @SyHexStrToInt64(ptr noundef %13, i32 noundef %14, ptr noundef %iNum, ptr noundef null)
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end12
  %15 = load ptr, ptr %zNum, align 8
  %16 = load i32, ptr %nLen, align 4
  %call15 = call i32 @SyOctalStrToInt64(ptr noundef %15, i32 noundef %16, ptr noundef %iNum, ptr noundef null)
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  %17 = load ptr, ptr %zNum, align 8
  %18 = load i32, ptr %nLen, align 4
  %call17 = call i32 @SyBinaryStrToInt64(ptr noundef %17, i32 noundef %18, ptr noundef %iNum, ptr noundef null)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  %19 = load ptr, ptr %zNum, align 8
  %20 = load i32, ptr %nLen, align 4
  %call18 = call i32 @SyStrToInt64(ptr noundef %19, i32 noundef %20, ptr noundef %iNum, ptr noundef null)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb16, %sw.bb14, %sw.bb
  br label %if.end21

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %apArg.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i64 @ph7_value_to_int64(ptr noundef %22)
  store i64 %call20, ptr %iNum, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %sw.epilog
  %23 = load i32, ptr %iTobase, align 4
  switch i32 %23, label %sw.default28 [
    i32 16, label %sw.bb22
    i32 8, label %sw.bb24
    i32 2, label %sw.bb26
  ]

sw.bb22:                                          ; preds = %if.end21
  %24 = load ptr, ptr %pCtx.addr, align 8
  %25 = load i64, ptr %iNum, align 8
  %call23 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %24, ptr noundef @.str.964, i64 noundef %25)
  br label %sw.epilog30

sw.bb24:                                          ; preds = %if.end21
  %26 = load ptr, ptr %pCtx.addr, align 8
  %27 = load i64, ptr %iNum, align 8
  %call25 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %26, ptr noundef @.str.965, i64 noundef %27)
  br label %sw.epilog30

sw.bb26:                                          ; preds = %if.end21
  %28 = load ptr, ptr %pCtx.addr, align 8
  %29 = load i64, ptr %iNum, align 8
  %call27 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %28, ptr noundef @.str.966, i64 noundef %29)
  br label %sw.epilog30

sw.default28:                                     ; preds = %if.end21
  %30 = load ptr, ptr %pCtx.addr, align 8
  %31 = load i64, ptr %iNum, align 8
  %call29 = call i32 (ptr, ptr, ...) @ph7_result_string_format(ptr noundef %30, ptr noundef @.str.523, i64 noundef %31)
  br label %sw.epilog30

sw.epilog30:                                      ; preds = %sw.default28, %sw.bb26, %sw.bb24, %sw.bb22
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %sw.epilog30, %if.then10, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
