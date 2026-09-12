; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmObEntry = type { %struct.ph7_value, %struct.SyBlob }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmObFlush(ptr noundef %pVm, ptr noundef %pEntry, i32 noundef %bRelease) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pEntry.addr = alloca ptr, align 8
  %bRelease.addr = alloca i32, align 4
  %pBlob = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pEntry, ptr %pEntry.addr, align 8
  store i32 %bRelease, ptr %bRelease.addr, align 4
  %0 = load ptr, ptr %pEntry.addr, align 8
  %sOB = getelementptr inbounds nuw %struct.VmObEntry, ptr %0, i32 0, i32 1
  store ptr %sOB, ptr %pBlob, align 8
  store i32 0, ptr %rc, align 4
  %1 = load ptr, ptr %pBlob, align 8
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nByte, align 8
  %cmp = icmp ugt i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 43
  %xDef = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer, i32 0, i32 2
  %4 = load ptr, ptr %xDef, align 8
  %5 = load ptr, ptr %pBlob, align 8
  %pBlob1 = getelementptr inbounds nuw %struct.SyBlob, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pBlob1, align 8
  %7 = load ptr, ptr %pBlob, align 8
  %nByte2 = getelementptr inbounds nuw %struct.SyBlob, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %nByte2, align 8
  %9 = load ptr, ptr %pVm.addr, align 8
  %sVmConsumer3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 43
  %pDefData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %sVmConsumer3, i32 0, i32 3
  %10 = load ptr, ptr %pDefData, align 8
  %call = call i32 %4(ptr noundef %6, i32 noundef %8, ptr noundef %10)
  store i32 %call, ptr %rc, align 4
  %11 = load ptr, ptr %pBlob, align 8
  %nByte4 = getelementptr inbounds nuw %struct.SyBlob, ptr %11, i32 0, i32 2
  %12 = load i32, ptr %nByte4, align 8
  %13 = load ptr, ptr %pVm.addr, align 8
  %nOutputLen = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 42
  %14 = load i32, ptr %nOutputLen, align 8
  %add = add i32 %14, %12
  store i32 %add, ptr %nOutputLen, align 8
  %15 = load i32, ptr %rc, align 4
  %cmp5 = icmp ne i32 %15, -10
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  store i32 0, ptr %rc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry
  %16 = load i32, ptr %bRelease.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end7
  %17 = load ptr, ptr %pVm.addr, align 8
  %18 = load ptr, ptr %pEntry.addr, align 8
  call void @VmObRestore(ptr noundef %17, ptr noundef %18)
  br label %if.end10

if.else:                                          ; preds = %if.end7
  %19 = load ptr, ptr %pBlob, align 8
  %call9 = call i32 @SyBlobReset(ptr noundef %19)
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then8
  %20 = load i32, ptr %rc, align 4
  ret i32 %20
}

; Function Attrs: nounwind uwtable
declare hidden void @VmObRestore(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
