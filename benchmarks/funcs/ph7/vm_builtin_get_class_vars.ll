; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

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
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmLocalExec(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmClassMemberAccess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractClassFromValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_get_class_vars(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %sValue = alloca %struct.ph7_value, align 8
  %pEntry = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pAttrName = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr null, ptr %pClass, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pVm, align 8
  %3 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %3, i64 0
  %4 = load ptr, ptr %arrayidx, align 8
  %call = call ptr @VmExtractClassFromValue(ptr noundef %2, ptr noundef %4)
  store ptr %call, ptr %pClass, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %pClass, align 8
  %cmp1 = icmp eq ptr %5, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %6 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_null(ptr noundef %6)
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call ptr @ph7_context_new_array(ptr noundef %7)
  store ptr %call5, ptr %pArray, align 8
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_new_scalar(ptr noundef %8)
  store ptr %call6, ptr %pName, align 8
  %9 = load ptr, ptr %pCtx.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_context, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pVm7, align 8
  %call8 = call i32 @PH7_MemObjInit(ptr noundef %10, ptr noundef %sValue)
  %11 = load ptr, ptr %pArray, align 8
  %cmp9 = icmp eq ptr %11, null
  br i1 %cmp9, label %if.then11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load ptr, ptr %pName, align 8
  %cmp10 = icmp eq ptr %12, null
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %lor.lhs.false, %if.end4
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_null(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %pClass, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %14, i32 0, i32 4
  %call14 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end37, %if.end13
  %15 = load ptr, ptr %pClass, align 8
  %hAttr15 = getelementptr inbounds nuw %struct.ph7_class, ptr %15, i32 0, i32 4
  %call16 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr15)
  store ptr %call16, ptr %pEntry, align 8
  %cmp17 = icmp ne ptr %call16, null
  br i1 %cmp17, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pUserData, align 8
  store ptr %17, ptr %pAttr, align 8
  %18 = load ptr, ptr %pCtx.addr, align 8
  %pVm18 = getelementptr inbounds nuw %struct.ph7_context, ptr %18, i32 0, i32 4
  %19 = load ptr, ptr %pVm18, align 8
  %20 = load ptr, ptr %pClass, align 8
  %21 = load ptr, ptr %pAttr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pAttr, align 8
  %iProtection = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %iProtection, align 4
  %call19 = call i32 @VmClassMemberAccess(ptr noundef %19, ptr noundef %20, ptr noundef %sName, i32 noundef %23, i32 noundef 0)
  %tobool = icmp ne i32 %call19, 0
  br i1 %tobool, label %if.then20, label %if.end37

if.then20:                                        ; preds = %while.body
  %24 = load ptr, ptr %pAttr, align 8
  %sName21 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %24, i32 0, i32 0
  store ptr %sName21, ptr %pAttrName, align 8
  store ptr null, ptr %pValue, align 8
  %25 = load ptr, ptr %pAttr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %25, i32 0, i32 1
  %26 = load i32, ptr %iFlags, align 8
  %and = and i32 %26, 3
  %tobool22 = icmp ne i32 %and, 0
  br i1 %tobool22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then20
  %27 = load ptr, ptr %pCtx.addr, align 8
  %pVm24 = getelementptr inbounds nuw %struct.ph7_context, ptr %27, i32 0, i32 4
  %28 = load ptr, ptr %pVm24, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %28, i32 0, i32 6
  %29 = load ptr, ptr %pAttr, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %29, i32 0, i32 4
  %30 = load i32, ptr %nIdx, align 8
  %call25 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %30)
  store ptr %call25, ptr %pValue, align 8
  br label %if.end33

if.else:                                          ; preds = %if.then20
  %31 = load ptr, ptr %pAttr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %31, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode, i32 0, i32 2
  %32 = load i32, ptr %nUsed, align 8
  %cmp26 = icmp ugt i32 %32, 0
  br i1 %cmp26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.else
  %call28 = call i32 @PH7_MemObjRelease(ptr noundef %sValue)
  %33 = load ptr, ptr %pCtx.addr, align 8
  %pVm29 = getelementptr inbounds nuw %struct.ph7_context, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %pVm29, align 8
  %35 = load ptr, ptr %pAttr, align 8
  %aByteCode30 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %35, i32 0, i32 3
  %call31 = call i32 @VmLocalExec(ptr noundef %34, ptr noundef %aByteCode30, ptr noundef %sValue)
  store ptr %sValue, ptr %pValue, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %if.else
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then23
  %36 = load ptr, ptr %pName, align 8
  %37 = load ptr, ptr %pAttrName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %zString, align 8
  %39 = load ptr, ptr %pAttrName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %nByte, align 8
  %call34 = call i32 @ph7_value_string(ptr noundef %36, ptr noundef %38, i32 noundef %40)
  %41 = load ptr, ptr %pArray, align 8
  %42 = load ptr, ptr %pName, align 8
  %43 = load ptr, ptr %pValue, align 8
  %call35 = call i32 @ph7_array_add_elem(ptr noundef %41, ptr noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %pName, align 8
  %call36 = call i32 @ph7_value_reset_string_cursor(ptr noundef %44)
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %call38 = call i32 @PH7_MemObjRelease(ptr noundef %sValue)
  %45 = load ptr, ptr %pCtx.addr, align 8
  %46 = load ptr, ptr %pArray, align 8
  %call39 = call i32 @ph7_result_value(ptr noundef %45, ptr noundef %46)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then11, %if.then2
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
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
