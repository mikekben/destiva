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
%struct.SyHashEntry = type { ptr, i32, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmBlobConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRandomNum(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmMakeReady(ptr noundef %pVm) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 57
  %1 = load i32, ptr %nMagic, align 8
  %cmp = icmp ne i32 %1, -86076142
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %nMagic1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 57
  store i32 -366538107, ptr %nMagic1, align 8
  %3 = load ptr, ptr %pVm.addr, align 8
  %call = call i32 @PH7_ResetCodeGenerator(ptr noundef %3, ptr noundef null, ptr noundef null)
  %4 = load ptr, ptr %pVm.addr, align 8
  %call2 = call i32 @PH7_VmEmitInstr(ptr noundef %4, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  store i32 %call2, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %if.end
  %6 = load ptr, ptr %pVm.addr, align 8
  %7 = load ptr, ptr %pVm.addr, align 8
  %sExec = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 27
  %call6 = call i32 @PH7_MemObjInit(ptr noundef %6, ptr noundef %sExec)
  %8 = load ptr, ptr %pVm.addr, align 8
  %9 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 3
  %10 = load ptr, ptr %pByteContainer, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %nUsed, align 8
  %call7 = call ptr @VmNewOperandStack(ptr noundef %8, i32 noundef %11)
  %12 = load ptr, ptr %pVm.addr, align 8
  %aOps = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 8
  store ptr %call7, ptr %aOps, align 8
  %13 = load ptr, ptr %pVm.addr, align 8
  %aOps8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 8
  %14 = load ptr, ptr %aOps8, align 8
  %cmp9 = icmp eq ptr %14, null
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end5
  store i32 -1, ptr %retval, align 4
  br label %return

if.end11:                                         ; preds = %if.end5
  %15 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 43
  %xConsumer = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer, i32 0, i32 0
  store ptr @PH7_VmBlobConsumer, ptr %xConsumer, align 8
  %16 = load ptr, ptr %pVm.addr, align 8
  %sConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %16, i32 0, i32 16
  %17 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer12 = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 43
  %pUserData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer12, i32 0, i32 1
  store ptr %sConsumer, ptr %pUserData, align 8
  %18 = load ptr, ptr %pVm.addr, align 8
  %nRefSize = getelementptr inbounds nuw %struct.ph7_vm, ptr %18, i32 0, i32 48
  store i32 16, ptr %nRefSize, align 8
  %19 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pVm.addr, align 8
  %nRefSize13 = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 48
  %21 = load i32, ptr %nRefSize13, align 8
  %conv = zext i32 %21 to i64
  %mul = mul i64 8, %conv
  %conv14 = trunc i64 %mul to i32
  %call15 = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef %conv14)
  %22 = load ptr, ptr %pVm.addr, align 8
  %apRefObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 46
  store ptr %call15, ptr %apRefObj, align 8
  %23 = load ptr, ptr %pVm.addr, align 8
  %apRefObj16 = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 46
  %24 = load ptr, ptr %apRefObj16, align 8
  %cmp17 = icmp eq ptr %24, null
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end11
  store i32 -1, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.end11
  %25 = load ptr, ptr %pVm.addr, align 8
  %apRefObj21 = getelementptr inbounds nuw %struct.ph7_vm, ptr %25, i32 0, i32 46
  %26 = load ptr, ptr %apRefObj21, align 8
  %27 = load ptr, ptr %pVm.addr, align 8
  %nRefSize22 = getelementptr inbounds nuw %struct.ph7_vm, ptr %27, i32 0, i32 48
  %28 = load i32, ptr %nRefSize22, align 8
  %conv23 = zext i32 %28 to i64
  %mul24 = mul i64 8, %conv23
  %conv25 = trunc i64 %mul24 to i32
  call void @SyZero(ptr noundef %26, i32 noundef %conv25)
  %29 = load ptr, ptr %pVm.addr, align 8
  %call26 = call i32 @VmRegisterSpecialFunction(ptr noundef %29)
  store i32 %call26, ptr %rc, align 4
  %30 = load i32, ptr %rc, align 4
  %cmp27 = icmp ne i32 %30, 0
  br i1 %cmp27, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.end20
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.end20
  %32 = load ptr, ptr %pVm.addr, align 8
  %call31 = call i32 @PH7_HashmapCreateSuper(ptr noundef %32)
  store i32 %call31, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp32 = icmp ne i32 %33, 0
  br i1 %cmp32, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end30
  %34 = load i32, ptr %rc, align 4
  store i32 %34, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end30
  %35 = load ptr, ptr %pVm.addr, align 8
  call void @PH7_RegisterBuiltInConstant(ptr noundef %35)
  %36 = load ptr, ptr %pVm.addr, align 8
  call void @PH7_RegisterBuiltInFunction(ptr noundef %36)
  %37 = load ptr, ptr %pVm.addr, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 10
  %call36 = call i32 @SyHashResetLoopCursor(ptr noundef %hClass)
  br label %while.cond

while.cond:                                       ; preds = %if.end46, %if.end35
  %38 = load ptr, ptr %pVm.addr, align 8
  %hClass37 = getelementptr inbounds nuw %struct.ph7_vm, ptr %38, i32 0, i32 10
  %call38 = call ptr @SyHashGetNextEntry(ptr noundef %hClass37)
  store ptr %call38, ptr %pEntry, align 8
  %cmp39 = icmp ne ptr %call38, null
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %39 = load ptr, ptr %pVm.addr, align 8
  %40 = load ptr, ptr %pEntry, align 8
  %pUserData41 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %40, i32 0, i32 2
  %41 = load ptr, ptr %pUserData41, align 8
  %call42 = call i32 @VmMountUserClass(ptr noundef %39, ptr noundef %41)
  store i32 %call42, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp43 = icmp ne i32 %42, 0
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %while.body
  %43 = load i32, ptr %rc, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %while.body
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %44 = load ptr, ptr %pVm.addr, align 8
  %call47 = call i32 @PH7_VmRandomNum(ptr noundef %44)
  %and = and i32 %call47, 1023
  %45 = load ptr, ptr %pVm.addr, align 8
  %unique_id = getelementptr inbounds nuw %struct.ph7_vm, ptr %45, i32 0, i32 40
  store i32 %and, ptr %unique_id, align 4
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.then45, %if.then34, %if.then29, %if.then19, %if.then10, %if.then4, %if.then
  %46 = load i32, ptr %retval, align 4
  ret i32 %46
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ResetCodeGenerator(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmNewOperandStack(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashResetLoopCursor(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGetNextEntry(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmRegisterSpecialFunction(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapCreateSuper(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_RegisterBuiltInConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_RegisterBuiltInFunction(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmMountUserClass(ptr noundef, ptr noundef) #0

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
