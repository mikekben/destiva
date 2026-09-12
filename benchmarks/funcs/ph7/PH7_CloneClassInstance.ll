; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.127 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.128 = external hidden unnamed_addr constant [53 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_CloneClassInstance(ptr noundef %pSrc) #0 {
entry:
  %retval = alloca ptr, align 8
  %pSrc.addr = alloca ptr, align 8
  %pClone = alloca ptr, align 8
  %pMethod = alloca ptr, align 8
  %pEntry2 = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pSrcAttr = alloca ptr, align 8
  %pDestAttr = alloca ptr, align 8
  %pvSrc = alloca ptr, align 8
  %pvDest = alloca ptr, align 8
  store ptr %pSrc, ptr %pSrc.addr, align 8
  %0 = load ptr, ptr %pSrc.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %3 = load ptr, ptr %pSrc.addr, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pClass, align 8
  %call = call ptr @NewClassInstance(ptr noundef %2, ptr noundef %4)
  store ptr %call, ptr %pClone, align 8
  %5 = load ptr, ptr %pClone, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pVm, align 8
  %7 = load ptr, ptr %pClone, align 8
  %call2 = call i32 @PH7_VmCreateClassInstanceFrame(ptr noundef %6, ptr noundef %7)
  store i32 %call2, ptr %rc, align 4
  %8 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %8, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pClone, align 8
  %call5 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end6:                                          ; preds = %if.end
  %11 = load ptr, ptr %pSrc.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %11, i32 0, i32 2
  %call7 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  %12 = load ptr, ptr %pClone, align 8
  %hAttr8 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %12, i32 0, i32 2
  %call9 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr8)
  br label %while.cond

while.cond:                                       ; preds = %if.end25, %if.end6
  %13 = load ptr, ptr %pSrc.addr, align 8
  %hAttr10 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %13, i32 0, i32 2
  %call11 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr10)
  store ptr %call11, ptr %pEntry, align 8
  %cmp12 = icmp ne ptr %call11, null
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %14 = load ptr, ptr %pClone, align 8
  %hAttr13 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %14, i32 0, i32 2
  %call14 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr13)
  store ptr %call14, ptr %pEntry2, align 8
  %cmp15 = icmp ne ptr %call14, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %15, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %16 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pUserData, align 8
  store ptr %17, ptr %pSrcAttr, align 8
  %18 = load ptr, ptr %pEntry2, align 8
  %pUserData16 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %18, i32 0, i32 2
  %19 = load ptr, ptr %pUserData16, align 8
  store ptr %19, ptr %pDestAttr, align 8
  %20 = load ptr, ptr %pSrcAttr, align 8
  %pAttr = getelementptr inbounds nuw %struct.VmClassAttr, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pAttr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %21, i32 0, i32 1
  %22 = load i32, ptr %iFlags, align 8
  %and = and i32 %22, 3
  %cmp17 = icmp eq i32 %and, 0
  br i1 %cmp17, label %if.then18, label %if.end25

if.then18:                                        ; preds = %while.body
  %23 = load ptr, ptr %pVm, align 8
  %24 = load ptr, ptr %pSrcAttr, align 8
  %call19 = call ptr @ExtractClassAttrValue(ptr noundef %23, ptr noundef %24)
  store ptr %call19, ptr %pvSrc, align 8
  %25 = load ptr, ptr %pVm, align 8
  %26 = load ptr, ptr %pDestAttr, align 8
  %call20 = call ptr @ExtractClassAttrValue(ptr noundef %25, ptr noundef %26)
  store ptr %call20, ptr %pvDest, align 8
  %27 = load ptr, ptr %pvSrc, align 8
  %tobool = icmp ne ptr %27, null
  br i1 %tobool, label %land.lhs.true, label %if.end24

land.lhs.true:                                    ; preds = %if.then18
  %28 = load ptr, ptr %pvDest, align 8
  %tobool21 = icmp ne ptr %28, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %land.lhs.true
  %29 = load ptr, ptr %pvSrc, align 8
  %30 = load ptr, ptr %pvDest, align 8
  %call23 = call i32 @PH7_MemObjStore(ptr noundef %29, ptr noundef %30)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %land.lhs.true, %if.then18
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %31 = load ptr, ptr %pClone, align 8
  %pClass26 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %31, i32 0, i32 1
  %32 = load ptr, ptr %pClass26, align 8
  %call27 = call ptr @PH7_ClassExtractMethod(ptr noundef %32, ptr noundef @.str.127, i32 noundef 7)
  store ptr %call27, ptr %pMethod, align 8
  %33 = load ptr, ptr %pMethod, align 8
  %tobool28 = icmp ne ptr %33, null
  br i1 %tobool28, label %if.then29, label %if.end37

if.then29:                                        ; preds = %while.end
  %34 = load ptr, ptr %pMethod, align 8
  %iCloneDepth = getelementptr inbounds nuw %struct.ph7_class_method, ptr %34, i32 0, i32 4
  %35 = load i32, ptr %iCloneDepth, align 8
  %cmp30 = icmp slt i32 %35, 16
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.then29
  %36 = load ptr, ptr %pMethod, align 8
  %iCloneDepth32 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %36, i32 0, i32 4
  %37 = load i32, ptr %iCloneDepth32, align 8
  %inc = add nsw i32 %37, 1
  store i32 %inc, ptr %iCloneDepth32, align 8
  %38 = load ptr, ptr %pVm, align 8
  %39 = load ptr, ptr %pClone, align 8
  %40 = load ptr, ptr %pMethod, align 8
  %call33 = call i32 @PH7_VmCallClassMethod(ptr noundef %38, ptr noundef %39, ptr noundef %40, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %if.end35

if.else:                                          ; preds = %if.then29
  %41 = load ptr, ptr %pVm, align 8
  %call34 = call i32 @PH7_VmThrowError(ptr noundef %41, ptr noundef null, i32 noundef 1, ptr noundef @.str.128)
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31
  %42 = load ptr, ptr %pMethod, align 8
  %iCloneDepth36 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %42, i32 0, i32 4
  store i32 0, ptr %iCloneDepth36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end35, %while.end
  %43 = load ptr, ptr %pClone, align 8
  store ptr %43, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end37, %if.then4, %if.then
  %44 = load ptr, ptr %retval, align 8
  ret ptr %44
}

; Function Attrs: nounwind uwtable
declare hidden ptr @ExtractClassAttrValue(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @NewClassInstance(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCreateClassInstanceFrame(ptr noundef, ptr noundef) #0

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
