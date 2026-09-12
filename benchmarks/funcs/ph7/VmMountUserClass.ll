; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.96 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.1253 = external hidden unnamed_addr constant [84 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @VmLocalExec(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmErrorFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstallUserFunction(ptr noundef, ptr noundef, ptr noundef) #0

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
define hidden i32 @VmMountUserClass(ptr noundef %pVm, ptr noundef %pClass) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pClass.addr = alloca ptr, align 8
  %pMeth = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pMemObj = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pClass, ptr %pClass.addr, align 8
  %0 = load ptr, ptr %pClass.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %0, i32 0, i32 4
  %call = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %entry
  %1 = load ptr, ptr %pClass.addr, align 8
  %hAttr1 = getelementptr inbounds nuw %struct.ph7_class, ptr %1, i32 0, i32 4
  %call2 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr1)
  store ptr %call2, ptr %pEntry, align 8
  %cmp = icmp ne ptr %call2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pUserData, align 8
  store ptr %3, ptr %pAttr, align 8
  %4 = load ptr, ptr %pAttr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %iFlags, align 8
  %and = and i32 %5, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end16

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %pVm.addr, align 8
  %call3 = call ptr @PH7_ReserveMemObj(ptr noundef %6)
  store ptr %call3, ptr %pMemObj, align 8
  %7 = load ptr, ptr %pMemObj, align 8
  %cmp4 = icmp eq ptr %7, null
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %8 = load ptr, ptr %pVm.addr, align 8
  %9 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %9, i32 0, i32 2
  %10 = load ptr, ptr %pAttr, align 8
  %sName6 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %10, i32 0, i32 0
  %call7 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %8, i32 noundef 1, ptr noundef @.str.1253, ptr noundef %sName, ptr noundef %sName6)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %11 = load ptr, ptr %pAttr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %11, i32 0, i32 3
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aByteCode, i32 0, i32 2
  %12 = load i32, ptr %nUsed, align 8
  %cmp8 = icmp ugt i32 %12, 0
  br i1 %cmp8, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  %13 = load ptr, ptr %pVm.addr, align 8
  %14 = load ptr, ptr %pAttr, align 8
  %aByteCode10 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %pMemObj, align 8
  %call11 = call i32 @VmLocalExec(ptr noundef %13, ptr noundef %aByteCode10, ptr noundef %15)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end
  %16 = load ptr, ptr %pMemObj, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %16, i32 0, i32 5
  %17 = load i32, ptr %nIdx, align 8
  %18 = load ptr, ptr %pAttr, align 8
  %nIdx13 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %18, i32 0, i32 4
  store i32 %17, ptr %nIdx13, align 8
  %19 = load ptr, ptr %pVm.addr, align 8
  %20 = load ptr, ptr %pMemObj, align 8
  %nIdx14 = getelementptr inbounds nuw %struct.ph7_value, ptr %20, i32 0, i32 5
  %21 = load i32, ptr %nIdx14, align 8
  %call15 = call i32 @PH7_VmRefObjInstall(ptr noundef %19, i32 noundef %21, ptr noundef null, ptr noundef null, i32 noundef 1)
  br label %if.end16

if.end16:                                         ; preds = %if.end12, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %22 = load ptr, ptr %pClass.addr, align 8
  %iFlags17 = getelementptr inbounds nuw %struct.ph7_class, ptr %22, i32 0, i32 3
  %23 = load i32, ptr %iFlags17, align 8
  %and18 = and i32 %23, 2
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %while.end
  %24 = load ptr, ptr %pClass.addr, align 8
  %hMethod = getelementptr inbounds nuw %struct.ph7_class, ptr %24, i32 0, i32 5
  %call22 = call ptr @SyHashGet(ptr noundef %hMethod, ptr noundef @.str.96, i32 noundef 11)
  %cmp23 = icmp eq ptr %call22, null
  br i1 %cmp23, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.end21
  %25 = load ptr, ptr %pClass.addr, align 8
  %hMethod25 = getelementptr inbounds nuw %struct.ph7_class, ptr %25, i32 0, i32 5
  %26 = load ptr, ptr %pClass.addr, align 8
  %sName26 = getelementptr inbounds nuw %struct.ph7_class, ptr %26, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName26, i32 0, i32 0
  %27 = load ptr, ptr %zString, align 8
  %28 = load ptr, ptr %pClass.addr, align 8
  %sName27 = getelementptr inbounds nuw %struct.ph7_class, ptr %28, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName27, i32 0, i32 1
  %29 = load i32, ptr %nByte, align 8
  %call28 = call ptr @SyHashGet(ptr noundef %hMethod25, ptr noundef %27, i32 noundef %29)
  store ptr %call28, ptr %pEntry, align 8
  %30 = load ptr, ptr %pEntry, align 8
  %tobool29 = icmp ne ptr %30, null
  br i1 %tobool29, label %if.then30, label %if.end34

if.then30:                                        ; preds = %if.then24
  %31 = load ptr, ptr %pEntry, align 8
  %pUserData31 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %31, i32 0, i32 2
  %32 = load ptr, ptr %pUserData31, align 8
  store ptr %32, ptr %pMeth, align 8
  %33 = load ptr, ptr %pClass.addr, align 8
  %hMethod32 = getelementptr inbounds nuw %struct.ph7_class, ptr %33, i32 0, i32 5
  %34 = load ptr, ptr %pMeth, align 8
  %call33 = call i32 @SyHashInsert(ptr noundef %hMethod32, ptr noundef @.str.96, i32 noundef 11, ptr noundef %34)
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then24
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.end21
  %35 = load ptr, ptr %pClass.addr, align 8
  %hMethod36 = getelementptr inbounds nuw %struct.ph7_class, ptr %35, i32 0, i32 5
  %call37 = call i32 @SyHashResetLoopCursor(ptr noundef %hMethod36)
  br label %while.cond38

while.cond38:                                     ; preds = %if.end52, %if.end35
  %36 = load ptr, ptr %pClass.addr, align 8
  %hMethod39 = getelementptr inbounds nuw %struct.ph7_class, ptr %36, i32 0, i32 5
  %call40 = call ptr @SyHashGetNextEntry(ptr noundef %hMethod39)
  store ptr %call40, ptr %pEntry, align 8
  %cmp41 = icmp ne ptr %call40, null
  br i1 %cmp41, label %while.body42, label %while.end53

while.body42:                                     ; preds = %while.cond38
  %37 = load ptr, ptr %pEntry, align 8
  %pUserData43 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %37, i32 0, i32 2
  %38 = load ptr, ptr %pUserData43, align 8
  store ptr %38, ptr %pMeth, align 8
  %39 = load ptr, ptr %pMeth, align 8
  %iFlags44 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %39, i32 0, i32 3
  %40 = load i32, ptr %iFlags44, align 4
  %and45 = and i32 %40, 4
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %if.then47, label %if.end52

if.then47:                                        ; preds = %while.body42
  %41 = load ptr, ptr %pVm.addr, align 8
  %42 = load ptr, ptr %pMeth, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %pMeth, align 8
  %sVmName = getelementptr inbounds nuw %struct.ph7_class_method, ptr %43, i32 0, i32 1
  %call48 = call i32 @PH7_VmInstallUserFunction(ptr noundef %41, ptr noundef %sFunc, ptr noundef %sVmName)
  store i32 %call48, ptr %rc, align 4
  %44 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %44, 0
  br i1 %cmp49, label %if.then50, label %if.end51

if.then50:                                        ; preds = %if.then47
  %45 = load i32, ptr %rc, align 4
  store i32 %45, ptr %retval, align 4
  br label %return

if.end51:                                         ; preds = %if.then47
  br label %if.end52

if.end52:                                         ; preds = %if.end51, %while.body42
  br label %while.cond38, !llvm.loop !8

while.end53:                                      ; preds = %while.cond38
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end53, %if.then50, %if.then20, %if.then5
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
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
!8 = distinct !{!8, !7}
