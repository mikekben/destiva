; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }

@.str.620 = external hidden unnamed_addr constant [31 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error_format(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_include_once(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sFile = alloca %struct.SyString, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 1
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nByte)
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 0
  store ptr %call1, ptr %zString, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyString, ptr %sFile, i32 0, i32 1
  %4 = load i32, ptr %nByte2, align 8
  %cmp3 = icmp ult i32 %4, 1
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_null(ptr noundef %5)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call i32 @VmExecIncludedFile(ptr noundef %6, ptr noundef %sFile, i32 noundef 1)
  store i32 %call7, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %7, -11
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end6
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_bool(ptr noundef %8, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end6
  %9 = load i32, ptr %rc, align 4
  %cmp12 = icmp ne i32 %9, 0
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end11
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 (ptr, i32, ptr, ...) @ph7_context_throw_error_format(ptr noundef %10, i32 noundef 2, ptr noundef @.str.620, ptr noundef %sFile)
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call15 = call i32 @ph7_result_bool(ptr noundef %11, i32 noundef 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then9, %if.then4, %if.then
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmExecIncludedFile(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
