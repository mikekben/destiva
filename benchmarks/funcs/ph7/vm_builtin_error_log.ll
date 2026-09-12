; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.4 = external hidden unnamed_addr constant [1 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_error_log(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zMessage = alloca ptr, align 8
  %zDest = alloca ptr, align 8
  %zHeader = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %iType = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  store i32 0, ptr %iType, align 4
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pVm, align 8
  %xErrLog = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 41
  %5 = load ptr, ptr %xErrLog, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then2, label %if.end20

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %7, ptr noundef null)
  store ptr %call3, ptr %zMessage, align 8
  store ptr @.str.4, ptr %zHeader, align 8
  store ptr @.str.4, ptr %zDest, align 8
  %8 = load i32, ptr %nArg.addr, align 4
  %cmp4 = icmp sgt i32 %8, 1
  br i1 %cmp4, label %if.then5, label %if.end18

if.then5:                                         ; preds = %if.then2
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx6 = getelementptr inbounds ptr, ptr %9, i64 1
  %10 = load ptr, ptr %arrayidx6, align 8
  %call7 = call i32 @ph7_value_to_int(ptr noundef %10)
  store i32 %call7, ptr %iType, align 4
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp8 = icmp sgt i32 %11, 2
  br i1 %cmp8, label %if.then9, label %if.end17

if.then9:                                         ; preds = %if.then5
  %12 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %12, i64 2
  %13 = load ptr, ptr %arrayidx10, align 8
  %call11 = call ptr @ph7_value_to_string(ptr noundef %13, ptr noundef null)
  store ptr %call11, ptr %zDest, align 8
  %14 = load i32, ptr %nArg.addr, align 4
  %cmp12 = icmp sgt i32 %14, 3
  br i1 %cmp12, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then9
  %15 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %15, i64 3
  %16 = load ptr, ptr %arrayidx14, align 8
  %call15 = call ptr @ph7_value_to_string(ptr noundef %16, ptr noundef null)
  store ptr %call15, ptr %zHeader, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.then9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then5
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then2
  %17 = load ptr, ptr %pVm, align 8
  %xErrLog19 = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 41
  %18 = load ptr, ptr %xErrLog19, align 8
  %19 = load ptr, ptr %zMessage, align 8
  %20 = load i32, ptr %iType, align 4
  %21 = load ptr, ptr %zDest, align 8
  %22 = load ptr, ptr %zHeader, align 8
  call void %18(ptr noundef %19, i32 noundef %20, ptr noundef %21, ptr noundef %22)
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call21 = call i32 @ph7_result_bool(ptr noundef %23, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %24 = load i32, ptr %retval, align 4
  ret i32 %24
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
