; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprintf_data = type { ptr, i64 }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1236 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1239 = external hidden unnamed_addr constant [67 x i8], align 1
@.str.1251 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int64(ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_InputFormat(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fprintf(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sFdata = alloca %struct.fprintf_data, align 8
  %zFormat = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_resource(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false1, label %if.then

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %3, i64 1
  %4 = load ptr, ptr %arrayidx2, align 8
  %call3 = call i32 @ph7_value_is_string(ptr noundef %4)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_context_throw_error(ptr noundef %5, i32 noundef 2, ptr noundef @.str.1251)
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_int(ptr noundef %6, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_resource(ptr noundef %8)
  store ptr %call8, ptr %pDev, align 8
  %9 = load ptr, ptr %pDev, align 8
  %cmp9 = icmp eq ptr %9, null
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %10 = load ptr, ptr %pDev, align 8
  %iMagic = getelementptr inbounds nuw %struct.io_private, ptr %10, i32 0, i32 4
  %11 = load i32, ptr %iMagic, align 4
  %cmp11 = icmp ne i32 %11, 16690196
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %lor.lhs.false10, %if.end
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_context_throw_error(ptr noundef %12, i32 noundef 2, ptr noundef @.str.1236)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_result_int(ptr noundef %13, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %lor.lhs.false10
  %14 = load ptr, ptr %pDev, align 8
  %pStream = getelementptr inbounds nuw %struct.io_private, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pStream, align 8
  %cmp16 = icmp eq ptr %15, null
  br i1 %cmp16, label %if.then20, label %lor.lhs.false17

lor.lhs.false17:                                  ; preds = %if.end15
  %16 = load ptr, ptr %pDev, align 8
  %pStream18 = getelementptr inbounds nuw %struct.io_private, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pStream18, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %17, i32 0, i32 8
  %18 = load ptr, ptr %xWrite, align 8
  %cmp19 = icmp eq ptr %18, null
  br i1 %cmp19, label %if.then20, label %if.end27

if.then20:                                        ; preds = %lor.lhs.false17, %if.end15
  %19 = load ptr, ptr %pCtx.addr, align 8
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call ptr @ph7_function_name(ptr noundef %20)
  %21 = load ptr, ptr %pDev, align 8
  %pStream22 = getelementptr inbounds nuw %struct.io_private, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pStream22, align 8
  %tobool23 = icmp ne ptr %22, null
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then20
  %23 = load ptr, ptr %pDev, align 8
  %pStream24 = getelementptr inbounds nuw %struct.io_private, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pStream24, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then20
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %25, %cond.true ], [ @.str.1238, %cond.false ]
  %call25 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %19, i32 noundef 2, ptr noundef @.str.1239, ptr noundef %call21, ptr noundef %cond)
  %26 = load ptr, ptr %pCtx.addr, align 8
  %call26 = call i32 @ph7_result_int(ptr noundef %26, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %lor.lhs.false17
  %27 = load ptr, ptr %apArg.addr, align 8
  %arrayidx28 = getelementptr inbounds ptr, ptr %27, i64 1
  %28 = load ptr, ptr %arrayidx28, align 8
  %call29 = call ptr @ph7_value_to_string(ptr noundef %28, ptr noundef %nLen)
  store ptr %call29, ptr %zFormat, align 8
  %29 = load i32, ptr %nLen, align 4
  %cmp30 = icmp slt i32 %29, 1
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call32 = call i32 @ph7_result_int(ptr noundef %30, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end33:                                         ; preds = %if.end27
  %nCount = getelementptr inbounds nuw %struct.fprintf_data, ptr %sFdata, i32 0, i32 1
  store i64 0, ptr %nCount, align 8
  %31 = load ptr, ptr %pDev, align 8
  %pIO = getelementptr inbounds nuw %struct.fprintf_data, ptr %sFdata, i32 0, i32 0
  store ptr %31, ptr %pIO, align 8
  %32 = load ptr, ptr %pCtx.addr, align 8
  %33 = load ptr, ptr %zFormat, align 8
  %34 = load i32, ptr %nLen, align 4
  %35 = load i32, ptr %nArg.addr, align 4
  %sub = sub nsw i32 %35, 1
  %36 = load ptr, ptr %apArg.addr, align 8
  %arrayidx34 = getelementptr inbounds ptr, ptr %36, i64 1
  %call35 = call i32 @PH7_InputFormat(ptr noundef @fprintfConsumer, ptr noundef %32, ptr noundef %33, i32 noundef %34, i32 noundef %sub, ptr noundef %arrayidx34, ptr noundef %sFdata, i32 noundef 0)
  %37 = load ptr, ptr %pCtx.addr, align 8
  %nCount36 = getelementptr inbounds nuw %struct.fprintf_data, ptr %sFdata, i32 0, i32 1
  %38 = load i64, ptr %nCount36, align 8
  %call37 = call i32 @ph7_result_int64(ptr noundef %37, i64 noundef %38)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then31, %cond.end, %if.then12, %if.then
  %39 = load i32, ptr %retval, align 4
  ret i32 %39
}

; Function Attrs: nounwind uwtable
declare hidden i32 @fprintfConsumer(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
