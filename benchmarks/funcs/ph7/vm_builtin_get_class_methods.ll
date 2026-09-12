; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

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
declare hidden ptr @VmExtractClassFromValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_get_class_methods(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pMethod = alloca ptr, align 8
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
  %9 = load ptr, ptr %pArray, align 8
  %cmp7 = icmp eq ptr %9, null
  br i1 %cmp7, label %if.then9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end4
  %10 = load ptr, ptr %pName, align 8
  %cmp8 = icmp eq ptr %10, null
  br i1 %cmp8, label %if.then9, label %if.end11

if.then9:                                         ; preds = %lor.lhs.false, %if.end4
  %11 = load ptr, ptr %pCtx.addr, align 8
  %call10 = call i32 @ph7_result_null(ptr noundef %11)
  store i32 0, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %lor.lhs.false
  %12 = load ptr, ptr %pClass, align 8
  %hMethod = getelementptr inbounds nuw %struct.ph7_class, ptr %12, i32 0, i32 5
  %call12 = call i32 @SyHashResetLoopCursor(ptr noundef %hMethod)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end11
  %13 = load ptr, ptr %pClass, align 8
  %hMethod13 = getelementptr inbounds nuw %struct.ph7_class, ptr %13, i32 0, i32 5
  %call14 = call ptr @SyHashGetNextEntry(ptr noundef %hMethod13)
  store ptr %call14, ptr %pEntry, align 8
  %cmp15 = icmp ne ptr %call14, null
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %14 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %14, i32 0, i32 2
  %15 = load ptr, ptr %pUserData, align 8
  store ptr %15, ptr %pMethod, align 8
  %16 = load ptr, ptr %pName, align 8
  %17 = load ptr, ptr %pMethod, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %17, i32 0, i32 0
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %sFunc, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %18 = load ptr, ptr %zString, align 8
  %19 = load ptr, ptr %pMethod, align 8
  %sFunc16 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %19, i32 0, i32 0
  %sName17 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %sFunc16, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName17, i32 0, i32 1
  %20 = load i32, ptr %nByte, align 8
  %call18 = call i32 @ph7_value_string(ptr noundef %16, ptr noundef %18, i32 noundef %20)
  %21 = load ptr, ptr %pArray, align 8
  %22 = load ptr, ptr %pName, align 8
  %call19 = call i32 @ph7_array_add_elem(ptr noundef %21, ptr noundef null, ptr noundef %22)
  %23 = load ptr, ptr %pName, align 8
  %call20 = call i32 @ph7_value_reset_string_cursor(ptr noundef %23)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %pCtx.addr, align 8
  %25 = load ptr, ptr %pArray, align 8
  %call21 = call i32 @ph7_result_value(ptr noundef %24, ptr noundef %25)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then9, %if.then2
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
