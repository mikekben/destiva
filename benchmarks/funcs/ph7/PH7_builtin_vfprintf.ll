; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fprintf_data = type { ptr, i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.1236 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1239 = external hidden unnamed_addr constant [67 x i8], align 1
@.str.1251 = external hidden unnamed_addr constant [18 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

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
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_InputFormat(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapValuesToSet(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_vfprintf(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sFdata = alloca %struct.fprintf_data, align 8
  %zFormat = alloca ptr, align 8
  %pMap = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %sArg = alloca %struct.SySet, align 8
  %n = alloca i32, align 4
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 3
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
  br i1 %tobool4, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %5, i64 2
  %6 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_is_array(ptr noundef %6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false5, %lor.lhs.false1, %lor.lhs.false, %entry
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_context_throw_error(ptr noundef %7, i32 noundef 2, ptr noundef @.str.1251)
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_int(ptr noundef %8, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false5
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx11 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx11, align 8
  %call12 = call ptr @ph7_value_to_resource(ptr noundef %10)
  store ptr %call12, ptr %pDev, align 8
  %11 = load ptr, ptr %pDev, align 8
  %cmp13 = icmp eq ptr %11, null
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end
  %12 = load ptr, ptr %pDev, align 8
  %iMagic = getelementptr inbounds nuw %struct.io_private, ptr %12, i32 0, i32 4
  %13 = load i32, ptr %iMagic, align 4
  %cmp15 = icmp ne i32 %13, 16690196
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %lor.lhs.false14, %if.end
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call i32 @ph7_context_throw_error(ptr noundef %14, i32 noundef 2, ptr noundef @.str.1236)
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_int(ptr noundef %15, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %lor.lhs.false14
  %16 = load ptr, ptr %pDev, align 8
  %pStream = getelementptr inbounds nuw %struct.io_private, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pStream, align 8
  %cmp20 = icmp eq ptr %17, null
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end19
  %18 = load ptr, ptr %pDev, align 8
  %pStream22 = getelementptr inbounds nuw %struct.io_private, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pStream22, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %19, i32 0, i32 8
  %20 = load ptr, ptr %xWrite, align 8
  %cmp23 = icmp eq ptr %20, null
  br i1 %cmp23, label %if.then24, label %if.end31

if.then24:                                        ; preds = %lor.lhs.false21, %if.end19
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call25 = call ptr @ph7_function_name(ptr noundef %22)
  %23 = load ptr, ptr %pDev, align 8
  %pStream26 = getelementptr inbounds nuw %struct.io_private, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pStream26, align 8
  %tobool27 = icmp ne ptr %24, null
  br i1 %tobool27, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then24
  %25 = load ptr, ptr %pDev, align 8
  %pStream28 = getelementptr inbounds nuw %struct.io_private, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pStream28, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then24
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %27, %cond.true ], [ @.str.1238, %cond.false ]
  %call29 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %21, i32 noundef 2, ptr noundef @.str.1239, ptr noundef %call25, ptr noundef %cond)
  %28 = load ptr, ptr %pCtx.addr, align 8
  %call30 = call i32 @ph7_result_int(ptr noundef %28, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %lor.lhs.false21
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx32 = getelementptr inbounds ptr, ptr %29, i64 1
  %30 = load ptr, ptr %arrayidx32, align 8
  %call33 = call ptr @ph7_value_to_string(ptr noundef %30, ptr noundef %nLen)
  store ptr %call33, ptr %zFormat, align 8
  %31 = load i32, ptr %nLen, align 4
  %cmp34 = icmp slt i32 %31, 1
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end31
  %32 = load ptr, ptr %pCtx.addr, align 8
  %call36 = call i32 @ph7_result_int(ptr noundef %32, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %if.end31
  %33 = load ptr, ptr %apArg.addr, align 8
  %arrayidx38 = getelementptr inbounds ptr, ptr %33, i64 2
  %34 = load ptr, ptr %arrayidx38, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %34, i32 0, i32 1
  %35 = load ptr, ptr %x, align 8
  store ptr %35, ptr %pMap, align 8
  %36 = load ptr, ptr %pMap, align 8
  %call39 = call i32 @PH7_HashmapValuesToSet(ptr noundef %36, ptr noundef %sArg)
  store i32 %call39, ptr %n, align 4
  %nCount = getelementptr inbounds nuw %struct.fprintf_data, ptr %sFdata, i32 0, i32 1
  store i64 0, ptr %nCount, align 8
  %37 = load ptr, ptr %pDev, align 8
  %pIO = getelementptr inbounds nuw %struct.fprintf_data, ptr %sFdata, i32 0, i32 0
  store ptr %37, ptr %pIO, align 8
  %38 = load ptr, ptr %pCtx.addr, align 8
  %39 = load ptr, ptr %zFormat, align 8
  %40 = load i32, ptr %nLen, align 4
  %41 = load i32, ptr %n, align 4
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sArg, i32 0, i32 1
  %42 = load ptr, ptr %pBase, align 8
  %call40 = call i32 @PH7_InputFormat(ptr noundef @fprintfConsumer, ptr noundef %38, ptr noundef %39, i32 noundef %40, i32 noundef %41, ptr noundef %42, ptr noundef %sFdata, i32 noundef 1)
  %43 = load ptr, ptr %pCtx.addr, align 8
  %nCount41 = getelementptr inbounds nuw %struct.fprintf_data, ptr %sFdata, i32 0, i32 1
  %44 = load i64, ptr %nCount41, align 8
  %call42 = call i32 @ph7_result_int64(ptr noundef %43, i64 noundef %44)
  %call43 = call i32 @SySetRelease(ptr noundef %sArg)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then35, %cond.end, %if.then16, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
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
