; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }

@.str.124 = external hidden unnamed_addr constant [52 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @VmInstanceOf(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmErrorFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmClassMemberAccess(ptr noundef %pVm, ptr noundef %pClass, ptr noundef %pAttrName, i32 noundef %iProtection, i32 noundef %bLog) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pClass.addr = alloca ptr, align 8
  %pAttrName.addr = alloca ptr, align 8
  %iProtection.addr = alloca i32, align 4
  %bLog.addr = alloca i32, align 4
  %pFrame = alloca ptr, align 8
  %pVmFunc = alloca ptr, align 8
  %pBase = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pClass, ptr %pClass.addr, align 8
  store ptr %pAttrName, ptr %pAttrName.addr, align 8
  store i32 %iProtection, ptr %iProtection.addr, align 4
  store i32 %bLog, ptr %bLog.addr, align 4
  %0 = load i32, ptr %iProtection.addr, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pVm.addr, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pFrame1, align 8
  store ptr %2, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then
  %3 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %iFlags, align 8
  %and = and i32 %6, 5
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %pFrame, align 8
  %pParent3 = getelementptr inbounds nuw %struct.VmFrame, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pParent3, align 8
  store ptr %9, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %pFrame, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmFrame, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pUserData, align 8
  store ptr %11, ptr %pVmFunc, align 8
  %12 = load ptr, ptr %pVmFunc, align 8
  %cmp4 = icmp eq ptr %12, null
  br i1 %cmp4, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %13 = load ptr, ptr %pVmFunc, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %iFlags5, align 8
  %and6 = and i32 %14, 8
  %cmp7 = icmp eq i32 %and6, 0
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %lor.lhs.false, %while.end
  br label %dis

if.end:                                           ; preds = %lor.lhs.false
  %15 = load i32, ptr %iProtection.addr, align 4
  %cmp9 = icmp eq i32 %15, 3
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  %16 = load ptr, ptr %pVmFunc, align 8
  %pUserData11 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %16, i32 0, i32 7
  %17 = load ptr, ptr %pUserData11, align 8
  %18 = load ptr, ptr %pClass.addr, align 8
  %cmp12 = icmp ne ptr %17, %18
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then10
  br label %dis

if.end14:                                         ; preds = %if.then10
  br label %if.end19

if.else:                                          ; preds = %if.end
  %19 = load ptr, ptr %pVmFunc, align 8
  %pUserData15 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %pUserData15, align 8
  store ptr %20, ptr %pBase, align 8
  %21 = load ptr, ptr %pClass.addr, align 8
  %22 = load ptr, ptr %pBase, align 8
  %call = call i32 @VmInstanceOf(ptr noundef %21, ptr noundef %22)
  %tobool16 = icmp ne i32 %call, 0
  br i1 %tobool16, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.else
  br label %dis

if.end18:                                         ; preds = %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %entry
  store i32 1, ptr %retval, align 4
  br label %return

dis:                                              ; preds = %if.then17, %if.then13, %if.then8
  %23 = load i32, ptr %bLog.addr, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %dis
  %24 = load ptr, ptr %pVm.addr, align 8
  %25 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %25, i32 0, i32 2
  %26 = load ptr, ptr %pAttrName.addr, align 8
  %call23 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %24, i32 noundef 1, ptr noundef @.str.124, ptr noundef %sName, ptr noundef %26)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %dis
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end24, %if.end20
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
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
