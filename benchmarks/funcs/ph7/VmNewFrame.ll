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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmNewFrame(ptr noundef %pVm, ptr noundef %pUserData, ptr noundef %pThis) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 224)
  store ptr %call, ptr %pFrame, align 8
  %1 = load ptr, ptr %pFrame, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pFrame, align 8
  call void @SyZero(ptr noundef %2, i32 noundef 224)
  %3 = load ptr, ptr %pUserData.addr, align 8
  %4 = load ptr, ptr %pFrame, align 8
  %pUserData1 = getelementptr inbounds nuw %struct.VmFrame, ptr %4, i32 0, i32 1
  store ptr %3, ptr %pUserData1, align 8
  %5 = load ptr, ptr %pThis.addr, align 8
  %6 = load ptr, ptr %pFrame, align 8
  %pThis2 = getelementptr inbounds nuw %struct.VmFrame, ptr %6, i32 0, i32 2
  store ptr %5, ptr %pThis2, align 8
  %7 = load ptr, ptr %pVm.addr, align 8
  %8 = load ptr, ptr %pFrame, align 8
  %pVm3 = getelementptr inbounds nuw %struct.VmFrame, ptr %8, i32 0, i32 4
  store ptr %7, ptr %pVm3, align 8
  %9 = load ptr, ptr %pFrame, align 8
  %hVar = getelementptr inbounds nuw %struct.VmFrame, ptr %9, i32 0, i32 5
  %10 = load ptr, ptr %pVm.addr, align 8
  %sAllocator4 = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 0
  %call5 = call i32 @SyHashInit(ptr noundef %hVar, ptr noundef %sAllocator4, ptr noundef null, ptr noundef null)
  %11 = load ptr, ptr %pFrame, align 8
  %sArg = getelementptr inbounds nuw %struct.VmFrame, ptr %11, i32 0, i32 6
  %12 = load ptr, ptr %pVm.addr, align 8
  %sAllocator6 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 0
  %call7 = call i32 @SySetInit(ptr noundef %sArg, ptr noundef %sAllocator6, i32 noundef 16)
  %13 = load ptr, ptr %pFrame, align 8
  %sLocal = getelementptr inbounds nuw %struct.VmFrame, ptr %13, i32 0, i32 3
  %14 = load ptr, ptr %pVm.addr, align 8
  %sAllocator8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %call9 = call i32 @SySetInit(ptr noundef %sLocal, ptr noundef %sAllocator8, i32 noundef 16)
  %15 = load ptr, ptr %pFrame, align 8
  %sRef = getelementptr inbounds nuw %struct.VmFrame, ptr %15, i32 0, i32 7
  %16 = load ptr, ptr %pVm.addr, align 8
  %sAllocator10 = getelementptr inbounds nuw %struct.ph7_vm, ptr %16, i32 0, i32 0
  %call11 = call i32 @SySetInit(ptr noundef %sRef, ptr noundef %sAllocator10, i32 noundef 16)
  %17 = load ptr, ptr %pFrame, align 8
  store ptr %17, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %18 = load ptr, ptr %retval, align 8
  ret ptr %18
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
