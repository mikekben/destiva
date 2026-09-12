; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1226 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.1246 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1247 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.1248 = external hidden unnamed_addr constant [54 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_resource(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_alloc_chunk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local void @ph7_context_free_chunk(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @InitIOPrivate(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fopen(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zUri = alloca ptr, align 8
  %zMode = alloca ptr, align 8
  %pResource = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %iLen = alloca i32, align 4
  %imLen = alloca i32, align 4
  %iOpenFlags = alloca i32, align 4
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
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 2, ptr noundef @.str.1246)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %iLen)
  store ptr %call4, ptr %zUri, align 8
  %7 = load i32, ptr %nArg.addr, align 4
  %cmp5 = icmp sgt i32 %7, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_string(ptr noundef %9, ptr noundef %imLen)
  store ptr %call8, ptr %zMode, align 8
  br label %if.end9

if.else:                                          ; preds = %if.end
  store ptr @.str.1247, ptr %zMode, align 8
  store i32 1, ptr %imLen, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %10 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %10, i32 0, i32 4
  %11 = load ptr, ptr %pVm, align 8
  %12 = load i32, ptr %iLen, align 4
  %call10 = call ptr @PH7_VmGetStreamDevice(ptr noundef %11, ptr noundef %zUri, i32 noundef %12)
  store ptr %call10, ptr %pStream, align 8
  %13 = load ptr, ptr %pStream, align 8
  %cmp11 = icmp eq ptr %13, null
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end9
  %14 = load ptr, ptr %pCtx.addr, align 8
  %15 = load ptr, ptr %zUri, align 8
  %call13 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %14, i32 noundef 2, ptr noundef @.str.1248, ptr noundef %15)
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end9
  %17 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call ptr @ph7_context_alloc_chunk(ptr noundef %17, i32 noundef 56, i32 noundef 1, i32 noundef 0)
  store ptr %call16, ptr %pDev, align 8
  %18 = load ptr, ptr %pDev, align 8
  %cmp17 = icmp eq ptr %18, null
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %19 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_context_throw_error(ptr noundef %19, i32 noundef 1, ptr noundef @.str.536)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end15
  store ptr null, ptr %pResource, align 8
  %21 = load i32, ptr %nArg.addr, align 4
  %cmp22 = icmp sgt i32 %21, 3
  br i1 %cmp22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.end21
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %22, i64 3
  %23 = load ptr, ptr %arrayidx24, align 8
  store ptr %23, ptr %pResource, align 8
  br label %if.end31

if.else25:                                        ; preds = %if.end21
  %24 = load ptr, ptr %pStream, align 8
  %call26 = call i32 @is_php_stream(ptr noundef %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end30

if.then28:                                        ; preds = %if.else25
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %25, i64 0
  %26 = load ptr, ptr %arrayidx29, align 8
  store ptr %26, ptr %pResource, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.else25
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then23
  %27 = load ptr, ptr %pCtx.addr, align 8
  %pVm32 = getelementptr inbounds nuw %struct.ph7_context, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pVm32, align 8
  %29 = load ptr, ptr %pStream, align 8
  %30 = load ptr, ptr %pDev, align 8
  call void @InitIOPrivate(ptr noundef %28, ptr noundef %29, ptr noundef %30)
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load ptr, ptr %zMode, align 8
  %33 = load i32, ptr %imLen, align 4
  %call33 = call i32 @StrModeToFlags(ptr noundef %31, ptr noundef %32, i32 noundef %33)
  store i32 %call33, ptr %iOpenFlags, align 4
  %34 = load ptr, ptr %pCtx.addr, align 8
  %pVm34 = getelementptr inbounds nuw %struct.ph7_context, ptr %34, i32 0, i32 4
  %35 = load ptr, ptr %pVm34, align 8
  %36 = load ptr, ptr %pStream, align 8
  %37 = load ptr, ptr %zUri, align 8
  %38 = load i32, ptr %iOpenFlags, align 4
  %39 = load i32, ptr %nArg.addr, align 4
  %cmp35 = icmp sgt i32 %39, 2
  br i1 %cmp35, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end31
  %40 = load ptr, ptr %apArg.addr, align 8
  %arrayidx36 = getelementptr inbounds ptr, ptr %40, i64 2
  %41 = load ptr, ptr %arrayidx36, align 8
  %call37 = call i32 @ph7_value_to_bool(ptr noundef %41)
  br label %cond.end

cond.false:                                       ; preds = %if.end31
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call37, %cond.true ], [ 0, %cond.false ]
  %42 = load ptr, ptr %pResource, align 8
  %call38 = call ptr @PH7_StreamOpenHandle(ptr noundef %35, ptr noundef %36, ptr noundef %37, i32 noundef %38, i32 noundef %cond, ptr noundef %42, i32 noundef 0, ptr noundef null)
  %43 = load ptr, ptr %pDev, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %43, i32 0, i32 1
  store ptr %call38, ptr %pHandle, align 8
  %44 = load ptr, ptr %pDev, align 8
  %pHandle39 = getelementptr inbounds nuw %struct.io_private, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %pHandle39, align 8
  %cmp40 = icmp eq ptr %45, null
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %cond.end
  %46 = load ptr, ptr %pCtx.addr, align 8
  %47 = load ptr, ptr %zUri, align 8
  %call42 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %46, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %47)
  %48 = load ptr, ptr %pCtx.addr, align 8
  %call43 = call i32 @ph7_result_bool(ptr noundef %48, i32 noundef 0)
  %49 = load ptr, ptr %pCtx.addr, align 8
  %50 = load ptr, ptr %pDev, align 8
  call void @ph7_context_free_chunk(ptr noundef %49, ptr noundef %50)
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %cond.end
  %51 = load ptr, ptr %pCtx.addr, align 8
  %52 = load ptr, ptr %pDev, align 8
  %call45 = call i32 @ph7_result_resource(ptr noundef %51, ptr noundef %52)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then41, %if.then18, %if.then12, %if.then
  %53 = load i32, ptr %retval, align 4
  ret i32 %53
}

; Function Attrs: nounwind uwtable
declare hidden i32 @is_php_stream(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @StrModeToFlags(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
