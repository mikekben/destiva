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
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_NewClassAttr(ptr noundef %pVm, ptr noundef %pName, i32 noundef %nLine, i32 noundef %iProtection, i32 noundef %iFlags) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %nLine.addr = alloca i32, align 4
  %iProtection.addr = alloca i32, align 4
  %iFlags.addr = alloca i32, align 4
  %pAttr = alloca ptr, align 8
  %zName = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %nLine, ptr %nLine.addr, align 4
  store i32 %iProtection, ptr %iProtection.addr, align 4
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 72)
  store ptr %call, ptr %pAttr, align 8
  %1 = load ptr, ptr %pAttr, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pAttr, align 8
  call void @SyZero(ptr noundef %2, i32 noundef 72)
  %3 = load ptr, ptr %pVm.addr, align 8
  %sAllocator1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString, align 8
  %6 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte, align 8
  %call2 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator1, ptr noundef %5, i32 noundef %7)
  store ptr %call2, ptr %zName, align 8
  %8 = load ptr, ptr %zName, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pVm.addr, align 8
  %sAllocator5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pAttr, align 8
  %call6 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator5, ptr noundef %10)
  store ptr null, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %if.end
  %11 = load ptr, ptr %pAttr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pVm.addr, align 8
  %sAllocator8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 0
  %call9 = call i32 @SySetInit(ptr noundef %aByteCode, ptr noundef %sAllocator8, i32 noundef 24)
  %13 = load ptr, ptr %zName, align 8
  %14 = load ptr, ptr %pAttr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %14, i32 0, i32 0
  %zString10 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %13, ptr %zString10, align 8
  %15 = load ptr, ptr %pName.addr, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %nByte11, align 8
  %17 = load ptr, ptr %pAttr, align 8
  %sName12 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %17, i32 0, i32 0
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %sName12, i32 0, i32 1
  store i32 %16, ptr %nByte13, align 8
  %18 = load i32, ptr %iProtection.addr, align 4
  %19 = load ptr, ptr %pAttr, align 8
  %iProtection14 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %19, i32 0, i32 2
  store i32 %18, ptr %iProtection14, align 4
  %20 = load ptr, ptr %pAttr, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %20, i32 0, i32 4
  store i32 -1, ptr %nIdx, align 8
  %21 = load i32, ptr %iFlags.addr, align 4
  %22 = load ptr, ptr %pAttr, align 8
  %iFlags15 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %22, i32 0, i32 1
  store i32 %21, ptr %iFlags15, align 8
  %23 = load i32, ptr %nLine.addr, align 4
  %24 = load ptr, ptr %pAttr, align 8
  %nLine16 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %24, i32 0, i32 5
  store i32 %23, ptr %nLine16, align 4
  %25 = load ptr, ptr %pAttr, align 8
  store ptr %25, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %26 = load ptr, ptr %retval, align 8
  ret ptr %26
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
