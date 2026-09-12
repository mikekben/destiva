; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1236 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.1237 = external hidden unnamed_addr constant [90 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fwrite(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zString = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %nLen = alloca i32, align 4
  %n = alloca i32, align 4
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
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_context_throw_error(ptr noundef %3, i32 noundef 2, ptr noundef @.str.1236)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call i32 @ph7_result_bool(ptr noundef %4, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %apArg.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %5, i64 0
  %6 = load ptr, ptr %arrayidx3, align 8
  %call4 = call ptr @ph7_value_to_resource(ptr noundef %6)
  store ptr %call4, ptr %pDev, align 8
  %7 = load ptr, ptr %pDev, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then8, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %if.end
  %8 = load ptr, ptr %pDev, align 8
  %iMagic = getelementptr inbounds nuw %struct.io_private, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %iMagic, align 4
  %cmp7 = icmp ne i32 %9, 16690196
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %lor.lhs.false6, %if.end
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_context_throw_error(ptr noundef %10, i32 noundef 2, ptr noundef @.str.1236)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false6
  %12 = load ptr, ptr %pDev, align 8
  %pStream12 = getelementptr inbounds nuw %struct.io_private, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pStream12, align 8
  store ptr %13, ptr %pStream, align 8
  %14 = load ptr, ptr %pStream, align 8
  %cmp13 = icmp eq ptr %14, null
  br i1 %cmp13, label %if.then16, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.end11
  %15 = load ptr, ptr %pStream, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %15, i32 0, i32 8
  %16 = load ptr, ptr %xWrite, align 8
  %cmp15 = icmp eq ptr %16, null
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %lor.lhs.false14, %if.end11
  %17 = load ptr, ptr %pCtx.addr, align 8
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call ptr @ph7_function_name(ptr noundef %18)
  %19 = load ptr, ptr %pStream, align 8
  %tobool18 = icmp ne ptr %19, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then16
  %20 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then16
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %21, %cond.true ], [ @.str.1238, %cond.false ]
  %call19 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %17, i32 noundef 2, ptr noundef @.str.1237, ptr noundef %call17, ptr noundef %cond)
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_bool(ptr noundef %22, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false14
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx22, align 8
  %call23 = call ptr @ph7_value_to_string(ptr noundef %24, ptr noundef %nLen)
  store ptr %call23, ptr %zString, align 8
  %25 = load i32, ptr %nArg.addr, align 4
  %cmp24 = icmp sgt i32 %25, 2
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end21
  %26 = load ptr, ptr %apArg.addr, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %26, i64 2
  %27 = load ptr, ptr %arrayidx26, align 8
  %call27 = call i32 @ph7_value_to_int(ptr noundef %27)
  store i32 %call27, ptr %n, align 4
  %28 = load i32, ptr %n, align 4
  %cmp28 = icmp sge i32 %28, 0
  br i1 %cmp28, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.then25
  %29 = load i32, ptr %n, align 4
  %30 = load i32, ptr %nLen, align 4
  %cmp29 = icmp slt i32 %29, %30
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %land.lhs.true
  %31 = load i32, ptr %n, align 4
  store i32 %31, ptr %nLen, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %land.lhs.true, %if.then25
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end21
  %32 = load i32, ptr %nLen, align 4
  %cmp33 = icmp slt i32 %32, 1
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.end32
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call35 = call i32 @ph7_result_int(ptr noundef %33, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end36:                                         ; preds = %if.end32
  %34 = load ptr, ptr %pStream, align 8
  %xWrite37 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %34, i32 0, i32 8
  %35 = load ptr, ptr %xWrite37, align 8
  %36 = load ptr, ptr %pDev, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %pHandle, align 8
  %38 = load ptr, ptr %zString, align 8
  %39 = load i32, ptr %nLen, align 4
  %conv = sext i32 %39 to i64
  %call38 = call i64 %35(ptr noundef %37, ptr noundef %38, i64 noundef %conv)
  %conv39 = trunc i64 %call38 to i32
  store i32 %conv39, ptr %n, align 4
  %40 = load i32, ptr %n, align 4
  %cmp40 = icmp slt i32 %40, 0
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end36
  %41 = load ptr, ptr %pCtx.addr, align 8
  %call43 = call i32 @ph7_result_bool(ptr noundef %41, i32 noundef 0)
  br label %if.end45

if.else:                                          ; preds = %if.end36
  %42 = load ptr, ptr %pCtx.addr, align 8
  %43 = load i32, ptr %n, align 4
  %call44 = call i32 @ph7_result_int(ptr noundef %42, i32 noundef %43)
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then42
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then34, %cond.end, %if.then8, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
