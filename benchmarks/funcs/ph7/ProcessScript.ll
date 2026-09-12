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

@.str.33 = external hidden unnamed_addr constant [3 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @ProcessScript(ptr noundef %pEngine, ptr noundef %ppVm, ptr noundef %pScript, i32 noundef %iFlags, ptr noundef %zFilePath) #0 {
entry:
  %retval = alloca i32, align 4
  %pEngine.addr = alloca ptr, align 8
  %ppVm.addr = alloca ptr, align 8
  %pScript.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %zFilePath.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %rc = alloca i32, align 4
  %nErr24 = alloca i32, align 4
  store ptr %pEngine, ptr %pEngine.addr, align 8
  store ptr %ppVm, ptr %ppVm.addr, align 8
  store ptr %pScript, ptr %pScript.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store ptr %zFilePath, ptr %zFilePath.addr, align 8
  %0 = load ptr, ptr %pEngine.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7, ptr %0, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 2592)
  store ptr %call, ptr %pVm, align 8
  %1 = load ptr, ptr %pVm, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %ppVm.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %ppVm.addr, align 8
  store ptr null, ptr %3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %4 = load i32, ptr %iFlags.addr, align 4
  %cmp3 = icmp slt i32 %4, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end2
  store i32 0, ptr %iFlags.addr, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end2
  %5 = load ptr, ptr %pVm, align 8
  %6 = load ptr, ptr %pEngine.addr, align 8
  %call6 = call i32 @PH7_VmInit(ptr noundef %5, ptr noundef %6)
  store i32 %call6, ptr %rc, align 4
  %7 = load i32, ptr %rc, align 4
  %cmp7 = icmp ne i32 %7, 0
  br i1 %cmp7, label %if.then8, label %if.end14

if.then8:                                         ; preds = %if.end5
  %8 = load ptr, ptr %pEngine.addr, align 8
  %sAllocator9 = getelementptr inbounds nuw %struct.ph7, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm, align 8
  %call10 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator9, ptr noundef %9)
  %10 = load ptr, ptr %ppVm.addr, align 8
  %tobool11 = icmp ne ptr %10, null
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then8
  %11 = load ptr, ptr %ppVm.addr, align 8
  store ptr null, ptr %11, align 8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then8
  store i32 -71, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.end5
  %12 = load ptr, ptr %zFilePath.addr, align 8
  %tobool15 = icmp ne ptr %12, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end14
  %13 = load ptr, ptr %pVm, align 8
  %14 = load ptr, ptr %zFilePath.addr, align 8
  %call17 = call i32 @PH7_VmPushFilePath(ptr noundef %13, ptr noundef %14, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null)
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end14
  %15 = load ptr, ptr %pEngine.addr, align 8
  %xConf = getelementptr inbounds nuw %struct.ph7, ptr %15, i32 0, i32 2
  %sErrConsumer = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf, i32 0, i32 2
  %call19 = call i32 @SyBlobReset(ptr noundef %sErrConsumer)
  %16 = load ptr, ptr %pVm, align 8
  %17 = load ptr, ptr %pScript.addr, align 8
  %18 = load i32, ptr %iFlags.addr, align 4
  %call20 = call i32 @PH7_CompileScript(ptr noundef %16, ptr noundef %17, i32 noundef %18)
  %19 = load ptr, ptr %pVm, align 8
  %sCodeGen = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 54
  %nErr = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %sCodeGen, i32 0, i32 14
  %20 = load i32, ptr %nErr, align 8
  %cmp21 = icmp ugt i32 %20, 0
  br i1 %cmp21, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %21 = load ptr, ptr %pVm, align 8
  %cmp22 = icmp eq ptr %21, null
  br i1 %cmp22, label %if.then23, label %if.end35

if.then23:                                        ; preds = %lor.lhs.false, %if.end18
  %22 = load ptr, ptr %pVm, align 8
  %sCodeGen25 = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 54
  %nErr26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %sCodeGen25, i32 0, i32 14
  %23 = load i32, ptr %nErr26, align 8
  store i32 %23, ptr %nErr24, align 4
  %24 = load ptr, ptr %pVm, align 8
  %sAllocator27 = getelementptr inbounds nuw %struct.ph7_vm, ptr %24, i32 0, i32 0
  %call28 = call i32 @SyMemBackendRelease(ptr noundef %sAllocator27)
  %25 = load ptr, ptr %pEngine.addr, align 8
  %sAllocator29 = getelementptr inbounds nuw %struct.ph7, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pVm, align 8
  %call30 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator29, ptr noundef %26)
  %27 = load ptr, ptr %ppVm.addr, align 8
  %tobool31 = icmp ne ptr %27, null
  br i1 %tobool31, label %if.then32, label %if.end33

if.then32:                                        ; preds = %if.then23
  %28 = load ptr, ptr %ppVm.addr, align 8
  store ptr null, ptr %28, align 8
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.then23
  %29 = load i32, ptr %nErr24, align 4
  %cmp34 = icmp ugt i32 %29, 0
  %30 = zext i1 %cmp34 to i64
  %cond = select i1 %cmp34, i32 -70, i32 0
  store i32 %cond, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false
  %31 = load ptr, ptr %pVm, align 8
  %call36 = call i32 @PH7_VmMakeReady(ptr noundef %31)
  store i32 %call36, ptr %rc, align 4
  %32 = load i32, ptr %rc, align 4
  %cmp37 = icmp ne i32 %32, 0
  br i1 %cmp37, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end35
  br label %Release

if.end39:                                         ; preds = %if.end35
  %33 = load ptr, ptr %pVm, align 8
  %call40 = call i32 (ptr, i32, ...) @ph7_vm_config(ptr noundef %33, i32 noundef 3, ptr noundef @.str.33)
  %34 = load ptr, ptr %pEngine.addr, align 8
  %pVms = getelementptr inbounds nuw %struct.ph7, ptr %34, i32 0, i32 3
  %35 = load ptr, ptr %pVms, align 8
  %cmp41 = icmp eq ptr %35, null
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end39
  %36 = load ptr, ptr %pVm, align 8
  %37 = load ptr, ptr %pEngine.addr, align 8
  %pVms43 = getelementptr inbounds nuw %struct.ph7, ptr %37, i32 0, i32 3
  store ptr %36, ptr %pVms43, align 8
  br label %if.end47

if.else:                                          ; preds = %if.end39
  %38 = load ptr, ptr %pEngine.addr, align 8
  %pVms44 = getelementptr inbounds nuw %struct.ph7, ptr %38, i32 0, i32 3
  %39 = load ptr, ptr %pVms44, align 8
  %40 = load ptr, ptr %pVm, align 8
  %pNext = getelementptr inbounds nuw %struct.ph7_vm, ptr %40, i32 0, i32 55
  store ptr %39, ptr %pNext, align 8
  %41 = load ptr, ptr %pVm, align 8
  %42 = load ptr, ptr %pEngine.addr, align 8
  %pVms45 = getelementptr inbounds nuw %struct.ph7, ptr %42, i32 0, i32 3
  %43 = load ptr, ptr %pVms45, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_vm, ptr %43, i32 0, i32 56
  store ptr %41, ptr %pPrev, align 8
  %44 = load ptr, ptr %pVm, align 8
  %45 = load ptr, ptr %pEngine.addr, align 8
  %pVms46 = getelementptr inbounds nuw %struct.ph7, ptr %45, i32 0, i32 3
  store ptr %44, ptr %pVms46, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then42
  %46 = load ptr, ptr %pEngine.addr, align 8
  %iVm = getelementptr inbounds nuw %struct.ph7, ptr %46, i32 0, i32 4
  %47 = load i32, ptr %iVm, align 8
  %inc = add nsw i32 %47, 1
  store i32 %inc, ptr %iVm, align 8
  %48 = load ptr, ptr %pVm, align 8
  %49 = load ptr, ptr %ppVm.addr, align 8
  store ptr %48, ptr %49, align 8
  store i32 0, ptr %retval, align 4
  br label %return

Release:                                          ; preds = %if.then38
  %50 = load ptr, ptr %pVm, align 8
  %sAllocator48 = getelementptr inbounds nuw %struct.ph7_vm, ptr %50, i32 0, i32 0
  %call49 = call i32 @SyMemBackendRelease(ptr noundef %sAllocator48)
  %51 = load ptr, ptr %pEngine.addr, align 8
  %sAllocator50 = getelementptr inbounds nuw %struct.ph7, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %pVm, align 8
  %call51 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator50, ptr noundef %52)
  %53 = load ptr, ptr %ppVm.addr, align 8
  store ptr null, ptr %53, align 8
  store i32 -71, ptr %retval, align 4
  br label %return

return:                                           ; preds = %Release, %if.end47, %if.end33, %if.end13, %if.end
  %54 = load i32, ptr %retval, align 4
  ret i32 %54
}

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_vm_config(ptr noundef, i32 noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmPushFilePath(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileScript(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmMakeReady(ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
