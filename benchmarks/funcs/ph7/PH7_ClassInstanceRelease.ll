; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry = type { ptr, i32, ptr }
%struct.VmClassAttr = type { ptr, i32 }
%struct.ph7_class_attr = type { %struct.SyString, i32, i32, %struct.SySet, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.125 = external hidden unnamed_addr constant [11 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmUnsetMemObj(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_ClassInstanceRelease(ptr noundef %pThis) #0 {
entry:
  %pThis.addr = alloca ptr, align 8
  %pDestr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pVmAttr = alloca ptr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  %0 = load ptr, ptr %pThis.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %0, i32 0, i32 4
  %1 = load i32, ptr %iFlags, align 4
  %and = and i32 %1, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pThis.addr, align 8
  %iFlags1 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %iFlags1, align 4
  %or = or i32 %3, 1
  store i32 %or, ptr %iFlags1, align 4
  %4 = load ptr, ptr %pThis.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVm2, align 8
  store ptr %5, ptr %pVm, align 8
  %6 = load ptr, ptr %pThis.addr, align 8
  %pClass3 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %pClass3, align 8
  store ptr %7, ptr %pClass, align 8
  %8 = load ptr, ptr %pClass, align 8
  %call = call ptr @PH7_ClassExtractMethod(ptr noundef %8, ptr noundef @.str.125, i32 noundef 10)
  store ptr %call, ptr %pDestr, align 8
  %9 = load ptr, ptr %pDestr, align 8
  %tobool4 = icmp ne ptr %9, null
  br i1 %tobool4, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = load ptr, ptr %pThis.addr, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %10, i32 0, i32 3
  store i32 2, ptr %iRef, align 8
  %11 = load ptr, ptr %pVm, align 8
  %12 = load ptr, ptr %pThis.addr, align 8
  %13 = load ptr, ptr %pDestr, align 8
  %call6 = call i32 @PH7_VmCallClassMethod(ptr noundef %11, ptr noundef %12, ptr noundef %13, ptr noundef null, i32 noundef 0, ptr noundef null)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end
  %14 = load ptr, ptr %pThis.addr, align 8
  %hAttr = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %14, i32 0, i32 2
  %call8 = call i32 @SyHashResetLoopCursor(ptr noundef %hAttr)
  br label %while.cond

while.cond:                                       ; preds = %if.end16, %if.end7
  %15 = load ptr, ptr %pThis.addr, align 8
  %hAttr9 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %15, i32 0, i32 2
  %call10 = call ptr @SyHashGetNextEntry(ptr noundef %hAttr9)
  store ptr %call10, ptr %pEntry, align 8
  %cmp = icmp ne ptr %call10, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %16, i32 0, i32 2
  %17 = load ptr, ptr %pUserData, align 8
  store ptr %17, ptr %pVmAttr, align 8
  %18 = load ptr, ptr %pVmAttr, align 8
  %pAttr = getelementptr inbounds nuw %struct.VmClassAttr, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pAttr, align 8
  %iFlags11 = getelementptr inbounds nuw %struct.ph7_class_attr, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %iFlags11, align 8
  %and12 = and i32 %20, 3
  %cmp13 = icmp eq i32 %and12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %while.body
  %21 = load ptr, ptr %pVm, align 8
  %22 = load ptr, ptr %pVmAttr, align 8
  %nIdx = getelementptr inbounds nuw %struct.VmClassAttr, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nIdx, align 8
  %call15 = call i32 @PH7_VmUnsetMemObj(ptr noundef %21, i32 noundef %23, i32 noundef 1)
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %while.body
  %24 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pVmAttr, align 8
  %call17 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %25)
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %26 = load ptr, ptr %pThis.addr, align 8
  %hAttr18 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %26, i32 0, i32 2
  %call19 = call i32 @SyHashRelease(ptr noundef %hAttr18)
  %27 = load ptr, ptr %pVm, align 8
  %sAllocator20 = getelementptr inbounds nuw %struct.ph7_vm, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pThis.addr, align 8
  %call21 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator20, ptr noundef %28)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
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
