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
%struct.VmObEntry = type { %struct.ph7_value, %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @VmObRestore(ptr noundef %pVm, ptr noundef %pEntry) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %pCons = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 43
  store ptr %sVmConsumer, ptr %pCons, align 8
  %1 = load ptr, ptr %pVm.addr, align 8
  %aOB = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 22
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aOB, i32 0, i32 2
  %2 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCons, align 8
  %xDef = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %3, i32 0, i32 2
  %4 = load ptr, ptr %xDef, align 8
  %5 = load ptr, ptr %pCons, align 8
  %xConsumer = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %5, i32 0, i32 0
  store ptr %4, ptr %xConsumer, align 8
  %6 = load ptr, ptr %pCons, align 8
  %pDefData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %6, i32 0, i32 3
  %7 = load ptr, ptr %pDefData, align 8
  %8 = load ptr, ptr %pCons, align 8
  %pUserData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %8, i32 0, i32 1
  store ptr %7, ptr %pUserData, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load ptr, ptr %pEntry.addr, align 8
  %sCallback = getelementptr inbounds nuw %struct.VmObEntry, ptr %9, i32 0, i32 0
  %call = call i32 @PH7_MemObjRelease(ptr noundef %sCallback)
  %10 = load ptr, ptr %pEntry.addr, align 8
  %sOB = getelementptr inbounds nuw %struct.VmObEntry, ptr %10, i32 0, i32 1
  %call1 = call i32 @SyBlobRelease(ptr noundef %sOB)
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
