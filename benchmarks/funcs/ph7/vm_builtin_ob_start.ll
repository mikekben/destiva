; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmObEntry = type { %struct.ph7_value, %struct.SyBlob }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmObConsumer(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_ob_start(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %sOb = alloca %struct.VmObEntry, align 8
  %rc = alloca i32, align 4
  %pCons = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pCtx.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_context, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pVm2, align 8
  %sCallback = getelementptr inbounds nuw %struct.VmObEntry, ptr %sOb, i32 0, i32 0
  %call = call i32 @PH7_MemObjInit(ptr noundef %3, ptr noundef %sCallback)
  %sOB = getelementptr inbounds nuw %struct.VmObEntry, ptr %sOb, i32 0, i32 1
  %4 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 0
  %call3 = call i32 @SyBlobInit(ptr noundef %sOB, ptr noundef %sAllocator)
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 2
  %8 = load i32, ptr %iFlags, align 8
  %and = and i32 %8, 65
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %9, i64 0
  %10 = load ptr, ptr %arrayidx4, align 8
  %sCallback5 = getelementptr inbounds nuw %struct.VmObEntry, ptr %sOb, i32 0, i32 0
  %call6 = call i32 @PH7_MemObjStore(ptr noundef %10, ptr noundef %sCallback5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %11 = load ptr, ptr %pVm, align 8
  %aOB = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 22
  %call7 = call i32 @SySetPut(ptr noundef %aOB, ptr noundef %sOb)
  store i32 %call7, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp8 = icmp ne i32 %12, 0
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %sCallback10 = getelementptr inbounds nuw %struct.VmObEntry, ptr %sOb, i32 0, i32 0
  %call11 = call i32 @PH7_MemObjRelease(ptr noundef %sCallback10)
  br label %if.end18

if.else:                                          ; preds = %if.end
  %13 = load ptr, ptr %pVm, align 8
  %sVmConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 43
  store ptr %sVmConsumer, ptr %pCons, align 8
  %14 = load ptr, ptr %pCons, align 8
  %xConsumer = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %xConsumer, align 8
  %cmp12 = icmp ne ptr %15, @VmObConsumer
  br i1 %cmp12, label %if.then13, label %if.end17

if.then13:                                        ; preds = %if.else
  %16 = load ptr, ptr %pCons, align 8
  %xConsumer14 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %xConsumer14, align 8
  %18 = load ptr, ptr %pCons, align 8
  %xDef = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %18, i32 0, i32 2
  store ptr %17, ptr %xDef, align 8
  %19 = load ptr, ptr %pCons, align 8
  %pUserData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pUserData, align 8
  %21 = load ptr, ptr %pCons, align 8
  %pDefData = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %21, i32 0, i32 3
  store ptr %20, ptr %pDefData, align 8
  %22 = load ptr, ptr %pCons, align 8
  %xConsumer15 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %22, i32 0, i32 0
  store ptr @VmObConsumer, ptr %xConsumer15, align 8
  %23 = load ptr, ptr %pVm, align 8
  %24 = load ptr, ptr %pCons, align 8
  %pUserData16 = getelementptr inbounds nuw %struct.ph7_output_consumer, ptr %24, i32 0, i32 1
  store ptr %23, ptr %pUserData16, align 8
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.else
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %if.then9
  %25 = load ptr, ptr %pCtx.addr, align 8
  %26 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %26, 0
  %conv = zext i1 %cmp19 to i32
  %call20 = call i32 @ph7_result_bool(ptr noundef %25, i32 noundef %conv)
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
