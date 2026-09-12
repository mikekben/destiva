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
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }

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
define hidden i32 @vm_builtin_get_declared_interfaces(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %call = call ptr @ph7_context_new_array(ptr noundef %0)
  store ptr %call, ptr %pArray, align 8
  %1 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call ptr @ph7_context_new_scalar(ptr noundef %1)
  store ptr %call1, ptr %pName, align 8
  %2 = load ptr, ptr %pArray, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load ptr, ptr %pName, align 8
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %nArg.addr, align 4
  store ptr null, ptr %apArg.addr, align 8
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_null(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pVm, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 10
  %call4 = call i32 @SyHashResetLoopCursor(ptr noundef %hClass)
  br label %while.cond

while.cond:                                       ; preds = %if.end14, %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_context, ptr %7, i32 0, i32 4
  %8 = load ptr, ptr %pVm5, align 8
  %hClass6 = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 10
  %call7 = call ptr @SyHashGetNextEntry(ptr noundef %hClass6)
  store ptr %call7, ptr %pEntry, align 8
  %cmp8 = icmp ne ptr %call7, null
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pUserData, align 8
  store ptr %10, ptr %pClass, align 8
  %11 = load ptr, ptr %pClass, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class, ptr %11, i32 0, i32 3
  %12 = load i32, ptr %iFlags, align 8
  %and = and i32 %12, 2
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then9, label %if.end14

if.then9:                                         ; preds = %while.body
  %13 = load ptr, ptr %pName, align 8
  %14 = load ptr, ptr %pClass, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %14, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %15 = load ptr, ptr %zString, align 8
  %16 = load ptr, ptr %pClass, align 8
  %sName10 = getelementptr inbounds nuw %struct.ph7_class, ptr %16, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName10, i32 0, i32 1
  %17 = load i32, ptr %nByte, align 8
  %call11 = call i32 @ph7_value_string(ptr noundef %13, ptr noundef %15, i32 noundef %17)
  %18 = load ptr, ptr %pArray, align 8
  %19 = load ptr, ptr %pName, align 8
  %call12 = call i32 @ph7_array_add_elem(ptr noundef %18, ptr noundef null, ptr noundef %19)
  %20 = load ptr, ptr %pName, align 8
  %call13 = call i32 @ph7_value_reset_string_cursor(ptr noundef %20)
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %21 = load ptr, ptr %pCtx.addr, align 8
  %22 = load ptr, ptr %pArray, align 8
  %call15 = call i32 @ph7_result_value(ptr noundef %21, ptr noundef %22)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
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
