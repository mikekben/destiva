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
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define dso_local i32 @ph7_vm_release(ptr noundef %pVm) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pEngine = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %pVm.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 57
  %2 = load i32, ptr %nMagic, align 8
  %cmp1 = icmp eq i32 %2, -1160651091
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -24, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %3 = load ptr, ptr %pVm.addr, align 8
  %pEngine2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 1
  %4 = load ptr, ptr %pEngine2, align 8
  store ptr %4, ptr %pEngine, align 8
  %5 = load ptr, ptr %pVm.addr, align 8
  %call = call i32 @PH7_VmRelease(ptr noundef %5)
  store i32 %call, ptr %rc, align 4
  %6 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %6, 0
  br i1 %cmp3, label %if.then4, label %if.end23

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %pEngine, align 8
  %pVms = getelementptr inbounds nuw %struct.ph7, ptr %7, i32 0, i32 3
  %8 = load ptr, ptr %pVms, align 8
  %9 = load ptr, ptr %pVm.addr, align 8
  %cmp5 = icmp eq ptr %8, %9
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.then4
  %10 = load ptr, ptr %pEngine, align 8
  %pVms7 = getelementptr inbounds nuw %struct.ph7, ptr %10, i32 0, i32 3
  %11 = load ptr, ptr %pVms7, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 55
  %12 = load ptr, ptr %pNext, align 8
  %13 = load ptr, ptr %pEngine, align 8
  %pVms8 = getelementptr inbounds nuw %struct.ph7, ptr %13, i32 0, i32 3
  store ptr %12, ptr %pVms8, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then4
  %14 = load ptr, ptr %pVm.addr, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 56
  %15 = load ptr, ptr %pPrev, align 8
  %tobool = icmp ne ptr %15, null
  br i1 %tobool, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end9
  %16 = load ptr, ptr %pVm.addr, align 8
  %pNext11 = getelementptr inbounds nuw %struct.ph7_vm, ptr %16, i32 0, i32 55
  %17 = load ptr, ptr %pNext11, align 8
  %18 = load ptr, ptr %pVm.addr, align 8
  %pPrev12 = getelementptr inbounds nuw %struct.ph7_vm, ptr %18, i32 0, i32 56
  %19 = load ptr, ptr %pPrev12, align 8
  %pNext13 = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 55
  store ptr %17, ptr %pNext13, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end9
  %20 = load ptr, ptr %pVm.addr, align 8
  %pNext15 = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 55
  %21 = load ptr, ptr %pNext15, align 8
  %tobool16 = icmp ne ptr %21, null
  br i1 %tobool16, label %if.then17, label %if.end21

if.then17:                                        ; preds = %if.end14
  %22 = load ptr, ptr %pVm.addr, align 8
  %pPrev18 = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 56
  %23 = load ptr, ptr %pPrev18, align 8
  %24 = load ptr, ptr %pVm.addr, align 8
  %pNext19 = getelementptr inbounds nuw %struct.ph7_vm, ptr %24, i32 0, i32 55
  %25 = load ptr, ptr %pNext19, align 8
  %pPrev20 = getelementptr inbounds nuw %struct.ph7_vm, ptr %25, i32 0, i32 56
  store ptr %23, ptr %pPrev20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14
  %26 = load ptr, ptr %pEngine, align 8
  %iVm = getelementptr inbounds nuw %struct.ph7, ptr %26, i32 0, i32 4
  %27 = load i32, ptr %iVm, align 8
  %dec = add nsw i32 %27, -1
  store i32 %dec, ptr %iVm, align 8
  %28 = load ptr, ptr %pEngine, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %pVm.addr, align 8
  %call22 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %29)
  br label %if.end23

if.end23:                                         ; preds = %if.end21, %if.end
  %30 = load i32, ptr %rc, align 4
  store i32 %30, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end23, %if.then
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
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
