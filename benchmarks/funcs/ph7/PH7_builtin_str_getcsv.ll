; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_str_getcsv(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zInput = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %delim = alloca i32, align 4
  %encl = alloca i32, align 4
  %escape = alloca i32, align 4
  %nLen = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 44, ptr %delim, align 4
  store i32 34, ptr %encl, align 4
  store i32 92, ptr %escape, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_null(ptr noundef %3)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nLen)
  store ptr %call3, ptr %zInput, align 8
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp4 = icmp sgt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end51

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %7, i64 1
  %8 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_is_string(ptr noundef %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.then5
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx10, align 8
  %call11 = call ptr @ph7_value_to_string(ptr noundef %10, ptr noundef %i)
  store ptr %call11, ptr %zPtr, align 8
  %11 = load i32, ptr %i, align 4
  %cmp12 = icmp sgt i32 %11, 0
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.then9
  %12 = load ptr, ptr %zPtr, align 8
  %arrayidx14 = getelementptr inbounds i8, ptr %12, i64 0
  %13 = load i8, ptr %arrayidx14, align 1
  %conv = sext i8 %13 to i32
  store i32 %conv, ptr %delim, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  %14 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp sgt i32 %14, 2
  br i1 %cmp17, label %if.then19, label %if.end50

if.then19:                                        ; preds = %if.end16
  %15 = load ptr, ptr %apArg.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %15, i64 2
  %16 = load ptr, ptr %arrayidx20, align 8
  %call21 = call i32 @ph7_value_is_string(ptr noundef %16)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then23, label %if.end32

if.then23:                                        ; preds = %if.then19
  %17 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %17, i64 2
  %18 = load ptr, ptr %arrayidx24, align 8
  %call25 = call ptr @ph7_value_to_string(ptr noundef %18, ptr noundef %i)
  store ptr %call25, ptr %zPtr, align 8
  %19 = load i32, ptr %i, align 4
  %cmp26 = icmp sgt i32 %19, 0
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then23
  %20 = load ptr, ptr %zPtr, align 8
  %arrayidx29 = getelementptr inbounds i8, ptr %20, i64 0
  %21 = load i8, ptr %arrayidx29, align 1
  %conv30 = sext i8 %21 to i32
  store i32 %conv30, ptr %encl, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then23
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then19
  %22 = load i32, ptr %nArg.addr, align 4
  %cmp33 = icmp sgt i32 %22, 3
  br i1 %cmp33, label %if.then35, label %if.end49

if.then35:                                        ; preds = %if.end32
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %23, i64 3
  %24 = load ptr, ptr %arrayidx36, align 8
  %call37 = call i32 @ph7_value_is_string(ptr noundef %24)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then39, label %if.end48

if.then39:                                        ; preds = %if.then35
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx40 = getelementptr inbounds ptr, ptr %25, i64 3
  %26 = load ptr, ptr %arrayidx40, align 8
  %call41 = call ptr @ph7_value_to_string(ptr noundef %26, ptr noundef %i)
  store ptr %call41, ptr %zPtr, align 8
  %27 = load i32, ptr %i, align 4
  %cmp42 = icmp sgt i32 %27, 0
  br i1 %cmp42, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.then39
  %28 = load ptr, ptr %zPtr, align 8
  %arrayidx45 = getelementptr inbounds i8, ptr %28, i64 0
  %29 = load i8, ptr %arrayidx45, align 1
  %conv46 = sext i8 %29 to i32
  store i32 %conv46, ptr %escape, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.then39
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then35
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.end32
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.end16
  br label %if.end51

if.end51:                                         ; preds = %if.end50, %if.end
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call52 = call ptr @ph7_context_new_array(ptr noundef %30)
  store ptr %call52, ptr %pArray, align 8
  %31 = load ptr, ptr %pArray, align 8
  %cmp53 = icmp eq ptr %31, null
  br i1 %cmp53, label %if.then55, label %if.end58

if.then55:                                        ; preds = %if.end51
  %32 = load ptr, ptr %pCtx.addr, align 8
  %call56 = call i32 @ph7_context_throw_error(ptr noundef %32, i32 noundef 1, ptr noundef @.str.536)
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call57 = call i32 @ph7_result_null(ptr noundef %33)
  store i32 0, ptr %retval, align 4
  br label %return

if.end58:                                         ; preds = %if.end51
  %34 = load ptr, ptr %zInput, align 8
  %35 = load i32, ptr %nLen, align 4
  %36 = load i32, ptr %delim, align 4
  %37 = load i32, ptr %encl, align 4
  %38 = load i32, ptr %escape, align 4
  %39 = load ptr, ptr %pArray, align 8
  %call59 = call i32 @PH7_ProcessCsv(ptr noundef %34, i32 noundef %35, i32 noundef %36, i32 noundef %37, i32 noundef %38, ptr noundef @PH7_CsvConsumer, ptr noundef %39)
  %40 = load ptr, ptr %pCtx.addr, align 8
  %41 = load ptr, ptr %pArray, align 8
  %call60 = call i32 @ph7_result_value(ptr noundef %40, ptr noundef %41)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end58, %if.then55, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ProcessCsv(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CsvConsumer(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
