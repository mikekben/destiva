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
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_value_to_string(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_class_alias(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %zOld = alloca ptr, align 8
  %zNew = alloca ptr, align 8
  %nOldLen = alloca i32, align 4
  %nNewLen = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %1, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 0
  %3 = load ptr, ptr %arrayidx, align 8
  %call1 = call ptr @ph7_value_to_string(ptr noundef %3, ptr noundef %nOldLen)
  store ptr %call1, ptr %zOld, align 8
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx2, align 8
  %call3 = call ptr @ph7_value_to_string(ptr noundef %5, ptr noundef %nNewLen)
  store ptr %call3, ptr %zNew, align 8
  %6 = load i32, ptr %nNewLen, align 4
  %cmp4 = icmp slt i32 %6, 1
  br i1 %cmp4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pVm, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 10
  %10 = load ptr, ptr %zOld, align 8
  %11 = load i32, ptr %nOldLen, align 4
  %call8 = call ptr @SyHashGet(ptr noundef %hClass, ptr noundef %10, i32 noundef %11)
  store ptr %call8, ptr %pEntry, align 8
  %12 = load ptr, ptr %pEntry, align 8
  %cmp9 = icmp eq ptr %12, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call11 = call i32 @ph7_result_bool(ptr noundef %13, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %14 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pUserData, align 8
  store ptr %15, ptr %pClass, align 8
  %16 = load ptr, ptr %pCtx.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_context, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pVm13, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zNew, align 8
  %19 = load i32, ptr %nNewLen, align 4
  %call14 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator, ptr noundef %18, i32 noundef %19)
  store ptr %call14, ptr %zDup, align 8
  %20 = load ptr, ptr %zDup, align 8
  %cmp15 = icmp eq ptr %20, null
  br i1 %cmp15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end12
  %21 = load ptr, ptr %pCtx.addr, align 8
  %call17 = call i32 @ph7_result_bool(ptr noundef %21, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %if.end12
  %22 = load ptr, ptr %pCtx.addr, align 8
  %pVm19 = getelementptr inbounds nuw %struct.ph7_context, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %pVm19, align 8
  %hClass20 = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 10
  %24 = load ptr, ptr %zDup, align 8
  %25 = load i32, ptr %nNewLen, align 4
  %26 = load ptr, ptr %pClass, align 8
  %call21 = call i32 @SyHashInsert(ptr noundef %hClass20, ptr noundef %24, i32 noundef %25, ptr noundef %26)
  store i32 %call21, ptr %rc, align 4
  %27 = load i32, ptr %rc, align 4
  %cmp22 = icmp ne i32 %27, 0
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.end18
  %28 = load ptr, ptr %pCtx.addr, align 8
  %pVm24 = getelementptr inbounds nuw %struct.ph7_context, ptr %28, i32 0, i32 4
  %29 = load ptr, ptr %pVm24, align 8
  %sAllocator25 = getelementptr inbounds nuw %struct.ph7_vm, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %zDup, align 8
  %call26 = call i32 @SyMemBackendFree(ptr noundef %sAllocator25, ptr noundef %30)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.end18
  %31 = load ptr, ptr %pCtx.addr, align 8
  %32 = load i32, ptr %rc, align 4
  %cmp28 = icmp eq i32 %32, 0
  %conv = zext i1 %cmp28 to i32
  %call29 = call i32 @ph7_result_bool(ptr noundef %31, i32 noundef %conv)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then16, %if.then10, %if.then5, %if.then
  %33 = load i32, ptr %retval, align 4
  ret i32 %33
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
