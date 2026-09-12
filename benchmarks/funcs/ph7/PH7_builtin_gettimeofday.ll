; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sytime = type { i64, i64 }
%struct.timeval = type { i64, i64 }

@.str.1030 = external hidden unnamed_addr constant [4 x i8], align 1
@.str.1031 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_double(ptr noundef, double noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_gettimeofday(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %bFloat = alloca i32, align 4
  %sTime = alloca %struct.sytime, align 8
  %tv = alloca %struct.timeval, align 8
  %pValue = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %bFloat, align 4
  %call = call i32 @gettimeofday(ptr noundef %tv, ptr noundef null) #2
  %tv_sec = getelementptr inbounds nuw %struct.timeval, ptr %tv, i32 0, i32 0
  %0 = load i64, ptr %tv_sec, align 8
  %tm_sec = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 0
  store i64 %0, ptr %tm_sec, align 8
  %tv_usec = getelementptr inbounds nuw %struct.timeval, ptr %tv, i32 0, i32 1
  %1 = load i64, ptr %tv_usec, align 8
  %tm_usec = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 1
  store i64 %1, ptr %tm_usec, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call1 = call i32 @ph7_value_to_bool(ptr noundef %4)
  store i32 %call1, ptr %bFloat, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %bFloat, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %tm_sec3 = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 0
  %7 = load i64, ptr %tm_sec3, align 8
  %conv = sitofp i64 %7 to double
  %call4 = call i32 @ph7_result_double(ptr noundef %6, double noundef %conv)
  br label %if.end21

if.else:                                          ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call ptr @ph7_context_new_array(ptr noundef %8)
  store ptr %call5, ptr %pArray, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_new_scalar(ptr noundef %9)
  store ptr %call6, ptr %pValue, align 8
  %10 = load ptr, ptr %pValue, align 8
  %cmp7 = icmp eq ptr %10, null
  br i1 %cmp7, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %11 = load ptr, ptr %pArray, align 8
  %cmp9 = icmp eq ptr %11, null
  br i1 %cmp9, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false, %if.else
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_null(ptr noundef %12)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %13 = load ptr, ptr %pValue, align 8
  %tm_sec14 = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 0
  %14 = load i64, ptr %tm_sec14, align 8
  %call15 = call i32 @ph7_value_int64(ptr noundef %13, i64 noundef %14)
  %15 = load ptr, ptr %pArray, align 8
  %16 = load ptr, ptr %pValue, align 8
  %call16 = call i32 @ph7_array_add_strkey_elem(ptr noundef %15, ptr noundef @.str.1030, ptr noundef %16)
  %17 = load ptr, ptr %pValue, align 8
  %tm_usec17 = getelementptr inbounds nuw %struct.sytime, ptr %sTime, i32 0, i32 1
  %18 = load i64, ptr %tm_usec17, align 8
  %call18 = call i32 @ph7_value_int64(ptr noundef %17, i64 noundef %18)
  %19 = load ptr, ptr %pArray, align 8
  %20 = load ptr, ptr %pValue, align 8
  %call19 = call i32 @ph7_array_add_strkey_elem(ptr noundef %19, ptr noundef @.str.1031, ptr noundef %20)
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %pArray, align 8
  %call20 = call i32 @ph7_result_value(ptr noundef %21, ptr noundef %22)
  br label %if.end21

if.end21:                                         ; preds = %if.end13, %if.then2
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then11
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
