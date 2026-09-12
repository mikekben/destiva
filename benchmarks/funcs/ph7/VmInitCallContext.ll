; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmInitCallContext(ptr noundef %pOut, ptr noundef %pVm, ptr noundef %pFunc, ptr noundef %pRet, i32 noundef %iFlags) #0 {
entry:
  %pOut.addr = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pFunc.addr = alloca ptr, align 8
  %pRet.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  store ptr %pOut, ptr %pOut.addr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pFunc, ptr %pFunc.addr, align 8
  store ptr %pRet, ptr %pRet.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load ptr, ptr %pFunc.addr, align 8
  %1 = load ptr, ptr %pOut.addr, align 8
  %pFunc1 = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 0
  store ptr %0, ptr %pFunc1, align 8
  %2 = load ptr, ptr %pVm.addr, align 8
  %3 = load ptr, ptr %pOut.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_context, ptr %3, i32 0, i32 4
  store ptr %2, ptr %pVm2, align 8
  %4 = load ptr, ptr %pOut.addr, align 8
  %sVar = getelementptr inbounds nuw %struct.ph7_context, ptr %4, i32 0, i32 2
  %5 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %sVar, ptr noundef %sAllocator, i32 noundef 8)
  %6 = load ptr, ptr %pOut.addr, align 8
  %sChunk = getelementptr inbounds nuw %struct.ph7_context, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pVm.addr, align 8
  %sAllocator3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 0
  %call4 = call i32 @SySetInit(ptr noundef %sChunk, ptr noundef %sAllocator3, i32 noundef 8)
  %8 = load ptr, ptr %pRet.addr, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_value, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %iFlags5, align 8
  %and = and i32 %9, -496
  %or = or i32 %and, 32
  %10 = load ptr, ptr %pRet.addr, align 8
  %iFlags6 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  store i32 %or, ptr %iFlags6, align 8
  %11 = load ptr, ptr %pRet.addr, align 8
  %12 = load ptr, ptr %pOut.addr, align 8
  %pRet7 = getelementptr inbounds nuw %struct.ph7_context, ptr %12, i32 0, i32 1
  store ptr %11, ptr %pRet7, align 8
  %13 = load i32, ptr %iFlags.addr, align 4
  %14 = load ptr, ptr %pOut.addr, align 8
  %iFlags8 = getelementptr inbounds nuw %struct.ph7_context, ptr %14, i32 0, i32 5
  store i32 %13, ptr %iFlags8, align 8
  ret i32 0
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
