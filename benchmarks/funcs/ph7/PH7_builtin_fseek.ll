; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1236 = external hidden unnamed_addr constant [23 x i8], align 1
@.str.1238 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1239 = external hidden unnamed_addr constant [67 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_function_name(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_resource(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_fseek(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %pDev = alloca ptr, align 8
  %iOfft = alloca i64, align 8
  %whence = alloca i32, align 4
  %rc = alloca i32, align 4
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
  %call2 = call i32 @ph7_result_int(ptr noundef %4, i32 noundef -1)
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
  %call10 = call i32 @ph7_result_int(ptr noundef %11, i32 noundef -1)
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
  %xSeek = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %15, i32 0, i32 9
  %16 = load ptr, ptr %xSeek, align 8
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
  %call19 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %17, i32 noundef 2, ptr noundef @.str.1239, ptr noundef %call17, ptr noundef %cond)
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call20 = call i32 @ph7_result_int(ptr noundef %22, i32 noundef -1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %lor.lhs.false14
  %23 = load ptr, ptr %apArg.addr, align 8
  %arrayidx22 = getelementptr inbounds ptr, ptr %23, i64 1
  %24 = load ptr, ptr %arrayidx22, align 8
  %call23 = call i64 @ph7_value_to_int64(ptr noundef %24)
  store i64 %call23, ptr %iOfft, align 8
  store i32 0, ptr %whence, align 4
  %25 = load i32, ptr %nArg.addr, align 4
  %cmp24 = icmp sgt i32 %25, 2
  br i1 %cmp24, label %land.lhs.true, label %if.end31

land.lhs.true:                                    ; preds = %if.end21
  %26 = load ptr, ptr %apArg.addr, align 8
  %arrayidx25 = getelementptr inbounds ptr, ptr %26, i64 2
  %27 = load ptr, ptr %arrayidx25, align 8
  %call26 = call i32 @ph7_value_is_int(ptr noundef %27)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %land.lhs.true
  %28 = load ptr, ptr %apArg.addr, align 8
  %arrayidx29 = getelementptr inbounds ptr, ptr %28, i64 2
  %29 = load ptr, ptr %arrayidx29, align 8
  %call30 = call i32 @ph7_value_to_int(ptr noundef %29)
  store i32 %call30, ptr %whence, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %land.lhs.true, %if.end21
  %30 = load ptr, ptr %pStream, align 8
  %xSeek32 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %30, i32 0, i32 9
  %31 = load ptr, ptr %xSeek32, align 8
  %32 = load ptr, ptr %pDev, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %32, i32 0, i32 1
  %33 = load ptr, ptr %pHandle, align 8
  %34 = load i64, ptr %iOfft, align 8
  %35 = load i32, ptr %whence, align 4
  %call33 = call i32 %31(ptr noundef %33, i64 noundef %34, i32 noundef %35)
  store i32 %call33, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp34 = icmp eq i32 %36, 0
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end31
  %37 = load ptr, ptr %pDev, align 8
  call void @ResetIOPrivate(ptr noundef %37)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end31
  %38 = load ptr, ptr %pCtx.addr, align 8
  %39 = load i32, ptr %rc, align 4
  %cmp37 = icmp eq i32 %39, 0
  %40 = zext i1 %cmp37 to i64
  %cond38 = select i1 %cmp37, i32 0, i32 -1
  %call39 = call i32 @ph7_result_int(ptr noundef %38, i32 noundef %cond38)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end36, %cond.end, %if.then8, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
}

; Function Attrs: nounwind uwtable
declare hidden void @ResetIOPrivate(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
