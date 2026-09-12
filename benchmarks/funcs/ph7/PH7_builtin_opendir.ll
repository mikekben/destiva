; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1239 = external hidden unnamed_addr constant [67 x i8], align 1
@.str.1240 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.1241 = external hidden unnamed_addr constant [55 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_resource(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_alloc_chunk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @InitIOPrivate(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_opendir(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zPath = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %iLen = alloca i32, align 4
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
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 2, ptr noundef @.str.1240)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %iLen)
  store ptr %call4, ptr %zPath, align 8
  %7 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pVm, align 8
  %9 = load i32, ptr %iLen, align 4
  %call5 = call ptr @PH7_VmGetStreamDevice(ptr noundef %8, ptr noundef %zPath, i32 noundef %9)
  store ptr %call5, ptr %pStream, align 8
  %10 = load ptr, ptr %pStream, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %12 = load ptr, ptr %zPath, align 8
  %call8 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %11, i32 noundef 2, ptr noundef @.str.1241, ptr noundef %12)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %13, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %14 = load ptr, ptr %pStream, align 8
  %xOpenDir = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %xOpenDir, align 8
  %cmp11 = icmp eq ptr %15, null
  br i1 %cmp11, label %if.then12, label %if.end16

if.then12:                                        ; preds = %if.end10
  %16 = load ptr, ptr %pCtx.addr, align 8
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call ptr @ph7_function_name(ptr noundef %17)
  %18 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  %call14 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %16, i32 noundef 2, ptr noundef @.str.1239, ptr noundef %call13, ptr noundef %19)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %21 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call ptr @ph7_context_alloc_chunk(ptr noundef %21, i32 noundef 56, i32 noundef 1, i32 noundef 0)
  store ptr %call17, ptr %pDev, align 8
  %22 = load ptr, ptr %pDev, align 8
  %cmp18 = icmp eq ptr %22, null
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_context_throw_error(ptr noundef %23, i32 noundef 1, ptr noundef @.str.536)
  %24 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call i32 @ph7_result_bool(ptr noundef %24, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end16
  %25 = load ptr, ptr %pCtx.addr, align 8
  %pVm23 = getelementptr inbounds nuw %struct.ph7_context, ptr %25, i32 0, i32 4
  %26 = load ptr, ptr %pVm23, align 8
  %27 = load ptr, ptr %pStream, align 8
  %28 = load ptr, ptr %pDev, align 8
  call void @InitIOPrivate(ptr noundef %26, ptr noundef %27, ptr noundef %28)
  %29 = load ptr, ptr %pStream, align 8
  %xOpenDir24 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %29, i32 0, i32 3
  %30 = load ptr, ptr %xOpenDir24, align 8
  %31 = load ptr, ptr %zPath, align 8
  %32 = load i32, ptr %nArg.addr, align 4
  %cmp25 = icmp sgt i32 %32, 1
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end22
  %33 = load ptr, ptr %apArg.addr, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %33, i64 1
  %34 = load ptr, ptr %arrayidx26, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end22
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %34, %cond.true ], [ null, %cond.false ]
  %35 = load ptr, ptr %pDev, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %35, i32 0, i32 1
  %call27 = call i32 %30(ptr noundef %31, ptr noundef %cond, ptr noundef %pHandle)
  store i32 %call27, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp28 = icmp ne i32 %36, 0
  br i1 %cmp28, label %if.then29, label %if.else

if.then29:                                        ; preds = %cond.end
  %37 = load ptr, ptr %pCtx.addr, align 8
  %38 = load ptr, ptr %pDev, align 8
  call void @ReleaseIOPrivate(ptr noundef %37, ptr noundef %38)
  %39 = load ptr, ptr %pCtx.addr, align 8
  %call30 = call i32 @ph7_result_bool(ptr noundef %39, i32 noundef 0)
  br label %if.end32

if.else:                                          ; preds = %cond.end
  %40 = load ptr, ptr %pCtx.addr, align 8
  %41 = load ptr, ptr %pDev, align 8
  %call31 = call i32 @ph7_result_resource(ptr noundef %40, ptr noundef %41)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then29
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then19, %if.then12, %if.then7, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
declare hidden void @ReleaseIOPrivate(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
