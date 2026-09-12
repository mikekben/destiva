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
%struct.ph7_user_func = type { ptr, %struct.SyString, ptr, ptr, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmInstallForeignFunction(ptr noundef %pVm, ptr noundef %pName, ptr noundef %xFunc, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %xFunc.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %xFunc, ptr %xFunc.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %hHostFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %zString, align 8
  %3 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %nByte, align 8
  %call = call ptr @SyHashGet(ptr noundef %hHostFunction, ptr noundef %2, i32 noundef %4)
  store ptr %call, ptr %pEntry, align 8
  %5 = load ptr, ptr %pEntry, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pEntry, align 8
  %pUserData1 = getelementptr inbounds nuw %struct.SyHashEntry, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pUserData1, align 8
  store ptr %7, ptr %pFunc, align 8
  %8 = load ptr, ptr %pUserData.addr, align 8
  %9 = load ptr, ptr %pFunc, align 8
  %pUserData2 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %9, i32 0, i32 3
  store ptr %8, ptr %pUserData2, align 8
  %10 = load ptr, ptr %xFunc.addr, align 8
  %11 = load ptr, ptr %pFunc, align 8
  %xFunc3 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %11, i32 0, i32 2
  store ptr %10, ptr %xFunc3, align 8
  %12 = load ptr, ptr %pFunc, align 8
  %aAux = getelementptr inbounds nuw %struct.ph7_user_func, ptr %12, i32 0, i32 4
  %call4 = call i32 @SySetReset(ptr noundef %aAux)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %13 = load ptr, ptr %pVm.addr, align 8
  %14 = load ptr, ptr %pName.addr, align 8
  %15 = load ptr, ptr %xFunc.addr, align 8
  %16 = load ptr, ptr %pUserData.addr, align 8
  %call5 = call i32 @PH7_NewForeignFunction(ptr noundef %13, ptr noundef %14, ptr noundef %15, ptr noundef %16, ptr noundef %pFunc)
  store i32 %call5, ptr %rc, align 4
  %17 = load i32, ptr %rc, align 4
  %cmp = icmp ne i32 %17, 0
  br i1 %cmp, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %18 = load i32, ptr %rc, align 4
  store i32 %18, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %19 = load ptr, ptr %pVm.addr, align 8
  %hHostFunction8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_user_func, ptr %20, i32 0, i32 1
  %zString9 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  %21 = load ptr, ptr %zString9, align 8
  %22 = load ptr, ptr %pName.addr, align 8
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nByte10, align 8
  %24 = load ptr, ptr %pFunc, align 8
  %call11 = call i32 @SyHashInsert(ptr noundef %hHostFunction8, ptr noundef %21, i32 noundef %23, ptr noundef %24)
  store i32 %call11, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp12 = icmp ne i32 %25, 0
  br i1 %cmp12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.end7
  %26 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pFunc, align 8
  %sName14 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %27, i32 0, i32 1
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %sName14, i32 0, i32 0
  %28 = load ptr, ptr %zString15, align 8
  %call16 = call i32 @SyMemBackendFree(ptr noundef %sAllocator, ptr noundef %28)
  %29 = load ptr, ptr %pVm.addr, align 8
  %sAllocator17 = getelementptr inbounds nuw %struct.ph7_vm, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pFunc, align 8
  %call18 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator17, ptr noundef %30)
  %31 = load i32, ptr %rc, align 4
  store i32 %31, ptr %retval, align 4
  br label %return

if.end19:                                         ; preds = %if.end7
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end19, %if.then13, %if.then6, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInsert(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_NewForeignFunction(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
