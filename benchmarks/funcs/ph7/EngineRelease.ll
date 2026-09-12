; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @EngineRelease(ptr noundef %pEngine) #0 {
entry:
  %pEngine.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pEngine, ptr %pEngine.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %pVms = getelementptr inbounds nuw %struct.ph7, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pVms, align 8
  store ptr %1, ptr %pVm, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load ptr, ptr %pEngine.addr, align 8
  %iVm = getelementptr inbounds nuw %struct.ph7, ptr %2, i32 0, i32 4
  %3 = load i32, ptr %iVm, align 8
  %cmp = icmp sle i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pVm, align 8
  %pNext1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 55
  %5 = load ptr, ptr %pNext1, align 8
  store ptr %5, ptr %pNext, align 8
  %6 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_VmRelease(ptr noundef %6)
  %7 = load ptr, ptr %pNext, align 8
  store ptr %7, ptr %pVm, align 8
  %8 = load ptr, ptr %pEngine.addr, align 8
  %iVm2 = getelementptr inbounds nuw %struct.ph7, ptr %8, i32 0, i32 4
  %9 = load i32, ptr %iVm2, align 8
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %iVm2, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %10 = load ptr, ptr %pEngine.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7, ptr %10, i32 0, i32 7
  store i32 30261, ptr %nMagic, align 8
  %11 = load ptr, ptr %pEngine.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7, ptr %11, i32 0, i32 0
  %call3 = call i32 @SyMemBackendRelease(ptr noundef %sAllocator)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRelease(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
