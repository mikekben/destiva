; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vfs = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1218 = external hidden unnamed_addr constant [76 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_user_data(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_vfs_stat(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %pVfs = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
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
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_user_data(ptr noundef %4)
  store ptr %call2, ptr %pVfs, align 8
  %5 = load ptr, ptr %pVfs, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %6 = load ptr, ptr %pVfs, align 8
  %xStat = getelementptr inbounds nuw %struct.ph7_vfs, ptr %6, i32 0, i32 22
  %7 = load ptr, ptr %xStat, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %lor.lhs.false4, %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call ptr @ph7_function_name(ptr noundef %9)
  %call8 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %8, i32 noundef 2, ptr noundef @.str.1218, ptr noundef %call7)
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %10, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %lor.lhs.false4
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call ptr @ph7_context_new_array(ptr noundef %11)
  store ptr %call11, ptr %pArray, align 8
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call ptr @ph7_context_new_scalar(ptr noundef %12)
  store ptr %call12, ptr %pValue, align 8
  %13 = load ptr, ptr %pArray, align 8
  %cmp13 = icmp eq ptr %13, null
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end10
  %14 = load ptr, ptr %pValue, align 8
  %cmp15 = icmp eq ptr %14, null
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %lor.lhs.false14, %if.end10
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call i32 @ph7_context_throw_error(ptr noundef %15, i32 noundef 1, ptr noundef @.str.536)
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false14
  %17 = load ptr, ptr %apArg.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %17, i64 0
  %18 = load ptr, ptr %arrayidx20, align 8
  %call21 = call ptr @ph7_value_to_string(ptr noundef %18, ptr noundef null)
  store ptr %call21, ptr %zPath, align 8
  %19 = load ptr, ptr %pVfs, align 8
  %xStat22 = getelementptr inbounds nuw %struct.ph7_vfs, ptr %19, i32 0, i32 22
  %20 = load ptr, ptr %xStat22, align 8
  %21 = load ptr, ptr %zPath, align 8
  %22 = load ptr, ptr %pArray, align 8
  %23 = load ptr, ptr %pValue, align 8
  %call23 = call i32 %20(ptr noundef %21, ptr noundef %22, ptr noundef %23)
  store i32 %call23, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp24 = icmp ne i32 %24, 0
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end19
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call26 = call i32 @ph7_result_bool(ptr noundef %25, i32 noundef 0)
  br label %if.end28

if.else:                                          ; preds = %if.end19
  %26 = load ptr, ptr %pCtx.addr, align 8
  %27 = load ptr, ptr %pArray, align 8
  %call27 = call i32 @ph7_result_value(ptr noundef %26, ptr noundef %27)
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then25
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end28, %if.then16, %if.then6, %if.then
  %28 = load i32, ptr %retval, align 4
  ret i32 %28
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
