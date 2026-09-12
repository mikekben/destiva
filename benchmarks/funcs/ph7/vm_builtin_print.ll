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

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmObConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_print(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zData = alloca ptr, align 8
  %nDataLen = alloca i32, align 4
  %pVm = alloca ptr, align 8
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store i32 0, ptr %nDataLen, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4
  %3 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %apArg.addr, align 8
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @ph7_value_to_string(ptr noundef %6, ptr noundef %nDataLen)
  store ptr %call, ptr %zData, align 8
  %7 = load i32, ptr %nDataLen, align 4
  %cmp2 = icmp sgt i32 %7, 0
  br i1 %cmp2, label %if.then, label %if.end12

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %pVm, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 43
  %xConsumer = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer, i32 0, i32 0
  %9 = load ptr, ptr %xConsumer, align 8
  %10 = load ptr, ptr %zData, align 8
  %11 = load i32, ptr %nDataLen, align 4
  %12 = load ptr, ptr %pVm, align 8
  %sVmConsumer3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 43
  %pUserData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer3, i32 0, i32 1
  %13 = load ptr, ptr %pUserData, align 8
  %call4 = call i32 %9(ptr noundef %10, i32 noundef %11, ptr noundef %13)
  store i32 %call4, ptr %rc, align 4
  %14 = load ptr, ptr %pVm, align 8
  %sVmConsumer5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 43
  %xConsumer6 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer5, i32 0, i32 0
  %15 = load ptr, ptr %xConsumer6, align 8
  %cmp7 = icmp ne ptr %15, @VmObConsumer
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %16 = load i32, ptr %nDataLen, align 4
  %17 = load ptr, ptr %pVm, align 8
  %nOutputLen = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 42
  %18 = load i32, ptr %nOutputLen, align 8
  %add = add i32 %18, %16
  store i32 %add, ptr %nOutputLen, align 8
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %19 = load i32, ptr %rc, align 4
  %cmp9 = icmp eq i32 %19, -10
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %20 = load i32, ptr %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %21 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_int(ptr noundef %21, i32 noundef 1)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then10
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
