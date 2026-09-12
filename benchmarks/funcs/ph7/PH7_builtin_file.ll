; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.io_private = type { ptr, ptr, %struct.SyBlob, i32, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }

@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.1224 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.1225 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.1226 = external hidden unnamed_addr constant [28 x i8], align 1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_alloc_chunk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_string(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @InitIOPrivate(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_builtin_file(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #1 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zFile = alloca ptr, align 8
  %zPtr = alloca ptr, align 8
  %zEnd = alloca ptr, align 8
  %zBuf = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pLine = alloca ptr, align 8
  %pStream = alloca ptr, align 8
  %use_include = alloca i32, align 4
  %pDev = alloca ptr, align 8
  %n = alloca i64, align 8
  %iFlags = alloca i32, align 4
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
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call ptr @ph7_context_alloc_chunk(ptr noundef %13, i32 noundef 56, i32 noundef 1, i32 noundef 0)
  store ptr %call11, ptr %pDev, align 8
  %14 = load ptr, ptr %pDev, align 8
  %cmp12 = icmp eq ptr %14, null
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end10
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @ph7_context_throw_error(ptr noundef %15, i32 noundef 1, ptr noundef @.str.536)
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end10
  %17 = load ptr, ptr %pCtx.addr, align 8
  %pVm17 = getelementptr inbounds nuw %struct.ph7_context, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pVm17, align 8
  %19 = load ptr, ptr %pStream, align 8
  %20 = load ptr, ptr %pDev, align 8
  call void @InitIOPrivate(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  store i32 0, ptr %iFlags, align 4
  %21 = load i32, ptr %nArg.addr, align 4
  %cmp18 = icmp sgt i32 %21, 1
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end16
  %22 = load ptr, ptr %apArg.addr, align 8
  %arrayidx20 = getelementptr inbounds ptr, ptr %22, i64 1
  %23 = load ptr, ptr %arrayidx20, align 8
  %call21 = call i32 @ph7_value_to_int(ptr noundef %23)
  store i32 %call21, ptr %iFlags, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16
  %24 = load i32, ptr %iFlags, align 4
  %and = and i32 %24, 1
  %tobool23 = icmp ne i32 %and, 0
  br i1 %tobool23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end22
  store i32 1, ptr %use_include, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end22
  %25 = load ptr, ptr %pCtx.addr, align 8
  %call26 = call ptr @ph7_context_new_array(ptr noundef %25)
  store ptr %call26, ptr %pArray, align 8
  %26 = load ptr, ptr %pCtx.addr, align 8
  %call27 = call ptr @ph7_context_new_scalar(ptr noundef %26)
  store ptr %call27, ptr %pLine, align 8
  %27 = load ptr, ptr %pArray, align 8
  %cmp28 = icmp eq ptr %27, null
  br i1 %cmp28, label %if.then31, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %if.end25
  %28 = load ptr, ptr %pLine, align 8
  %cmp30 = icmp eq ptr %28, null
  br i1 %cmp30, label %if.then31, label %if.end34

if.then31:                                        ; preds = %lor.lhs.false29, %if.end25
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call32 = call i32 @ph7_context_throw_error(ptr noundef %29, i32 noundef 1, ptr noundef @.str.536)
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call33 = call i32 @ph7_result_bool(ptr noundef %30, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %lor.lhs.false29
  %31 = load ptr, ptr %pCtx.addr, align 8
  %pVm35 = getelementptr inbounds nuw %struct.ph7_context, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pVm35, align 8
  %33 = load ptr, ptr %pStream, align 8
  %34 = load ptr, ptr %zFile, align 8
  %35 = load i32, ptr %use_include, align 4
  %36 = load i32, ptr %nArg.addr, align 4
  %cmp36 = icmp sgt i32 %36, 2
  br i1 %cmp36, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end34
  %37 = load ptr, ptr %apArg.addr, align 8
  %arrayidx37 = getelementptr inbounds ptr, ptr %37, i64 2
  %38 = load ptr, ptr %arrayidx37, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end34
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %38, %cond.true ], [ null, %cond.false ]
  %call38 = call ptr @PH7_StreamOpenHandle(ptr noundef %32, ptr noundef %33, ptr noundef %34, i32 noundef 1, i32 noundef %35, ptr noundef %cond, i32 noundef 0, ptr noundef null)
  %39 = load ptr, ptr %pDev, align 8
  %pHandle = getelementptr inbounds nuw %struct.io_private, ptr %39, i32 0, i32 1
  store ptr %call38, ptr %pHandle, align 8
  %40 = load ptr, ptr %pDev, align 8
  %pHandle39 = getelementptr inbounds nuw %struct.io_private, ptr %40, i32 0, i32 1
  %41 = load ptr, ptr %pHandle39, align 8
  %cmp40 = icmp eq ptr %41, null
  br i1 %cmp40, label %if.then41, label %if.end44

if.then41:                                        ; preds = %cond.end
  %42 = load ptr, ptr %pCtx.addr, align 8
  %43 = load ptr, ptr %zFile, align 8
  %call42 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %42, i32 noundef 1, ptr noundef @.str.1226, ptr noundef %43)
  %44 = load ptr, ptr %pCtx.addr, align 8
  %call43 = call i32 @ph7_result_bool(ptr noundef %44, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %cond.end
  br label %for.cond

for.cond:                                         ; preds = %if.end85, %if.then83, %if.end44
  %45 = load ptr, ptr %pDev, align 8
  %call45 = call i64 @StreamReadLine(ptr noundef %45, ptr noundef %zBuf, i64 noundef -1)
  store i64 %call45, ptr %n, align 8
  %46 = load i64, ptr %n, align 8
  %cmp46 = icmp slt i64 %46, 1
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %for.cond
  br label %for.end

if.end48:                                         ; preds = %for.cond
  %47 = load ptr, ptr %pLine, align 8
  %call49 = call i32 @ph7_value_reset_string_cursor(ptr noundef %47)
  %48 = load ptr, ptr %zBuf, align 8
  store ptr %48, ptr %zPtr, align 8
  %49 = load ptr, ptr %zBuf, align 8
  %50 = load i64, ptr %n, align 8
  %arrayidx50 = getelementptr inbounds i8, ptr %49, i64 %50
  store ptr %arrayidx50, ptr %zEnd, align 8
  %51 = load i32, ptr %iFlags, align 4
  %and51 = and i32 %51, 2
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end58

if.then53:                                        ; preds = %if.end48
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then53
  %52 = load ptr, ptr %zPtr, align 8
  %53 = load ptr, ptr %zEnd, align 8
  %cmp54 = icmp ult ptr %52, %53
  br i1 %cmp54, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %54 = load ptr, ptr %zEnd, align 8
  %arrayidx55 = getelementptr inbounds i8, ptr %54, i64 -1
  %55 = load i8, ptr %arrayidx55, align 1
  %conv = sext i8 %55 to i32
  %cmp56 = icmp eq i32 %conv, 10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %56 = phi i1 [ false, %while.cond ], [ %cmp56, %land.rhs ]
  br i1 %56, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %57 = load i64, ptr %n, align 8
  %dec = add nsw i64 %57, -1
  store i64 %dec, ptr %n, align 8
  %58 = load ptr, ptr %zEnd, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %58, i32 -1
  store ptr %incdec.ptr, ptr %zEnd, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  br label %if.end58

if.end58:                                         ; preds = %while.end, %if.end48
  %59 = load i32, ptr %iFlags, align 4
  %and59 = and i32 %59, 4
  %tobool60 = icmp ne i32 %and59, 0
  br i1 %tobool60, label %if.then61, label %if.end85

if.then61:                                        ; preds = %if.end58
  br label %while.cond62

while.cond62:                                     ; preds = %while.body78, %if.then61
  %60 = load ptr, ptr %zPtr, align 8
  %61 = load ptr, ptr %zEnd, align 8
  %cmp63 = icmp ult ptr %60, %61
  br i1 %cmp63, label %land.lhs.true, label %land.end77

land.lhs.true:                                    ; preds = %while.cond62
  %62 = load ptr, ptr %zPtr, align 8
  %arrayidx65 = getelementptr inbounds i8, ptr %62, i64 0
  %63 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %63 to i32
  %cmp67 = icmp slt i32 %conv66, 192
  br i1 %cmp67, label %land.rhs69, label %land.end77

land.rhs69:                                       ; preds = %land.lhs.true
  %call70 = call ptr @__ctype_b_loc() #2
  %64 = load ptr, ptr %call70, align 8
  %65 = load ptr, ptr %zPtr, align 8
  %arrayidx71 = getelementptr inbounds i8, ptr %65, i64 0
  %66 = load i8, ptr %arrayidx71, align 1
  %conv72 = sext i8 %66 to i32
  %idxprom = sext i32 %conv72 to i64
  %arrayidx73 = getelementptr inbounds i16, ptr %64, i64 %idxprom
  %67 = load i16, ptr %arrayidx73, align 2
  %conv74 = zext i16 %67 to i32
  %and75 = and i32 %conv74, 8192
  %tobool76 = icmp ne i32 %and75, 0
  br label %land.end77

land.end77:                                       ; preds = %land.rhs69, %land.lhs.true, %while.cond62
  %68 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond62 ], [ %tobool76, %land.rhs69 ]
  br i1 %68, label %while.body78, label %while.end80

while.body78:                                     ; preds = %land.end77
  %69 = load ptr, ptr %zPtr, align 8
  %incdec.ptr79 = getelementptr inbounds nuw i8, ptr %69, i32 1
  store ptr %incdec.ptr79, ptr %zPtr, align 8
  br label %while.cond62, !llvm.loop !8

while.end80:                                      ; preds = %land.end77
  %70 = load ptr, ptr %zPtr, align 8
  %71 = load ptr, ptr %zEnd, align 8
  %cmp81 = icmp uge ptr %70, %71
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %while.end80
  br label %for.cond

if.end84:                                         ; preds = %while.end80
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %if.end58
  %72 = load ptr, ptr %pLine, align 8
  %73 = load ptr, ptr %zBuf, align 8
  %74 = load ptr, ptr %zEnd, align 8
  %75 = load ptr, ptr %zBuf, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %74 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %75 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv86 = trunc i64 %sub.ptr.sub to i32
  %call87 = call i32 @ph7_value_string(ptr noundef %72, ptr noundef %73, i32 noundef %conv86)
  %76 = load ptr, ptr %pArray, align 8
  %77 = load ptr, ptr %pLine, align 8
  %call88 = call i32 @ph7_array_add_elem(ptr noundef %76, ptr noundef null, ptr noundef %77)
  br label %for.cond

for.end:                                          ; preds = %if.then47
  %78 = load ptr, ptr %pStream, align 8
  %79 = load ptr, ptr %pDev, align 8
  %pHandle89 = getelementptr inbounds nuw %struct.io_private, ptr %79, i32 0, i32 1
  %80 = load ptr, ptr %pHandle89, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %78, ptr noundef %80)
  %81 = load ptr, ptr %pCtx.addr, align 8
  %82 = load ptr, ptr %pDev, align 8
  call void @ReleaseIOPrivate(ptr noundef %81, ptr noundef %82)
  %83 = load ptr, ptr %pCtx.addr, align 8
  %84 = load ptr, ptr %pArray, align 8
  %call90 = call i32 @ph7_result_value(ptr noundef %83, ptr noundef %84)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then41, %if.then31, %if.then13, %if.then7, %if.then
  %85 = load i32, ptr %retval, align 4
  ret i32 %85
}

; Function Attrs: nounwind uwtable
declare hidden i64 @StreamReadLine(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden void @ReleaseIOPrivate(ptr noundef, ptr noundef) #1

attributes #0 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
