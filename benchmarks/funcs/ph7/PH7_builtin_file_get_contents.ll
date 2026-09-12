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

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i64 @ph7_value_to_int64(ptr noundef) #0

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
declare dso_local i32 @ph7_context_result_buf_length(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_file_get_contents(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %n = alloca i64, align 8
  %nRead = alloca i64, align 8
  %nMaxlen = alloca i64, align 8
  %use_include = alloca i32, align 4
  %zFile = alloca ptr, align 8
  %zBuf = alloca [8192 x i8], align 16
  %pHandle = alloca ptr, align 8
  %nLen = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %use_include, align 4
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
  store i64 -1, ptr %nMaxlen, align 8
  %13 = load i32, ptr %nArg.addr, align 4
  %cmp11 = icmp sgt i32 %13, 1
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end10
  %14 = load ptr, ptr %apArg.addr, align 8
  %arrayidx13 = getelementptr inbounds ptr, ptr %14, i64 1
  %15 = load ptr, ptr %arrayidx13, align 8
  %call14 = call i32 @ph7_value_to_bool(ptr noundef %15)
  store i32 %call14, ptr %use_include, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end10
  %16 = load ptr, ptr %pCtx.addr, align 8
  %pVm16 = getelementptr inbounds nuw %struct.ph7_context, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pVm16, align 8
  %18 = load ptr, ptr %pStream, align 8
  %19 = load ptr, ptr %zFile, align 8
  %20 = load i32, ptr %use_include, align 4
  %21 = load i32, ptr %nArg.addr, align 4
  %cmp17 = icmp sgt i32 %21, 2
  br i1 %cmp17, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end15
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %22, i64 2
  %23 = load ptr, ptr %arrayidx18, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end15
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %23, %cond.true ], [ null, %cond.false ]
  %call19 = call ptr @PH7_StreamOpenHandle(ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef 1, i32 noundef %20, ptr noundef %cond, i32 noundef 0, ptr noundef null)
  store ptr %call19, ptr %pHandle, align 8
  %24 = load ptr, ptr %pHandle, align 8
  %cmp20 = icmp eq ptr %24, null
  br i1 %cmp20, label %if.then21, label %if.end24

if.then21:                                        ; preds = %cond.end
  %25 = load ptr, ptr %pCtx.addr, align 8
  %26 = load ptr, ptr %zFile, align 8
  %call22 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %25, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %26)
  %27 = load ptr, ptr %pCtx.addr, align 8
  %call23 = call i32 @ph7_result_bool(ptr noundef %27, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end24:                                         ; preds = %cond.end
  %28 = load i32, ptr %nArg.addr, align 4
  %cmp25 = icmp sgt i32 %28, 3
  br i1 %cmp25, label %if.then26, label %if.end42

if.then26:                                        ; preds = %if.end24
  %29 = load ptr, ptr %apArg.addr, align 8
  %arrayidx27 = getelementptr inbounds ptr, ptr %29, i64 3
  %30 = load ptr, ptr %arrayidx27, align 8
  %call28 = call i64 @ph7_value_to_int64(ptr noundef %30)
  store i64 %call28, ptr %n, align 8
  %31 = load i64, ptr %n, align 8
  %cmp29 = icmp sgt i64 %31, 0
  br i1 %cmp29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then26
  %32 = load ptr, ptr %pStream, align 8
  %xSeek = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %32, i32 0, i32 9
  %33 = load ptr, ptr %xSeek, align 8
  %tobool31 = icmp ne ptr %33, null
  br i1 %tobool31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.then30
  %34 = load ptr, ptr %pStream, align 8
  %xSeek33 = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %xSeek33, align 8
  %36 = load ptr, ptr %pHandle, align 8
  %37 = load i64, ptr %n, align 8
  %call34 = call i32 %35(ptr noundef %36, i64 noundef %37, i32 noundef 0)
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.then30
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then26
  %38 = load i32, ptr %nArg.addr, align 4
  %cmp37 = icmp sgt i32 %38, 4
  br i1 %cmp37, label %if.then38, label %if.end41

if.then38:                                        ; preds = %if.end36
  %39 = load ptr, ptr %apArg.addr, align 8
  %arrayidx39 = getelementptr inbounds ptr, ptr %39, i64 4
  %40 = load ptr, ptr %arrayidx39, align 8
  %call40 = call i64 @ph7_value_to_int64(ptr noundef %40)
  store i64 %call40, ptr %nMaxlen, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end36
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.end24
  store i64 0, ptr %nRead, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end61, %if.end42
  %41 = load ptr, ptr %pStream, align 8
  %xRead = getelementptr inbounds nuw %struct.ph7_io_stream, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %xRead, align 8
  %43 = load ptr, ptr %pHandle, align 8
  %arraydecay = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %44 = load i64, ptr %nMaxlen, align 8
  %cmp43 = icmp sgt i64 %44, 0
  br i1 %cmp43, label %land.lhs.true, label %cond.false46

land.lhs.true:                                    ; preds = %for.cond
  %45 = load i64, ptr %nMaxlen, align 8
  %cmp44 = icmp ult i64 %45, 8192
  br i1 %cmp44, label %cond.true45, label %cond.false46

cond.true45:                                      ; preds = %land.lhs.true
  %46 = load i64, ptr %nMaxlen, align 8
  br label %cond.end47

cond.false46:                                     ; preds = %land.lhs.true, %for.cond
  br label %cond.end47

cond.end47:                                       ; preds = %cond.false46, %cond.true45
  %cond48 = phi i64 [ %46, %cond.true45 ], [ 8192, %cond.false46 ]
  %call49 = call i64 %42(ptr noundef %43, ptr noundef %arraydecay, i64 noundef %cond48)
  store i64 %call49, ptr %n, align 8
  %47 = load i64, ptr %n, align 8
  %cmp50 = icmp slt i64 %47, 1
  br i1 %cmp50, label %if.then51, label %if.end52

if.then51:                                        ; preds = %cond.end47
  br label %for.end

if.end52:                                         ; preds = %cond.end47
  %48 = load ptr, ptr %pCtx.addr, align 8
  %arraydecay53 = getelementptr inbounds [8192 x i8], ptr %zBuf, i64 0, i64 0
  %49 = load i64, ptr %n, align 8
  %conv = trunc i64 %49 to i32
  %call54 = call i32 @ph7_result_string(ptr noundef %48, ptr noundef %arraydecay53, i32 noundef %conv)
  %50 = load i64, ptr %n, align 8
  %51 = load i64, ptr %nRead, align 8
  %add = add nsw i64 %51, %50
  store i64 %add, ptr %nRead, align 8
  %52 = load i64, ptr %nMaxlen, align 8
  %cmp55 = icmp sgt i64 %52, 0
  br i1 %cmp55, label %land.lhs.true57, label %if.end61

land.lhs.true57:                                  ; preds = %if.end52
  %53 = load i64, ptr %nRead, align 8
  %54 = load i64, ptr %nMaxlen, align 8
  %cmp58 = icmp sge i64 %53, %54
  br i1 %cmp58, label %if.then60, label %if.end61

if.then60:                                        ; preds = %land.lhs.true57
  br label %for.end

if.end61:                                         ; preds = %land.lhs.true57, %if.end52
  br label %for.cond

for.end:                                          ; preds = %if.then60, %if.then51
  %55 = load ptr, ptr %pStream, align 8
  %56 = load ptr, ptr %pHandle, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %55, ptr noundef %56)
  %57 = load ptr, ptr %pCtx.addr, align 8
  %call62 = call i32 @ph7_context_result_buf_length(ptr noundef %57)
  %cmp63 = icmp ult i32 %call62, 1
  br i1 %cmp63, label %if.then65, label %if.end67

if.then65:                                        ; preds = %for.end
  %58 = load ptr, ptr %pCtx.addr, align 8
  %call66 = call i32 @ph7_result_bool(ptr noundef %58, i32 noundef 0)
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end67, %if.then21, %if.then7, %if.then
  %59 = load i32, ptr %retval, align 4
  ret i32 %59
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
