; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1225 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.1237 = external hidden unnamed_addr constant [90 x i8], align 1
@.str.1243 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.1244 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.1245 = external hidden unnamed_addr constant [41 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

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
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_copy(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pSin = alloca ptr, align 8
  %pSout = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %zBuf = alloca [8192 x i8], align 16
  %pIn = alloca ptr, align 8
  %pOut = alloca ptr, align 8
  %n = alloca i64, align 8
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
  %call = call i32 @ph7_value_is_string(ptr noundef %2)
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
  %call5 = call i32 @ph7_context_throw_error(ptr noundef %5, i32 noundef 2, ptr noundef @.str.1243)
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %6, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false1
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx7 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx7, align 8
  %call8 = call ptr @ph7_value_to_string(ptr noundef %8, ptr noundef %nLen)
  store ptr %call8, ptr %zFile, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pVm, align 8
  %11 = load i32, ptr %nLen, align 4
  %call9 = call ptr @PH7_VmGetStreamDevice(ptr noundef %10, ptr noundef %zFile, i32 noundef %11)
  store ptr %call9, ptr %pSin, align 8
  %12 = load ptr, ptr %pSin, align 8
  %cmp10 = icmp eq ptr %12, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_context_throw_error(ptr noundef %13, i32 noundef 2, ptr noundef @.str.1225)
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_bool(ptr noundef %14, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end
  %15 = load ptr, ptr %pCtx.addr, align 8
  %pVm15 = getelementptr inbounds nuw %struct.ph7_context, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pVm15, align 8
  %17 = load ptr, ptr %pSin, align 8
  %18 = load ptr, ptr %zFile, align 8
  %19 = load i32, ptr %nArg.addr, align 4
  %cmp16 = icmp sgt i32 %19, 2
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end14
  %20 = load ptr, ptr %apArg.addr, align 8
  %arrayidx17 = getelementptr inbounds ptr, ptr %20, i64 2
  %21 = load ptr, ptr %arrayidx17, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end14
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %21, %cond.true ], [ null, %cond.false ]
  %call18 = call ptr @PH7_StreamOpenHandle(ptr noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef 1, i32 noundef 0, ptr noundef %cond, i32 noundef 0, ptr noundef null)
  store ptr %call18, ptr %pIn, align 8
  %22 = load ptr, ptr %pIn, align 8
  %cmp19 = icmp eq ptr %22, null
  br i1 %cmp19, label %if.then20, label %if.end23

if.then20:                                        ; preds = %cond.end
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %zFile, align 8
  %call21 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %23, i32 noundef 1, ptr noundef @.str.1244, ptr noundef %24)
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call22 = call i32 @ph7_result_bool(ptr noundef %25, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %cond.end
  %26 = load ptr, ptr %apArg.addr, align 8
  %arrayidx24 = getelementptr inbounds ptr, ptr %26, i64 1
  %27 = load ptr, ptr %arrayidx24, align 8
  %call25 = call ptr @ph7_value_to_string(ptr noundef %27, ptr noundef %nLen)
  store ptr %call25, ptr %zFile, align 8
  %28 = load ptr, ptr %pCtx.addr, align 8
  %pVm26 = getelementptr inbounds nuw %struct.ph7_context, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %pVm26, align 8
  %30 = load i32, ptr %nLen, align 4
  %call27 = call ptr @PH7_VmGetStreamDevice(ptr noundef %29, ptr noundef %zFile, i32 noundef %30)
  store ptr %call27, ptr %pSout, align 8
  %31 = load ptr, ptr %pSout, align 8
  %cmp28 = icmp eq ptr %31, null
  br i1 %cmp28, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end23
  %32 = load ptr, ptr %pCtx.addr, align 8
  %call30 = call i32 @ph7_context_throw_error(ptr noundef %32, i32 noundef 2, ptr noundef @.str.1225)
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call31 = call i32 @ph7_result_bool(ptr noundef %33, i32 noundef 0)
  %34 = load ptr, ptr %pSin, align 8
  %35 = load ptr, ptr %pIn, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %34, ptr noundef %35)
  store i32 0, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end23
  %36 = load ptr, ptr %pSout, align 8
  %xWrite = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %36, i32 0, i32 8
  %37 = load ptr, ptr %xWrite, align 8
  %cmp33 = icmp eq ptr %37, null
  br i1 %cmp33, label %if.then34, label %if.end38

if.then34:                                        ; preds = %if.end32
  %38 = load ptr, ptr %pCtx.addr, align 8
  %39 = load ptr, ptr %pCtx.addr, align 8
  %call35 = call ptr @ph7_function_name(ptr noundef %39)
  %40 = load ptr, ptr %pSin, align 8
  %zName = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %zName, align 8
  %call36 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %38, i32 noundef 2, ptr noundef @.str.1237, ptr noundef %call35, ptr noundef %41)
  %42 = load ptr, ptr %pCtx.addr, align 8
  %call37 = call i32 @ph7_result_bool(ptr noundef %42, i32 noundef 0)
  %43 = load ptr, ptr %pSin, align 8
  %44 = load ptr, ptr %pIn, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %43, ptr noundef %44)
  store i32 0, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.end32
  %45 = load ptr, ptr %pCtx.addr, align 8
  %pVm39 = getelementptr inbounds nuw %struct.ph7_context, ptr %45, i32 0, i32 4
  %46 = load ptr, ptr %pVm39, align 8
  %47 = load ptr, ptr %pSout, align 8
  %48 = load ptr, ptr %zFile, align 8
  %49 = load i32, ptr %nArg.addr, align 4
  %cmp40 = icmp sgt i32 %49, 2
  br i1 %cmp40, label %cond.true41, label %cond.false43

cond.true41:                                      ; preds = %if.end38
  %50 = load ptr, ptr %apArg.addr, align 8
  %arrayidx42 = getelementptr inbounds ptr, ptr %50, i64 2
  %51 = load ptr, ptr %arrayidx42, align 8
  br label %cond.end44

cond.false43:                                     ; preds = %if.end38
  br label %cond.end44

cond.end44:                                       ; preds = %cond.false43, %cond.true41
  %cond45 = phi ptr [ %51, %cond.true41 ], [ null, %cond.false43 ]
  %call46 = call ptr @PH7_StreamOpenHandle(ptr noundef %46, ptr noundef %47, ptr noundef %48, i32 noundef 28, i32 noundef 0, ptr noundef %cond45, i32 noundef 0, ptr noundef null)
  store ptr %call46, ptr %pOut, align 8
  %52 = load ptr, ptr %pOut, align 8
  %cmp47 = icmp eq ptr %52, null
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %cond.end44
  %53 = load ptr, ptr %pCtx.addr, align 8
  %54 = load ptr, ptr %zFile, align 8
  %call49 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %53, i32 noundef 1, ptr noundef @.str.1245, ptr noundef %54)
  %55 = load ptr, ptr %pCtx.addr, align 8
  %call50 = call i32 @ph7_result_bool(ptr noundef %55, i32 noundef 0)
  %56 = load ptr, ptr %pSin, align 8
  %57 = load ptr, ptr %pIn, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %56, ptr noundef %57)
  store i32 0, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %cond.end44
  br label %for.cond

for.cond:                                         ; preds = %if.end61, %if.end51
  %58 = load ptr, ptr %pSin, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %58, i32 0, i32 6
  %59 = load ptr, ptr %xRead, align 8
  %60 = load ptr, ptr %pIn, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %call52 = call i64 %59(ptr noundef %60, ptr noundef %arraydecay, i64 noundef 8192)
  store i64 %call52, ptr %n, align 8
  %61 = load i64, ptr %n, align 8
  %cmp53 = icmp slt i64 %61, 1
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %for.cond
  br label %for.end

if.end55:                                         ; preds = %for.cond
  %62 = load ptr, ptr %pSout, align 8
  %xWrite56 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %62, i32 0, i32 8
  %63 = load ptr, ptr %xWrite56, align 8
  %64 = load ptr, ptr %pOut, align 8
  %arraydecay57 = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %65 = load i64, ptr %n, align 8
  %call58 = call i64 %63(ptr noundef %64, ptr noundef %arraydecay57, i64 noundef %65)
  store i64 %call58, ptr %n, align 8
  %66 = load i64, ptr %n, align 8
  %cmp59 = icmp slt i64 %66, 1
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %if.end55
  br label %for.end

if.end61:                                         ; preds = %if.end55
  br label %for.cond

for.end:                                          ; preds = %if.then60, %if.then54
  %67 = load ptr, ptr %pSin, align 8
  %68 = load ptr, ptr %pIn, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %67, ptr noundef %68)
  %69 = load ptr, ptr %pSout, align 8
  %70 = load ptr, ptr %pOut, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %69, ptr noundef %70)
  %71 = load ptr, ptr %pCtx.addr, align 8
  %call62 = call i32 @ph7_result_bool(ptr noundef %71, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then48, %if.then34, %if.then29, %if.then20, %if.then11, %if.then
  %72 = load i32, ptr %retval, align 4
  ret i32 %72
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
