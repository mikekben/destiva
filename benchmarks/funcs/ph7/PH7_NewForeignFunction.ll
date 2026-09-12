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
%struct.ph7_user_func = type { ptr, %struct.SyString, ptr, ptr, %struct.SySet }

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
define hidden i32 @PH7_NewForeignFunction(ptr noundef %pVm, ptr noundef %pName, ptr noundef %xFunc, ptr noundef %pUserData, ptr noundef %ppOut) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %xFunc.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %ppOut.addr = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store ptr %xFunc, ptr %xFunc.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %ppOut, ptr %ppOut.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 80)
  store ptr %call, ptr %pFunc, align 8
  %1 = load ptr, ptr %pFunc, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %sAllocator1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %zString, align 8
  %5 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte, align 8
  %call2 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator1, ptr noundef %4, i32 noundef %6)
  store ptr %call2, ptr %zDup, align 8
  %7 = load ptr, ptr %zDup, align 8
  %cmp3 = icmp eq ptr %7, null
  br i1 %cmp3, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %8 = load ptr, ptr %pVm.addr, align 8
  %sAllocator5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pFunc, align 8
  %call6 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator5, ptr noundef %9)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end
  %10 = load ptr, ptr %pFunc, align 8
  call void @SyZero(ptr noundef %10, i32 noundef 80)
  %11 = load ptr, ptr %zDup, align 8
  %12 = load ptr, ptr %pFunc, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_user_func, ptr %12, i32 0, i32 1
  %zString8 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %11, ptr %zString8, align 8
  %13 = load ptr, ptr %pName.addr, align 8
  %nByte9 = getelementptr inbounds nuw %struct.SyString, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %nByte9, align 8
  %15 = load ptr, ptr %pFunc, align 8
  %sName10 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %15, i32 0, i32 1
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sName10, i32 0, i32 1
  store i32 %14, ptr %nByte11, align 8
  %16 = load ptr, ptr %pVm.addr, align 8
  %17 = load ptr, ptr %pFunc, align 8
  %pVm12 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %17, i32 0, i32 0
  store ptr %16, ptr %pVm12, align 8
  %18 = load ptr, ptr %xFunc.addr, align 8
  %19 = load ptr, ptr %pFunc, align 8
  %xFunc13 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %19, i32 0, i32 2
  store ptr %18, ptr %xFunc13, align 8
  %20 = load ptr, ptr %pUserData.addr, align 8
  %21 = load ptr, ptr %pFunc, align 8
  %pUserData14 = getelementptr inbounds nuw %struct.ph7_user_func, ptr %21, i32 0, i32 3
  store ptr %20, ptr %pUserData14, align 8
  %22 = load ptr, ptr %pFunc, align 8
  %aAux = getelementptr inbounds nuw %struct.ph7_user_func, ptr %22, i32 0, i32 4
  %23 = load ptr, ptr %pVm.addr, align 8
  %sAllocator15 = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 0
  %call16 = call i32 @SySetInit(ptr noundef %aAux, ptr noundef %sAllocator15, i32 noundef 8)
  %24 = load ptr, ptr %pFunc, align 8
  %25 = load ptr, ptr %ppOut.addr, align 8
  store ptr %24, ptr %25, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then4, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
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
