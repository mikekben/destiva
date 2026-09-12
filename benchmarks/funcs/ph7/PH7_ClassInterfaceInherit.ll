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
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_ClassInterfaceInherit(ptr noundef %pSub, ptr noundef %pBase) #0 {
entry:
  %retval = alloca i32, align 4
  %pSub.addr = alloca ptr, align 8
  %pBase.addr = alloca ptr, align 8
  %pMeth = alloca ptr, align 8
  %pAttr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pSub, ptr %pSub.addr, align 8
  store ptr %pBase, ptr %pBase.addr, align 8
  %0 = load ptr, ptr %pBase.addr, align 8
  %hDerived = getelementptr inbounds nuw %struct.ph7_class, ptr %0, i32 0, i32 1
  %1 = load ptr, ptr %pSub.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %1, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pSub.addr, align 8
  %sName1 = getelementptr inbounds nuw %struct.ph7_class, ptr %3, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName1, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %5 = load ptr, ptr %pSub.addr, align 8
  %call = call i32 @SyHashInsert(ptr noundef %hDerived, ptr noundef %2, i32 noundef %4, ptr noundef %5)
  %6 = load ptr, ptr %pBase.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class, ptr %6, i32 0, i32 4
  %call2 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end17, %entry
  %7 = load ptr, ptr %pBase.addr, align 8
  %hAttr3 = getelementptr inbounds nuw %struct.ph7_class, ptr %7, i32 0, i32 4
  %call4 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr3)
  store ptr %call4, ptr %pEntry, align 8
  %cmp = icmp ne ptr %call4, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pUserData, align 8
  store ptr %9, ptr %pAttr, align 8
  %10 = load ptr, ptr %pAttr, align 8
  %sName5 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %10, i32 0, i32 0
  store ptr %sName5, ptr %pName, align 8
  %11 = load ptr, ptr %pSub.addr, align 8
  %hAttr6 = getelementptr inbounds nuw %struct.ph7_class, ptr %11, i32 0, i32 4
  %12 = load ptr, ptr %pName, align 8
  %zString7 = getelementptr inbounds nuw %struct.SyString, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %zString7, align 8
  %14 = load ptr, ptr %pName, align 8
  %nByte8 = getelementptr inbounds nuw %struct.SyString, ptr %14, i32 0, i32 1
  %15 = load i32, ptr %nByte8, align 8
  %call9 = call ptr @SyHashGet(ptr noundef %hAttr6, ptr noundef %13, i32 noundef %15)
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then, label %if.end17

if.then:                                          ; preds = %while.body
  %16 = load ptr, ptr %pSub.addr, align 8
  %hAttr11 = getelementptr inbounds nuw %struct.ph7_class, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pName, align 8
  %zString12 = getelementptr inbounds nuw %struct.SyString, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zString12, align 8
  %19 = load ptr, ptr %pName, align 8
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nByte13, align 8
  %21 = load ptr, ptr %pAttr, align 8
  %call14 = call i32 @SyHashInsert(ptr noundef %hAttr11, ptr noundef %18, i32 noundef %20, ptr noundef %21)
  store i32 %call14, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp15 = icmp ne i32 %22, 0
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %if.then
  %23 = load i32, ptr %rc, align 4
  store i32 %23, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end, %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %24 = load ptr, ptr %pBase.addr, align 8
  %hMethod = getelementptr inbounds nuw %struct.ph7_class, ptr %24, i32 0, i32 5
  %call18 = call i32 @SyHashResetLoopCursor(ptr noundef %hMethod)
  br label %while.cond19

while.cond19:                                     ; preds = %if.end39, %while.end
  %25 = load ptr, ptr %pBase.addr, align 8
  %hMethod20 = getelementptr inbounds nuw %struct.ph7_class, ptr %25, i32 0, i32 5
  %call21 = call ptr @SyHashGetNextEntry(ptr noundef %hMethod20)
  store ptr %call21, ptr %pEntry, align 8
  %cmp22 = icmp ne ptr %call21, null
  br i1 %cmp22, label %while.body23, label %while.end40

while.body23:                                     ; preds = %while.cond19
  %26 = load ptr, ptr %pEntry, align 8
  %pUserData24 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %26, i32 0, i32 2
  %27 = load ptr, ptr %pUserData24, align 8
  store ptr %27, ptr %pMeth, align 8
  %28 = load ptr, ptr %pMeth, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %28, i32 0, i32 0
  %sName25 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %sFunc, i32 0, i32 2
  store ptr %sName25, ptr %pName, align 8
  %29 = load ptr, ptr %pSub.addr, align 8
  %hMethod26 = getelementptr inbounds nuw %struct.ph7_class, ptr %29, i32 0, i32 5
  %30 = load ptr, ptr %pName, align 8
  %zString27 = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 0
  %31 = load ptr, ptr %zString27, align 8
  %32 = load ptr, ptr %pName, align 8
  %nByte28 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 1
  %33 = load i32, ptr %nByte28, align 8
  %call29 = call ptr @SyHashGet(ptr noundef %hMethod26, ptr noundef %31, i32 noundef %33)
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.then31, label %if.end39

if.then31:                                        ; preds = %while.body23
  %34 = load ptr, ptr %pSub.addr, align 8
  %hMethod32 = getelementptr inbounds nuw %struct.ph7_class, ptr %34, i32 0, i32 5
  %35 = load ptr, ptr %pName, align 8
  %zString33 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %zString33, align 8
  %37 = load ptr, ptr %pName, align 8
  %nByte34 = getelementptr inbounds nuw %struct.SyString, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nByte34, align 8
  %39 = load ptr, ptr %pMeth, align 8
  %call35 = call i32 @SyHashInsert(ptr noundef %hMethod32, ptr noundef %36, i32 noundef %38, ptr noundef %39)
  store i32 %call35, ptr %rc, align 4
  %40 = load i32, ptr %rc, align 4
  %cmp36 = icmp ne i32 %40, 0
  br i1 %cmp36, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.then31
  %41 = load i32, ptr %rc, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.end38:                                         ; preds = %if.then31
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %while.body23
  br label %while.cond19, !llvm.loop !8

while.end40:                                      ; preds = %while.cond19
  %42 = load ptr, ptr %pBase.addr, align 8
  %43 = load ptr, ptr %pSub.addr, align 8
  %pBase41 = getelementptr inbounds nuw %struct.ph7_class, ptr %43, i32 0, i32 0
  store ptr %42, ptr %pBase41, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end40, %if.then37, %if.then16
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
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
