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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.SyString = type { ptr, i32 }
%struct.VmSlot = type { i32, ptr }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }

@.str.22 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.536 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.537 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.538 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.539 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.540 = external hidden unnamed_addr constant [6 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_int(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_string(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_scalar(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_strkey_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_debug_backtrace(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  %pFrame7 = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %pArg = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %aSlot = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @ph7_context_new_array(ptr noundef %2)
  store ptr %call, ptr %pArray, align 8
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_new_scalar(ptr noundef %3)
  store ptr %call2, ptr %pValue, align 8
  %4 = load ptr, ptr %pArray, align 8
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %pValue, align 8
  %cmp3 = icmp eq ptr %5, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call4 = call i32 @ph7_context_throw_error(ptr noundef %6, i32 noundef 1, ptr noundef @.str.536)
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_null(ptr noundef %7)
  store i32 0, ptr %nArg.addr, align 4
  store ptr null, ptr %apArg.addr, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %8 = load ptr, ptr %pVm, align 8
  %pFrame = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 4
  %9 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %10, null
  br i1 %tobool, label %if.then6, label %if.end35

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %pVm, align 8
  %pFrame8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pFrame8, align 8
  store ptr %12, ptr %pFrame7, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then6
  %13 = load ptr, ptr %pFrame7, align 8
  %pParent9 = getelementptr inbounds nuw %struct.VmFrame, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %pParent9, align 8
  %tobool10 = icmp ne ptr %14, null
  br i1 %tobool10, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %15 = load ptr, ptr %pFrame7, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %15, i32 0, i32 8
  %16 = load i32, ptr %iFlags, align 8
  %and = and i32 %16, 1
  %tobool11 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %17 = phi i1 [ false, %while.cond ], [ %tobool11, %land.rhs ]
  br i1 %17, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %18 = load ptr, ptr %pFrame7, align 8
  %pParent12 = getelementptr inbounds nuw %struct.VmFrame, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pParent12, align 8
  store ptr %19, ptr %pFrame7, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %20 = load ptr, ptr %pFrame7, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmFrame, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pUserData, align 8
  store ptr %21, ptr %pFunc, align 8
  %22 = load ptr, ptr %pFrame7, align 8
  %pParent13 = getelementptr inbounds nuw %struct.VmFrame, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pParent13, align 8
  %tobool14 = icmp ne ptr %23, null
  br i1 %tobool14, label %land.lhs.true, label %if.end21

land.lhs.true:                                    ; preds = %while.end
  %24 = load ptr, ptr %pFunc, align 8
  %tobool15 = icmp ne ptr %24, null
  br i1 %tobool15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %land.lhs.true
  %25 = load ptr, ptr %pValue, align 8
  %26 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %26, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %27 = load ptr, ptr %zString, align 8
  %28 = load ptr, ptr %pFunc, align 8
  %sName17 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %28, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName17, i32 0, i32 1
  %29 = load i32, ptr %nByte, align 8
  %call18 = call i32 @ph7_value_string(ptr noundef %25, ptr noundef %27, i32 noundef %29)
  %30 = load ptr, ptr %pArray, align 8
  %31 = load ptr, ptr %pValue, align 8
  %call19 = call i32 @ph7_array_add_strkey_elem(ptr noundef %30, ptr noundef @.str.537, ptr noundef %31)
  %32 = load ptr, ptr %pValue, align 8
  %call20 = call i32 @ph7_value_reset_string_cursor(ptr noundef %32)
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %land.lhs.true, %while.end
  %33 = load ptr, ptr %pCtx.addr, align 8
  %call22 = call ptr @ph7_context_new_array(ptr noundef %33)
  store ptr %call22, ptr %pArg, align 8
  %34 = load ptr, ptr %pArg, align 8
  %tobool23 = icmp ne ptr %34, null
  br i1 %tobool23, label %if.then24, label %if.end34

if.then24:                                        ; preds = %if.end21
  %35 = load ptr, ptr %pFrame7, align 8
  %sArg = getelementptr inbounds nuw %struct.VmFrame, ptr %35, i32 0, i32 6
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sArg, i32 0, i32 1
  %36 = load ptr, ptr %pBase, align 8
  store ptr %36, ptr %aSlot, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then24
  %37 = load i32, ptr %n, align 4
  %38 = load ptr, ptr %pFrame7, align 8
  %sArg25 = getelementptr inbounds nuw %struct.VmFrame, ptr %38, i32 0, i32 6
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sArg25, i32 0, i32 2
  %39 = load i32, ptr %nUsed, align 8
  %cmp26 = icmp ult i32 %37, %39
  br i1 %cmp26, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %40 = load ptr, ptr %pCtx.addr, align 8
  %pVm27 = getelementptr inbounds nuw %struct.ph7_context, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %pVm27, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %41, i32 0, i32 6
  %42 = load ptr, ptr %aSlot, align 8
  %43 = load i32, ptr %n, align 4
  %idxprom = zext i32 %43 to i64
  %arrayidx = getelementptr inbounds nuw %struct.VmSlot, ptr %42, i64 %idxprom
  %nIdx = getelementptr inbounds nuw %struct.VmSlot, ptr %arrayidx, i32 0, i32 0
  %44 = load i32, ptr %nIdx, align 8
  %call28 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %44)
  store ptr %call28, ptr %pObj, align 8
  %45 = load ptr, ptr %pObj, align 8
  %tobool29 = icmp ne ptr %45, null
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %for.body
  %46 = load ptr, ptr %pArg, align 8
  %47 = load ptr, ptr %pObj, align 8
  %call31 = call i32 @ph7_array_add_elem(ptr noundef %46, ptr noundef null, ptr noundef %47)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end32
  %48 = load i32, ptr %n, align 4
  %inc = add i32 %48, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %49 = load ptr, ptr %pArray, align 8
  %50 = load ptr, ptr %pArg, align 8
  %call33 = call i32 @ph7_array_add_strkey_elem(ptr noundef %49, ptr noundef @.str.538, ptr noundef %50)
  br label %if.end34

if.end34:                                         ; preds = %for.end, %if.end21
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end
  %51 = load ptr, ptr %pValue, align 8
  %call36 = call i32 @ph7_value_int(ptr noundef %51, i32 noundef 1)
  %52 = load ptr, ptr %pArray, align 8
  %53 = load ptr, ptr %pValue, align 8
  %call37 = call i32 @ph7_array_add_strkey_elem(ptr noundef %52, ptr noundef @.str.539, ptr noundef %53)
  %54 = load ptr, ptr %pVm, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %54, i32 0, i32 19
  %call38 = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call38, ptr %pFile, align 8
  %55 = load ptr, ptr %pFile, align 8
  %tobool39 = icmp ne ptr %55, null
  br i1 %tobool39, label %if.then40, label %if.end46

if.then40:                                        ; preds = %if.end35
  %56 = load ptr, ptr %pValue, align 8
  %57 = load ptr, ptr %pFile, align 8
  %zString41 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 0
  %58 = load ptr, ptr %zString41, align 8
  %59 = load ptr, ptr %pFile, align 8
  %nByte42 = getelementptr inbounds nuw %struct.SyString, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %nByte42, align 8
  %call43 = call i32 @ph7_value_string(ptr noundef %56, ptr noundef %58, i32 noundef %60)
  %61 = load ptr, ptr %pArray, align 8
  %62 = load ptr, ptr %pValue, align 8
  %call44 = call i32 @ph7_array_add_strkey_elem(ptr noundef %61, ptr noundef @.str.22, ptr noundef %62)
  %63 = load ptr, ptr %pValue, align 8
  %call45 = call i32 @ph7_value_reset_string_cursor(ptr noundef %63)
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.end35
  %64 = load ptr, ptr %pVm, align 8
  %call47 = call ptr @PH7_VmPeekTopClass(ptr noundef %64)
  store ptr %call47, ptr %pClass, align 8
  %65 = load ptr, ptr %pClass, align 8
  %tobool48 = icmp ne ptr %65, null
  br i1 %tobool48, label %if.then49, label %if.end57

if.then49:                                        ; preds = %if.end46
  %66 = load ptr, ptr %pValue, align 8
  %call50 = call i32 @ph7_value_reset_string_cursor(ptr noundef %66)
  %67 = load ptr, ptr %pValue, align 8
  %68 = load ptr, ptr %pClass, align 8
  %sName51 = getelementptr inbounds nuw %struct.ph7_class, ptr %68, i32 0, i32 2
  %zString52 = getelementptr inbounds nuw %struct.SyString, ptr %sName51, i32 0, i32 0
  %69 = load ptr, ptr %zString52, align 8
  %70 = load ptr, ptr %pClass, align 8
  %sName53 = getelementptr inbounds nuw %struct.ph7_class, ptr %70, i32 0, i32 2
  %nByte54 = getelementptr inbounds nuw %struct.SyString, ptr %sName53, i32 0, i32 1
  %71 = load i32, ptr %nByte54, align 8
  %call55 = call i32 @ph7_value_string(ptr noundef %67, ptr noundef %69, i32 noundef %71)
  %72 = load ptr, ptr %pArray, align 8
  %73 = load ptr, ptr %pValue, align 8
  %call56 = call i32 @ph7_array_add_strkey_elem(ptr noundef %72, ptr noundef @.str.540, ptr noundef %73)
  br label %if.end57

if.end57:                                         ; preds = %if.then49, %if.end46
  %74 = load ptr, ptr %pCtx.addr, align 8
  %75 = load ptr, ptr %pArray, align 8
  %call58 = call i32 @ph7_result_value(ptr noundef %74, ptr noundef %75)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end57, %if.then
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPeekTopClass(ptr noundef) #0

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
!8 = distinct !{!8, !7}
