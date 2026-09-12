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
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fgets(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zLine = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %n = alloca i64, align 8
  %nLen = alloca i64, align 8
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
  br i1 %cmp13, label %if.then14, label %if.end19

if.then14:                                        ; preds = %if.end11
  %15 = load ptr, ptr %pCtx.addr, align 8
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call ptr @ph7_function_name(ptr noundef %16)
  %17 = load ptr, ptr %pStream, align 8
  %tobool16 = icmp ne ptr %17, null
  br i1 %tobool16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then14
  %18 = load ptr, ptr %pStream, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zName, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %19, %cond.true ], [ @.str.1238, %cond.false ]
  %call17 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %15, i32 noundef 2, ptr noundef @.str.1237, ptr noundef %call15, ptr noundef %cond)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end11
  store i64 -1, ptr %nLen, align 8
  %21 = load i32, ptr %nArg.addr, align 4
  %cmp20 = icmp sgt i32 %21, 1
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end19
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i64 @ph7_value_to_int64(ptr noundef %23)
  store i64 %call23, ptr %nLen, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19
  %24 = load ptr, ptr %pDev, align 8
  %25 = load i64, ptr %nLen, align 8
  %call25 = call i64 @StreamReadLine(ptr noundef %24, ptr noundef %zLine, i64 noundef %25)
  store i64 %call25, ptr %n, align 8
  %26 = load i64, ptr %n, align 8
  %cmp26 = icmp slt i64 %26, 1
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end24
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call28 = call i32 @ph7_result_bool(ptr noundef %27, i32 noundef 0)
  br label %if.end30

if.else:                                          ; preds = %if.end24
  %28 = load ptr, ptr %pCtx.addr, align 8
  %29 = load ptr, ptr %zLine, align 8
  %30 = load i64, ptr %n, align 8
  %conv = trunc i64 %30 to i32
  %call29 = call i32 @ph7_result_string(ptr noundef %28, ptr noundef %29, i32 noundef %conv)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end30, %cond.end, %if.then8, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

; Function Attrs: nounwind uwtable
declare hidden i64 @StreamReadLine(ptr noundef, ptr noundef, i64 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
