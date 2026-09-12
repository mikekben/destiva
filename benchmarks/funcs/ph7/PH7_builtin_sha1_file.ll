; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SHA1Context = type { [5 x i32], [2 x i32], [64 x i8] }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_io_stream = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str.1224 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1225 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.1226 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Init(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Update(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SHA1Final(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBinToHexConsumer(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_sha1_file(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %zDigest = alloca [20 x i8], align 16
  %raw_output = alloca i32, align 4
  %zFile = alloca ptr, align 8
  %sCtx = alloca %struct.SHA1Context, align 4
  %zBuf = alloca [8192 x i8], align 16
  %pHandle = alloca ptr, align 8
  %n = alloca i64, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %raw_output, align 4
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
  %13 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %13, 1
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @ph7_value_to_bool(ptr noundef %15)
  store i32 %call14, ptr %raw_output, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %16 = load ptr, ptr %pCtx.addr, align 8
  %pVm16 = getelementptr inbounds nuw %struct.ph7_context, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pVm16, align 8
  %18 = load ptr, ptr %pStream, align 8
  %19 = load ptr, ptr %zFile, align 8
  %call17 = call ptr @PH7_StreamOpenHandle(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, ptr noundef null)
  store ptr %call17, ptr %pHandle, align 8
  %20 = load ptr, ptr %pHandle, align 8
  %cmp18 = icmp eq ptr %20, null
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end15
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %zFile, align 8
  %call20 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %21, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %22)
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call i32 @ph7_result_bool(ptr noundef %23, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end15
  call void @SHA1Init(ptr noundef %sCtx)
  br label %for.cond

for.cond:                                         ; preds = %if.end26, %if.end22
  %24 = load ptr, ptr %pStream, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %xRead, align 8
  %26 = load ptr, ptr %pHandle, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %call23 = call i64 %25(ptr noundef %26, ptr noundef %arraydecay, i64 noundef 8192)
  store i64 %call23, ptr %n, align 8
  %27 = load i64, ptr %n, align 8
  %cmp24 = icmp slt i64 %27, 1
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.cond
  br label %for.end

if.end26:                                         ; preds = %for.cond
  %arraydecay27 = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %28 = load i64, ptr %n, align 8
  %conv = trunc i64 %28 to i32
  call void @SHA1Update(ptr noundef %sCtx, ptr noundef %arraydecay27, i32 noundef %conv)
  br label %for.cond

for.end:                                          ; preds = %if.then25
  %29 = load ptr, ptr %pStream, align 8
  %30 = load ptr, ptr %pHandle, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %29, ptr noundef %30)
  %arraydecay28 = getelementptr inbounds [20 x i8], ptr %zDigest, i64 0, i64 0
  call void @SHA1Final(ptr noundef %sCtx, ptr noundef %arraydecay28)
  %31 = load i32, ptr %raw_output, align 4
  %tobool29 = icmp ne i32 %31, 0
  br i1 %tobool29, label %if.then30, label %if.else

if.then30:                                        ; preds = %for.end
  %32 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay31 = getelementptr inbounds [20 x i8], ptr %zDigest, i64 0, i64 0
  %call32 = call i32 @ph7_result_string(ptr noundef %32, ptr noundef %arraydecay31, i32 noundef 20)
  br label %if.end35

if.else:                                          ; preds = %for.end
  %arraydecay33 = getelementptr inbounds [20 x i8], ptr %zDigest, i64 0, i64 0
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call34 = call i32 @SyBinToHexConsumer(ptr noundef %arraydecay33, i32 noundef 20, ptr noundef @vfsHashConsumer, ptr noundef %33)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end35, %if.then19, %if.then7, %if.then
  %34 = load i32, ptr %retval, align 4
  ret i32 %34
}

; Function Attrs: nounwind uwtable
declare hidden i32 @vfsHashConsumer(ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
