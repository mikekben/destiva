; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7 = type { %struct.SyMemBackend, ptr, %struct.ph7_conf, ptr, i32, ptr, ptr, i32 }
%struct.ph7_conf = type { ptr, ptr, %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileScript(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromBool(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmEvalChunk(ptr noundef %pVm, ptr noundef %pCtx, ptr noundef %pChunk, i32 noundef %iFlags, i32 noundef %bTrueReturn) #0 {
entry:
  %pVm.addr = alloca ptr, align 8
  %pCtx.addr = alloca ptr, align 8
  %pChunk.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %bTrueReturn.addr = alloca i32, align 4
  %pByteCode = alloca ptr, align 8
  %aByteCode = alloca %struct.SySet, align 8
  %xErr = alloca ptr, align 8
  %pErrData = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pChunk, ptr %pChunk.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 %bTrueReturn, ptr %bTrueReturn.addr, align 4
  store ptr null, ptr %xErr, align 8
  store ptr null, ptr %pErrData, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %aByteCode, ptr noundef %sAllocator, i32 noundef 24)
  %call1 = call i32 @SySetAlloc(ptr noundef %aByteCode, i32 noundef 32)
  %1 = load i32, ptr %bTrueReturn.addr, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %pEngine = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 1
  %3 = load ptr, ptr %pEngine, align 8
  %xConf = getelementptr inbounds nuw %struct.ph7, ptr %3, i32 0, i32 2
  %xErr2 = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf, i32 0, i32 0
  %4 = load ptr, ptr %xErr2, align 8
  store ptr %4, ptr %xErr, align 8
  %5 = load ptr, ptr %pVm.addr, align 8
  %pEngine3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 1
  %6 = load ptr, ptr %pEngine3, align 8
  %xConf4 = getelementptr inbounds nuw %struct.ph7, ptr %6, i32 0, i32 2
  %pErrData5 = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf4, i32 0, i32 1
  %7 = load ptr, ptr %pErrData5, align 8
  store ptr %7, ptr %pErrData, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %pVm.addr, align 8
  %9 = load ptr, ptr %xErr, align 8
  %10 = load ptr, ptr %pErrData, align 8
  %call6 = call i32 @PH7_ResetCodeGenerator(ptr noundef %8, ptr noundef %9, ptr noundef %10)
  %11 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 3
  %12 = load ptr, ptr %pByteContainer, align 8
  store ptr %12, ptr %pByteCode, align 8
  %13 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer7 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 3
  store ptr %aByteCode, ptr %pByteContainer7, align 8
  %14 = load ptr, ptr %pVm.addr, align 8
  %15 = load ptr, ptr %pChunk.addr, align 8
  %16 = load i32, ptr %iFlags.addr, align 4
  %call8 = call i32 @PH7_CompileScript(ptr noundef %14, ptr noundef %15, i32 noundef %16)
  %17 = load ptr, ptr %pVm.addr, align 8
  %sCodeGen = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 54
  %nErr = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %sCodeGen, i32 0, i32 14
  %18 = load i32, ptr %nErr, align 8
  %cmp = icmp ugt i32 %18, 0
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  %19 = load ptr, ptr %pCtx.addr, align 8
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.then9
  %20 = load ptr, ptr %pCtx.addr, align 8
  %call12 = call i32 @ph7_result_bool(ptr noundef %20, i32 noundef 0)
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.then9
  br label %if.end34

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %pVm.addr, align 8
  %call14 = call i32 @PH7_VmEmitInstr(ptr noundef %21, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %cmp15 = icmp ne i32 0, %call14
  br i1 %cmp15, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.else
  %22 = load ptr, ptr %pCtx.addr, align 8
  %tobool17 = icmp ne ptr %22, null
  br i1 %tobool17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.then16
  %23 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_result_bool(ptr noundef %23, i32 noundef 0)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.then16
  br label %Cleanup

if.end21:                                         ; preds = %if.else
  %24 = load i32, ptr %bTrueReturn.addr, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then23, label %if.else25

if.then23:                                        ; preds = %if.end21
  %25 = load ptr, ptr %pVm.addr, align 8
  %call24 = call i32 @PH7_MemObjInitFromBool(ptr noundef %25, ptr noundef %sResult, i32 noundef 1)
  br label %if.end27

if.else25:                                        ; preds = %if.end21
  %26 = load ptr, ptr %pVm.addr, align 8
  %call26 = call i32 @PH7_MemObjInit(ptr noundef %26, ptr noundef %sResult)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.then23
  %27 = load ptr, ptr %pVm.addr, align 8
  %call28 = call i32 @VmLocalExec(ptr noundef %27, ptr noundef %aByteCode, ptr noundef %sResult)
  %28 = load ptr, ptr %pCtx.addr, align 8
  %tobool29 = icmp ne ptr %28, null
  br i1 %tobool29, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end27
  %29 = load ptr, ptr %pCtx.addr, align 8
  %call31 = call i32 @ph7_result_value(ptr noundef %29, ptr noundef %sResult)
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end27
  %call33 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  br label %if.end34

if.end34:                                         ; preds = %if.end32, %if.end13
  br label %Cleanup

Cleanup:                                          ; preds = %if.end34, %if.end20
  %30 = load ptr, ptr %pByteCode, align 8
  %31 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer35 = getelementptr inbounds nuw %struct.ph7_vm, ptr %31, i32 0, i32 3
  store ptr %30, ptr %pByteContainer35, align 8
  %call36 = call i32 @SySetRelease(ptr noundef %aByteCode)
  ret i32 0
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ResetCodeGenerator(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmLocalExec(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
