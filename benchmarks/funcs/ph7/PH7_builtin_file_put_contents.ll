; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1224 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1225 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.1226 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1242 = external hidden unnamed_addr constant [53 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

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
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_file_put_contents(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %use_include = alloca i32, align 4
  %pStream = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %zData = alloca ptr, align 8
  %iOpenFlags = alloca i32, align 4
  %pHandle = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %nLen = alloca i32, align 4
  %n = alloca i64, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %use_include, align 4
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
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
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 2, ptr noundef @.str.1224)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %nLen)
  store ptr %call4, ptr %zFile, align 8
  %7 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pVm, align 8
  %9 = load i32, ptr %nLen, align 4
  %call5 = call ptr @PH7_VmGetStreamDevice(ptr noundef %8, ptr noundef %zFile, i32 noundef %9)
  store ptr %call5, ptr %pStream, align 8
  %10 = load ptr, ptr %pStream, align 8
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_context_throw_error(ptr noundef %11, i32 noundef 2, ptr noundef @.str.1225)
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %12, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %13, i64 1
  %14 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @ph7_value_to_string(ptr noundef %14, ptr noundef %nLen)
  store ptr %call12, ptr %zData, align 8
  %15 = load i32, ptr %nLen, align 4
  %cmp13 = icmp slt i32 %15, 1
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.end10
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  store i32 28, ptr %iOpenFlags, align 4
  store i32 0, ptr %iFlags, align 4
  %17 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp sgt i32 %17, 2
  br i1 %cmp17, label %if.then18, label %if.end29

if.then18:                                        ; preds = %if.end16
  %18 = load ptr, ptr %apArg.addr, align 8
  %arrayidx19 = getelementptr inbounds ptr, ptr %18, i64 2
  %19 = load ptr, ptr %arrayidx19, align 8
  %call20 = call i32 @ph7_value_to_int(ptr noundef %19)
  store i32 %call20, ptr %iFlags, align 4
  %20 = load i32, ptr %iFlags, align 4
  %and = and i32 %20, 1
  %tobool21 = icmp ne i32 %and, 0
  br i1 %tobool21, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then18
  store i32 1, ptr %use_include, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then22, %if.then18
  %21 = load i32, ptr %iFlags, align 4
  %and24 = and i32 %21, 8
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %22 = load i32, ptr %iOpenFlags, align 4
  %and27 = and i32 %22, -17
  store i32 %and27, ptr %iOpenFlags, align 4
  %23 = load i32, ptr %iOpenFlags, align 4
  %or = or i32 %23, 32
  store i32 %or, ptr %iOpenFlags, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end16
  %24 = load ptr, ptr %pCtx.addr, align 8
  %pVm30 = getelementptr inbounds nuw %struct.ph7_context, ptr %24, i32 0, i32 4
  %25 = load ptr, ptr %pVm30, align 8
  %26 = load ptr, ptr %pStream, align 8
  %27 = load ptr, ptr %zFile, align 8
  %28 = load i32, ptr %iOpenFlags, align 4
  %29 = load i32, ptr %use_include, align 4
  %30 = load i32, ptr %nArg.addr, align 4
  %cmp31 = icmp sgt i32 %30, 3
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end29
  %31 = load ptr, ptr %apArg.addr, align 8
  %arrayidx32 = getelementptr inbounds ptr, ptr %31, i64 3
  %32 = load ptr, ptr %arrayidx32, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end29
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %32, %cond.true ], [ null, %cond.false ]
  %call33 = call ptr @PH7_StreamOpenHandle(ptr noundef %25, ptr noundef %26, ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %cond, i32 noundef 0, ptr noundef null)
  store ptr %call33, ptr %pHandle, align 8
  %33 = load ptr, ptr %pHandle, align 8
  %cmp34 = icmp eq ptr %33, null
  br i1 %cmp34, label %if.then35, label %if.end38

if.then35:                                        ; preds = %cond.end
  %34 = load ptr, ptr %pCtx.addr, align 8
  %35 = load ptr, ptr %zFile, align 8
  %call36 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %34, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %35)
  %36 = load ptr, ptr %pCtx.addr, align 8
  %call37 = call i32 @ph7_result_bool(ptr noundef %36, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %cond.end
  %37 = load ptr, ptr %pStream, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %37, i32 0, i32 8
  %38 = load ptr, ptr %xWrite, align 8
  %tobool39 = icmp ne ptr %38, null
  br i1 %tobool39, label %if.then40, label %if.else56

if.then40:                                        ; preds = %if.end38
  %39 = load i32, ptr %iFlags, align 4
  %and41 = and i32 %39, 1
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then40
  %40 = load ptr, ptr %pStream, align 8
  %xLock = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %40, i32 0, i32 10
  %41 = load ptr, ptr %xLock, align 8
  %tobool43 = icmp ne ptr %41, null
  br i1 %tobool43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %land.lhs.true
  %42 = load ptr, ptr %pStream, align 8
  %xLock45 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %42, i32 0, i32 10
  %43 = load ptr, ptr %xLock45, align 8
  %44 = load ptr, ptr %pHandle, align 8
  %call46 = call i32 %43(ptr noundef %44, i32 noundef 1)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %land.lhs.true, %if.then40
  %45 = load ptr, ptr %pStream, align 8
  %xWrite48 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %45, i32 0, i32 8
  %46 = load ptr, ptr %xWrite48, align 8
  %47 = load ptr, ptr %pHandle, align 8
  %48 = load ptr, ptr %zData, align 8
  %49 = load i32, ptr %nLen, align 4
  %conv = sext i32 %49 to i64
  %call49 = call i64 %46(ptr noundef %47, ptr noundef %48, i64 noundef %conv)
  store i64 %call49, ptr %n, align 8
  %50 = load i64, ptr %n, align 8
  %cmp50 = icmp slt i64 %50, 1
  br i1 %cmp50, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end47
  %51 = load ptr, ptr %pCtx.addr, align 8
  %call53 = call i32 @ph7_result_bool(ptr noundef %51, i32 noundef 0)
  br label %if.end55

if.else:                                          ; preds = %if.end47
  %52 = load ptr, ptr %pCtx.addr, align 8
  %53 = load i64, ptr %n, align 8
  %call54 = call i32 @ph7_result_int64(ptr noundef %52, i64 noundef %53)
  br label %if.end55

if.end55:                                         ; preds = %if.else, %if.then52
  br label %if.end64

if.else56:                                        ; preds = %if.end38
  %54 = load ptr, ptr %pCtx.addr, align 8
  %55 = load ptr, ptr %pStream, align 8
  %tobool57 = icmp ne ptr %55, null
  br i1 %tobool57, label %cond.true58, label %cond.false59

cond.true58:                                      ; preds = %if.else56
  %56 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %zName, align 8
  br label %cond.end60

cond.false59:                                     ; preds = %if.else56
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %cond61 = phi ptr [ %57, %cond.true58 ], [ @.str.1238, %cond.false59 ]
  %call62 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %54, i32 noundef 1, ptr noundef @.str.1242, ptr noundef %cond61)
  %58 = load ptr, ptr %pCtx.addr, align 8
  %call63 = call i32 @ph7_result_bool(ptr noundef %58, i32 noundef 0)
  br label %if.end64

if.end64:                                         ; preds = %cond.end60, %if.end55
  %59 = load ptr, ptr %pStream, align 8
  %60 = load ptr, ptr %pHandle, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %59, ptr noundef %60)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end64, %if.then35, %if.then14, %if.then7, %if.then
  %61 = load i32, ptr %retval, align 4
  ret i32 %61
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
