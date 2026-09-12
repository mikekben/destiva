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
%struct.SyString = type { ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.ph7_constant = type { %struct.SyString, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmRegisterConstant(ptr noundef %pVm, ptr noundef %pName, ptr noundef %xExpand, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %xExpand.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pCons = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %zDupName = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %xExpand, ptr %xExpand.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %hConstant = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 11
  %1 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hConstant, ptr noundef %2, i32 noundef %4)
  store ptr %call, ptr %pEntry, align 8
  %5 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pEntry, align 8
  %pUserData1 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pUserData1, align 8
  store ptr %7, ptr %pCons, align 8
  %8 = load ptr, ptr %xExpand.addr, align 8
  %9 = load ptr, ptr %pCons, align 8
  %xExpand2 = getelementptr inbounds nuw %struct.ph7_constant, ptr %9, i32 0, i32 1
  store ptr %8, ptr %xExpand2, align 8
  %10 = load ptr, ptr %pUserData.addr, align 8
  %11 = load ptr, ptr %pCons, align 8
  %pUserData3 = getelementptr inbounds nuw %struct.ph7_constant, ptr %11, i32 0, i32 2
  store ptr %10, ptr %pUserData3, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 0
  %call4 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 32)
  store ptr %call4, ptr %pCons, align 8
  %13 = load ptr, ptr %pCons, align 8
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %14 = load ptr, ptr %pVm.addr, align 8
  %sAllocator7 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pName.addr, align 8
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %zString8, align 8
  %17 = load ptr, ptr %pName.addr, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %17, i32 0, i32 1
  %18 = load i32, ptr %nByte9, align 8
  %call10 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator7, ptr noundef %16, i32 noundef %18)
  store ptr %call10, ptr %zDupName, align 8
  %19 = load ptr, ptr %zDupName, align 8
  %cmp11 = icmp eq ptr %19, null
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end6
  %20 = load ptr, ptr %pVm.addr, align 8
  %sAllocator13 = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pCons, align 8
  %call14 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator13, ptr noundef %21)
  store i32 0, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.end6
  %22 = load ptr, ptr %zDupName, align 8
  %23 = load ptr, ptr %pCons, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_constant, ptr %23, i32 0, i32 0
  %zString16 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %22, ptr %zString16, align 8
  %24 = load ptr, ptr %pName.addr, align 8
  %nByte17 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 1
  %25 = load i32, ptr %nByte17, align 8
  %26 = load ptr, ptr %pCons, align 8
  %sName18 = getelementptr inbounds nuw %struct.ph7_constant, ptr %26, i32 0, i32 0
  %nByte19 = getelementptr inbounds nuw %struct.SyString, ptr %sName18, i32 0, i32 1
  store i32 %25, ptr %nByte19, align 8
  %27 = load ptr, ptr %xExpand.addr, align 8
  %28 = load ptr, ptr %pCons, align 8
  %xExpand20 = getelementptr inbounds nuw %struct.ph7_constant, ptr %28, i32 0, i32 1
  store ptr %27, ptr %xExpand20, align 8
  %29 = load ptr, ptr %pUserData.addr, align 8
  %30 = load ptr, ptr %pCons, align 8
  %pUserData21 = getelementptr inbounds nuw %struct.ph7_constant, ptr %30, i32 0, i32 2
  store ptr %29, ptr %pUserData21, align 8
  %31 = load ptr, ptr %pVm.addr, align 8
  %hConstant22 = getelementptr inbounds nuw %struct.ph7_vm, ptr %31, i32 0, i32 11
  %32 = load ptr, ptr %zDupName, align 8
  %33 = load ptr, ptr %pCons, align 8
  %sName23 = getelementptr inbounds nuw %struct.ph7_constant, ptr %33, i32 0, i32 0
  %nByte24 = getelementptr inbounds nuw %struct.SyString, ptr %sName23, i32 0, i32 1
  %34 = load i32, ptr %nByte24, align 8
  %35 = load ptr, ptr %pCons, align 8
  %call25 = call i32 @SyHashInsert(ptr noundef %hConstant22, ptr noundef %32, i32 noundef %34, ptr noundef %35)
  store i32 %call25, ptr %rc, align 4
  %36 = load i32, ptr %rc, align 4
  %cmp26 = icmp ne i32 %36, 0
  br i1 %cmp26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %if.end15
  %37 = load ptr, ptr %pVm.addr, align 8
  %sAllocator28 = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %zDupName, align 8
  %call29 = call i32 @SyMemBackendFree(ptr noundef %sAllocator28, ptr noundef %38)
  %39 = load ptr, ptr %pVm.addr, align 8
  %sAllocator30 = getelementptr inbounds nuw %struct.ph7_vm, ptr %39, i32 0, i32 0
  %40 = load ptr, ptr %pCons, align 8
  %call31 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator30, ptr noundef %40)
  %41 = load i32, ptr %rc, align 4
  store i32 %41, ptr %retval, align 4
  br label %return

if.end32:                                         ; preds = %if.end15
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end32, %if.then27, %if.then12, %if.then5, %if.then
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
