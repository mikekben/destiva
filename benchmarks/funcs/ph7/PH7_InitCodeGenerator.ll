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

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_InitCodeGenerator(ptr noundef %pVm, ptr noundef %xErr, ptr noundef %pErrData) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %xErr.addr = alloca ptr, align 8
  %pErrData.addr = alloca ptr, align 8
  %pGen = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %xErr, ptr %xErr.addr, align 8
  store ptr %pErrData, ptr %pErrData.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sCodeGen = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 54
  store ptr %sCodeGen, ptr %pGen, align 8
  %1 = load ptr, ptr %pGen, align 8
  call void @SyZero(ptr noundef %1, i32 noundef 536)
  %2 = load ptr, ptr %pVm.addr, align 8
  %3 = load ptr, ptr %pGen, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 0
  store ptr %2, ptr %pVm1, align 8
  %4 = load ptr, ptr %xErr.addr, align 8
  %5 = load ptr, ptr %pGen, align 8
  %xErr2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 6
  store ptr %4, ptr %xErr2, align 8
  %6 = load ptr, ptr %pErrData.addr, align 8
  %7 = load ptr, ptr %pGen, align 8
  %pErrData3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 7
  store ptr %6, ptr %pErrData3, align 8
  %8 = load ptr, ptr %pGen, align 8
  %aLabel = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %aLabel, ptr noundef %sAllocator, i32 noundef 40)
  %10 = load ptr, ptr %pGen, align 8
  %aGoto = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 9
  %11 = load ptr, ptr %pVm.addr, align 8
  %sAllocator4 = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 0
  %call5 = call i32 @SySetInit(ptr noundef %aGoto, ptr noundef %sAllocator4, i32 noundef 40)
  %12 = load ptr, ptr %pGen, align 8
  %hLiteral = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 1
  %13 = load ptr, ptr %pVm.addr, align 8
  %sAllocator6 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 0
  %call7 = call i32 @SyHashInit(ptr noundef %hLiteral, ptr noundef %sAllocator6, ptr noundef null, ptr noundef null)
  %14 = load ptr, ptr %pGen, align 8
  %hVar = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 3
  %15 = load ptr, ptr %pVm.addr, align 8
  %sAllocator8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 0
  %call9 = call i32 @SyHashInit(ptr noundef %hVar, ptr noundef %sAllocator8, ptr noundef null, ptr noundef null)
  %16 = load ptr, ptr %pGen, align 8
  %sErrBuf = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 11
  %17 = load ptr, ptr %pVm.addr, align 8
  %sAllocator10 = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 0
  %call11 = call i32 @SyBlobInit(ptr noundef %sErrBuf, ptr noundef %sAllocator10)
  %18 = load ptr, ptr %pGen, align 8
  %sWorker = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 10
  %19 = load ptr, ptr %pVm.addr, align 8
  %sAllocator12 = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 0
  %call13 = call i32 @SyBlobInit(ptr noundef %sWorker, ptr noundef %sAllocator12)
  %20 = load ptr, ptr %pGen, align 8
  %21 = load ptr, ptr %pGen, align 8
  %sGlobal = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 5
  %22 = load ptr, ptr %pVm.addr, align 8
  %call14 = call i32 @PH7_VmInstrLength(ptr noundef %22)
  call void @GenStateInitBlock(ptr noundef %20, ptr noundef %sGlobal, i32 noundef 16, i32 noundef %call14, ptr noundef null)
  %23 = load ptr, ptr %pGen, align 8
  %sGlobal15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 5
  %24 = load ptr, ptr %pGen, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 4
  store ptr %sGlobal15, ptr %pCurrent, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden void @GenStateInitBlock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
