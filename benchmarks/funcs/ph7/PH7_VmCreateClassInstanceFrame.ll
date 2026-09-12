; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmSlot = type { i32, ptr }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmLocalExec(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveMemObj(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmCreateClassInstanceFrame(ptr noundef %pVm, ptr noundef %pObj) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pObj.addr = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pVmAttr = alloca ptr, align 8
  %pMemObj = alloca ptr, align 8
  %sSlot = alloca %struct.VmSlot, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pObj, ptr %pObj.addr, align 8
  %0 = load ptr, ptr %pObj.addr, align 8
  %pClass1 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pClass1, align 8
  store ptr %1, ptr %pClass, align 8
  %2 = load ptr, ptr %pClass, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %2, i32 0, i32 4
  %call = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %entry
  %3 = load ptr, ptr %pClass, align 8
  %hAttr2 = getelementptr inbounds nuw %struct.ph7_class, ptr %3, i32 0, i32 4
  %call3 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr2)
  store ptr %call3, ptr %pEntry, align 8
  %cmp = icmp ne ptr %call3, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pUserData, align 8
  store ptr %5, ptr %pAttr, align 8
  %6 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 0
  %call4 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 16)
  store ptr %call4, ptr %pVmAttr, align 8
  %7 = load ptr, ptr %pVmAttr, align 8
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %8 = load ptr, ptr %pAttr, align 8
  %9 = load ptr, ptr %pVmAttr, align 8
  %pAttr6 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %9, i32 0, i32 0
  store ptr %8, ptr %pAttr6, align 8
  %10 = load ptr, ptr %pAttr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %iFlags, align 8
  %and = and i32 %11, 3
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %pVm.addr, align 8
  %call9 = call ptr @PH7_ReserveMemObj(ptr noundef %12)
  store ptr %call9, ptr %pMemObj, align 8
  %13 = load ptr, ptr %pMemObj, align 8
  %cmp10 = icmp eq ptr %13, null
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then8
  %14 = load ptr, ptr %pVm.addr, align 8
  %sAllocator12 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pVmAttr, align 8
  %call13 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator12, ptr noundef %15)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.then8
  %16 = load ptr, ptr %pMemObj, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %nIdx, align 8
  %18 = load ptr, ptr %pVmAttr, align 8
  %nIdx15 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %18, i32 0, i32 1
  store i32 %17, ptr %nIdx15, align 8
  %19 = load ptr, ptr %pAttr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %19, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode, i32 0, i32 2
  %20 = load i32, ptr %nUsed, align 8
  %cmp16 = icmp ugt i32 %20, 0
  br i1 %cmp16, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  %21 = load ptr, ptr %pVm.addr, align 8
  %22 = load ptr, ptr %pAttr, align 8
  %aByteCode18 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %22, i32 0, i32 3
  %23 = load ptr, ptr %pMemObj, align 8
  %call19 = call i32 @VmLocalExec(ptr noundef %21, ptr noundef %aByteCode18, ptr noundef %23)
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14
  %24 = load ptr, ptr %pObj.addr, align 8
  %hAttr21 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %24, i32 0, i32 2
  %25 = load ptr, ptr %pAttr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %25, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %26 = load ptr, ptr %zString, align 8
  %27 = load ptr, ptr %pAttr, align 8
  %sName22 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %27, i32 0, i32 0
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName22, i32 0, i32 1
  %28 = load i32, ptr %nByte, align 8
  %29 = load ptr, ptr %pVmAttr, align 8
  %call23 = call i32 @SyHashInsert(ptr noundef %hAttr21, ptr noundef %26, i32 noundef %28, ptr noundef %29)
  store i32 %call23, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp24 = icmp ne i32 %30, 0
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end20
  %31 = load ptr, ptr %pMemObj, align 8
  %nIdx26 = getelementptr inbounds nuw %struct.ph7_value, ptr %31, i32 0, i32 5
  %32 = load i32, ptr %nIdx26, align 8
  %nIdx27 = getelementptr inbounds nuw %struct.VmSlot, ptr %sSlot, i32 0, i32 0
  store i32 %32, ptr %nIdx27, align 8
  %pUserData28 = getelementptr inbounds nuw %struct.VmSlot, ptr %sSlot, i32 0, i32 1
  store ptr null, ptr %pUserData28, align 8
  %33 = load ptr, ptr %pVm.addr, align 8
  %aFreeObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %33, i32 0, i32 9
  %call29 = call i32 @SySetPut(ptr noundef %aFreeObj, ptr noundef %sSlot)
  %34 = load ptr, ptr %pVm.addr, align 8
  %sAllocator30 = getelementptr inbounds nuw %struct.ph7_vm, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pVmAttr, align 8
  %call31 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator30, ptr noundef %35)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end20
  %36 = load ptr, ptr %pVm.addr, align 8
  %37 = load ptr, ptr %pMemObj, align 8
  %nIdx33 = getelementptr inbounds nuw %struct.ph7_value, ptr %37, i32 0, i32 5
  %38 = load i32, ptr %nIdx33, align 8
  %call34 = call i32 @PH7_VmRefObjInstall(ptr noundef %36, i32 noundef %38, ptr noundef null, ptr noundef null, i32 noundef 1)
  br label %if.end48

if.else:                                          ; preds = %if.end
  %39 = load ptr, ptr %pAttr, align 8
  %nIdx35 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %39, i32 0, i32 4
  %40 = load i32, ptr %nIdx35, align 8
  %41 = load ptr, ptr %pVmAttr, align 8
  %nIdx36 = getelementptr inbounds nuw %struct.VmClassAttr, ptr %41, i32 0, i32 1
  store i32 %40, ptr %nIdx36, align 8
  %42 = load ptr, ptr %pObj.addr, align 8
  %hAttr37 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pAttr, align 8
  %sName38 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %43, i32 0, i32 0
  %zString39 = getelementptr inbounds nuw %struct.SyString, ptr %sName38, i32 0, i32 0
  %44 = load ptr, ptr %zString39, align 8
  %45 = load ptr, ptr %pAttr, align 8
  %sName40 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %45, i32 0, i32 0
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sName40, i32 0, i32 1
  %46 = load i32, ptr %nByte41, align 8
  %47 = load ptr, ptr %pVmAttr, align 8
  %call42 = call i32 @SyHashInsert(ptr noundef %hAttr37, ptr noundef %44, i32 noundef %46, ptr noundef %47)
  store i32 %call42, ptr %rc, align 4
  %48 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %48, 0
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %if.else
  %49 = load ptr, ptr %pVm.addr, align 8
  %sAllocator45 = getelementptr inbounds nuw %struct.ph7_vm, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %pVmAttr, align 8
  %call46 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator45, ptr noundef %50)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.else
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end32
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then44, %if.then25, %if.then11, %if.then
  %51 = load i32, ptr %retval, align 4
  ret i32 %51
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
