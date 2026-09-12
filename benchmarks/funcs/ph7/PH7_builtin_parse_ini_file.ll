; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.1224 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1225 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.1226 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_StreamReadWholeFile(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ParseIniString(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_parse_ini_file(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %sContents = alloca %struct.SyBlob, align 8
  %pHandle = alloca ptr, align 8
  %nLen = alloca i32, align 4
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
  %13 = load ptr, ptr %pCtx.addr, align 8
  %pVm11 = getelementptr inbounds nuw %struct.ph7_context, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pVm11, align 8
  %15 = load ptr, ptr %pStream, align 8
  %16 = load ptr, ptr %zFile, align 8
  %call12 = call ptr @PH7_StreamOpenHandle(ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  store ptr %call12, ptr %pHandle, align 8
  %17 = load ptr, ptr %pHandle, align 8
  %cmp13 = icmp eq ptr %17, null
  br i1 %cmp13, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end10
  %18 = load ptr, ptr %pCtx.addr, align 8
  %19 = load ptr, ptr %zFile, align 8
  %call15 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %18, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %19)
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call16 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end10
  %21 = load ptr, ptr %pCtx.addr, align 8
  %pVm18 = getelementptr inbounds nuw %struct.ph7_context, ptr %21, i32 0, i32 4
  %22 = load ptr, ptr %pVm18, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 0
  %call19 = call i32 @SyBlobInit(ptr noundef %sContents, ptr noundef %sAllocator)
  %23 = load ptr, ptr %pHandle, align 8
  %24 = load ptr, ptr %pStream, align 8
  %call20 = call i32 @PH7_StreamReadWholeFile(ptr noundef %23, ptr noundef %24, ptr noundef %sContents)
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sContents, i32 0, i32 2
  %25 = load i32, ptr %nByte, align 8
  %cmp21 = icmp ult i32 %25, 1
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end17
  %26 = load ptr, ptr %pCtx.addr, align 8
  %call23 = call i32 @ph7_result_bool(ptr noundef %26, i32 noundef 0)
  br label %if.end29

if.else:                                          ; preds = %if.end17
  %27 = load ptr, ptr %pCtx.addr, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sContents, i32 0, i32 1
  %28 = load ptr, ptr %pBlob, align 8
  %nByte24 = getelementptr inbounds nuw %struct.SyBlob, ptr %sContents, i32 0, i32 2
  %29 = load i32, ptr %nByte24, align 8
  %30 = load i32, ptr %nArg.addr, align 4
  %cmp25 = icmp sgt i32 %30, 1
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %31 = load ptr, ptr %apArg.addr, align 8
  %arrayidx26 = getelementptr inbounds ptr, ptr %31, i64 1
  %32 = load ptr, ptr %arrayidx26, align 8
  %call27 = call i32 @ph7_value_to_bool(ptr noundef %32)
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call27, %cond.true ], [ 0, %cond.false ]
  %call28 = call i32 @PH7_ParseIniString(ptr noundef %27, ptr noundef %28, i32 noundef %29, i32 noundef %cond)
  br label %if.end29

if.end29:                                         ; preds = %cond.end, %if.then22
  %33 = load ptr, ptr %pStream, align 8
  %34 = load ptr, ptr %pHandle, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %33, ptr noundef %34)
  %call30 = call i32 @SyBlobRelease(ptr noundef %sContents)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then14, %if.then7, %if.then
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
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
