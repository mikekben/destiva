; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }

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
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_reset_string_cursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmClassMemberAccess(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassInstanceExtractAttrValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_get_object_vars(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pThis = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pVmAttr = alloca ptr, align 8
  %pAttrName = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr null, ptr %pThis, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags, align 8
  %and = and i32 %3, 128
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %apArg.addr, align 8
  %arrayidx1 = getelementptr inbounds ptr, ptr %4, i64 0
  %5 = load ptr, ptr %arrayidx1, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %x, align 8
  store ptr %6, ptr %pThis, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load ptr, ptr %pThis, align 8
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %8)
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %9 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call ptr @ph7_context_new_array(ptr noundef %9)
  store ptr %call5, ptr %pArray, align 8
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_new_scalar(ptr noundef %10)
  store ptr %call6, ptr %pName, align 8
  %11 = load ptr, ptr %pArray, align 8
  %cmp7 = icmp eq ptr %11, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %12 = load ptr, ptr %pName, align 8
  %cmp8 = icmp eq ptr %12, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_null(ptr noundef %13)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  %14 = load ptr, ptr %pThis, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %14, i32 0, i32 2
  %call12 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end33, %if.then19, %if.end11
  %15 = load ptr, ptr %pThis, align 8
  %hAttr13 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %15, i32 0, i32 2
  %call14 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr13)
  store ptr %call14, ptr %pEntry, align 8
  %cmp15 = icmp ne ptr %call14, null
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pUserData, align 8
  store ptr %17, ptr %pVmAttr, align 8
  %18 = load ptr, ptr %pVmAttr, align 8
  %pAttr = getelementptr inbounds nuw %struct.VmClassAttr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pAttr, align 8
  %iFlags16 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %iFlags16, align 8
  %and17 = and i32 %20, 3
  %tobool18 = icmp ne i32 %and17, 0
  br i1 %tobool18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %while.body
  br label %while.cond, !llvm.loop !6

if.end20:                                         ; preds = %while.body
  %21 = load ptr, ptr %pVmAttr, align 8
  %pAttr21 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pAttr21, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %22, i32 0, i32 0
  store ptr %sName, ptr %pAttrName, align 8
  %23 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pVm, align 8
  %25 = load ptr, ptr %pThis, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %25, i32 0, i32 1
  %26 = load ptr, ptr %pClass, align 8
  %27 = load ptr, ptr %pAttrName, align 8
  %28 = load ptr, ptr %pVmAttr, align 8
  %pAttr22 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pAttr22, align 8
  %iProtection = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %iProtection, align 4
  %call23 = call i32 @VmClassMemberAccess(ptr noundef %24, ptr noundef %26, ptr noundef %27, i32 noundef %30, i32 noundef 0)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.then25, label %if.end33

if.then25:                                        ; preds = %if.end20
  store ptr null, ptr %pValue, align 8
  %31 = load ptr, ptr %pThis, align 8
  %32 = load ptr, ptr %pVmAttr, align 8
  %call26 = call ptr @PH7_ClassInstanceExtractAttrValue(ptr noundef %31, ptr noundef %32)
  store ptr %call26, ptr %pValue, align 8
  %33 = load ptr, ptr %pValue, align 8
  %tobool27 = icmp ne ptr %33, null
  br i1 %tobool27, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.then25
  %34 = load ptr, ptr %pName, align 8
  %35 = load ptr, ptr %pAttrName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %zString, align 8
  %37 = load ptr, ptr %pAttrName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte, align 8
  %call29 = call i32 @ph7_value_string(ptr noundef %34, ptr noundef %36, i32 noundef %38)
  %39 = load ptr, ptr %pArray, align 8
  %40 = load ptr, ptr %pName, align 8
  %41 = load ptr, ptr %pValue, align 8
  %call30 = call i32 @ph7_array_add_elem(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.then25
  %42 = load ptr, ptr %pName, align 8
  %call32 = call i32 @ph7_value_reset_string_cursor(ptr noundef %42)
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end20
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %43 = load ptr, ptr %pCtx.addr, align 8
  %44 = load ptr, ptr %pArray, align 8
  %call34 = call i32 @ph7_result_value(ptr noundef %43, ptr noundef %44)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then9, %if.then3
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
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
