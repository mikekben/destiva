; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
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

@.str.34 = external hidden unnamed_addr constant [7155 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendInitFromParent(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmInit(ptr noundef %pVm, ptr noundef %pEngine) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pEngine.addr = alloca ptr, align 8
  %sBuiltin = alloca %struct.SyString, align 8
  %pObj = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pEngine, ptr %pEngine.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  call void @SyZero(ptr noundef %0, i32 noundef 2592)
  %1 = load ptr, ptr %pEngine.addr, align 8
  %2 = load ptr, ptr %pVm.addr, align 8
  %pEngine1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 1
  store ptr %1, ptr %pEngine1, align 8
  %3 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pEngine.addr, align 8
  %sAllocator2 = getelementptr inbounds nuw %struct.ph7, ptr %4, i32 0, i32 0
  %call = call i32 @SyMemBackendInitFromParent(ptr noundef %sAllocator, ptr noundef %sAllocator2)
  %5 = load ptr, ptr %pVm.addr, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 2
  %6 = load ptr, ptr %pVm.addr, align 8
  %sAllocator3 = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 0
  %call4 = call i32 @SySetInit(ptr noundef %aByteCode, ptr noundef %sAllocator3, i32 noundef 24)
  %7 = load ptr, ptr %pVm.addr, align 8
  %aByteCode5 = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 2
  %call6 = call i32 @SySetAlloc(ptr noundef %aByteCode5, i32 noundef 255)
  %8 = load ptr, ptr %pVm.addr, align 8
  %aByteCode7 = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 2
  %9 = load ptr, ptr %pVm.addr, align 8
  %pByteContainer = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 3
  store ptr %aByteCode7, ptr %pByteContainer, align 8
  %10 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 6
  %11 = load ptr, ptr %pVm.addr, align 8
  %sAllocator8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 0
  %call9 = call i32 @SySetInit(ptr noundef %aMemObj, ptr noundef %sAllocator8, i32 noundef 72)
  %12 = load ptr, ptr %pVm.addr, align 8
  %aMemObj10 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 6
  %call11 = call i32 @SySetAlloc(ptr noundef %aMemObj10, i32 noundef 255)
  %13 = load ptr, ptr %pVm.addr, align 8
  %sConsumer = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 16
  %14 = load ptr, ptr %pVm.addr, align 8
  %sAllocator12 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %call13 = call i32 @SyBlobInit(ptr noundef %sConsumer, ptr noundef %sAllocator12)
  %15 = load ptr, ptr %pVm.addr, align 8
  %sWorker = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 17
  %16 = load ptr, ptr %pVm.addr, align 8
  %sAllocator14 = getelementptr inbounds nuw %struct.ph7_vm, ptr %16, i32 0, i32 0
  %call15 = call i32 @SyBlobInit(ptr noundef %sWorker, ptr noundef %sAllocator14)
  %17 = load ptr, ptr %pVm.addr, align 8
  %sArgv = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 18
  %18 = load ptr, ptr %pVm.addr, align 8
  %sAllocator16 = getelementptr inbounds nuw %struct.ph7_vm, ptr %18, i32 0, i32 0
  %call17 = call i32 @SyBlobInit(ptr noundef %sArgv, ptr noundef %sAllocator16)
  %19 = load ptr, ptr %pVm.addr, align 8
  %aLitObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %19, i32 0, i32 7
  %20 = load ptr, ptr %pVm.addr, align 8
  %sAllocator18 = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 0
  %call19 = call i32 @SySetInit(ptr noundef %aLitObj, ptr noundef %sAllocator18, i32 noundef 72)
  %21 = load ptr, ptr %pVm.addr, align 8
  %aLitObj20 = getelementptr inbounds nuw %struct.ph7_vm, ptr %21, i32 0, i32 7
  %call21 = call i32 @SySetAlloc(ptr noundef %aLitObj20, i32 noundef 255)
  %22 = load ptr, ptr %pVm.addr, align 8
  %hHostFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pVm.addr, align 8
  %sAllocator22 = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 0
  %call23 = call i32 @SyHashInit(ptr noundef %hHostFunction, ptr noundef %sAllocator22, ptr noundef null, ptr noundef null)
  %24 = load ptr, ptr %pVm.addr, align 8
  %hFunction = getelementptr inbounds nuw %struct.ph7_vm, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %pVm.addr, align 8
  %sAllocator24 = getelementptr inbounds nuw %struct.ph7_vm, ptr %25, i32 0, i32 0
  %call25 = call i32 @SyHashInit(ptr noundef %hFunction, ptr noundef %sAllocator24, ptr noundef null, ptr noundef null)
  %26 = load ptr, ptr %pVm.addr, align 8
  %hClass = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 10
  %27 = load ptr, ptr %pVm.addr, align 8
  %sAllocator26 = getelementptr inbounds nuw %struct.ph7_vm, ptr %27, i32 0, i32 0
  %call27 = call i32 @SyHashInit(ptr noundef %hClass, ptr noundef %sAllocator26, ptr noundef @SyStrHash, ptr noundef @SyStrnmicmp)
  %28 = load ptr, ptr %pVm.addr, align 8
  %hConstant = getelementptr inbounds nuw %struct.ph7_vm, ptr %28, i32 0, i32 11
  %29 = load ptr, ptr %pVm.addr, align 8
  %sAllocator28 = getelementptr inbounds nuw %struct.ph7_vm, ptr %29, i32 0, i32 0
  %call29 = call i32 @SyHashInit(ptr noundef %hConstant, ptr noundef %sAllocator28, ptr noundef null, ptr noundef null)
  %30 = load ptr, ptr %pVm.addr, align 8
  %hSuper = getelementptr inbounds nuw %struct.ph7_vm, ptr %30, i32 0, i32 14
  %31 = load ptr, ptr %pVm.addr, align 8
  %sAllocator30 = getelementptr inbounds nuw %struct.ph7_vm, ptr %31, i32 0, i32 0
  %call31 = call i32 @SyHashInit(ptr noundef %hSuper, ptr noundef %sAllocator30, ptr noundef null, ptr noundef null)
  %32 = load ptr, ptr %pVm.addr, align 8
  %hPDO = getelementptr inbounds nuw %struct.ph7_vm, ptr %32, i32 0, i32 15
  %33 = load ptr, ptr %pVm.addr, align 8
  %sAllocator32 = getelementptr inbounds nuw %struct.ph7_vm, ptr %33, i32 0, i32 0
  %call33 = call i32 @SyHashInit(ptr noundef %hPDO, ptr noundef %sAllocator32, ptr noundef null, ptr noundef null)
  %34 = load ptr, ptr %pVm.addr, align 8
  %aFreeObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %34, i32 0, i32 9
  %35 = load ptr, ptr %pVm.addr, align 8
  %sAllocator34 = getelementptr inbounds nuw %struct.ph7_vm, ptr %35, i32 0, i32 0
  %call35 = call i32 @SySetInit(ptr noundef %aFreeObj, ptr noundef %sAllocator34, i32 noundef 16)
  %36 = load ptr, ptr %pVm.addr, align 8
  %aSelf = getelementptr inbounds nuw %struct.ph7_vm, ptr %36, i32 0, i32 50
  %37 = load ptr, ptr %pVm.addr, align 8
  %sAllocator36 = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 0
  %call37 = call i32 @SySetInit(ptr noundef %aSelf, ptr noundef %sAllocator36, i32 noundef 8)
  %38 = load ptr, ptr %pVm.addr, align 8
  %aShutdown = getelementptr inbounds nuw %struct.ph7_vm, ptr %38, i32 0, i32 23
  %39 = load ptr, ptr %pVm.addr, align 8
  %sAllocator38 = getelementptr inbounds nuw %struct.ph7_vm, ptr %39, i32 0, i32 0
  %call39 = call i32 @SySetInit(ptr noundef %aShutdown, ptr noundef %sAllocator38, i32 noundef 800)
  %40 = load ptr, ptr %pVm.addr, align 8
  %aException = getelementptr inbounds nuw %struct.ph7_vm, ptr %40, i32 0, i32 24
  %41 = load ptr, ptr %pVm.addr, align 8
  %sAllocator40 = getelementptr inbounds nuw %struct.ph7_vm, ptr %41, i32 0, i32 0
  %call41 = call i32 @SySetInit(ptr noundef %aException, ptr noundef %sAllocator40, i32 noundef 8)
  %42 = load ptr, ptr %pVm.addr, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %42, i32 0, i32 19
  %43 = load ptr, ptr %pVm.addr, align 8
  %sAllocator42 = getelementptr inbounds nuw %struct.ph7_vm, ptr %43, i32 0, i32 0
  %call43 = call i32 @SySetInit(ptr noundef %aFiles, ptr noundef %sAllocator42, i32 noundef 16)
  %44 = load ptr, ptr %pVm.addr, align 8
  %aPaths = getelementptr inbounds nuw %struct.ph7_vm, ptr %44, i32 0, i32 20
  %45 = load ptr, ptr %pVm.addr, align 8
  %sAllocator44 = getelementptr inbounds nuw %struct.ph7_vm, ptr %45, i32 0, i32 0
  %call45 = call i32 @SySetInit(ptr noundef %aPaths, ptr noundef %sAllocator44, i32 noundef 16)
  %46 = load ptr, ptr %pVm.addr, align 8
  %aIncluded = getelementptr inbounds nuw %struct.ph7_vm, ptr %46, i32 0, i32 21
  %47 = load ptr, ptr %pVm.addr, align 8
  %sAllocator46 = getelementptr inbounds nuw %struct.ph7_vm, ptr %47, i32 0, i32 0
  %call47 = call i32 @SySetInit(ptr noundef %aIncluded, ptr noundef %sAllocator46, i32 noundef 16)
  %48 = load ptr, ptr %pVm.addr, align 8
  %aOB = getelementptr inbounds nuw %struct.ph7_vm, ptr %48, i32 0, i32 22
  %49 = load ptr, ptr %pVm.addr, align 8
  %sAllocator48 = getelementptr inbounds nuw %struct.ph7_vm, ptr %49, i32 0, i32 0
  %call49 = call i32 @SySetInit(ptr noundef %aOB, ptr noundef %sAllocator48, i32 noundef 104)
  %50 = load ptr, ptr %pVm.addr, align 8
  %aIOstream = getelementptr inbounds nuw %struct.ph7_vm, ptr %50, i32 0, i32 25
  %51 = load ptr, ptr %pVm.addr, align 8
  %sAllocator50 = getelementptr inbounds nuw %struct.ph7_vm, ptr %51, i32 0, i32 0
  %call51 = call i32 @SySetInit(ptr noundef %aIOstream, ptr noundef %sAllocator50, i32 noundef 8)
  %52 = load ptr, ptr %pVm.addr, align 8
  %53 = load ptr, ptr %pVm.addr, align 8
  %aExceptionCB = getelementptr inbounds nuw %struct.ph7_vm, ptr %53, i32 0, i32 28
  %arrayidx = getelementptr inbounds [2 x %struct.ph7_value], ptr %aExceptionCB, i64 0, i64 0
  %call52 = call i32 @PH7_MemObjInit(ptr noundef %52, ptr noundef %arrayidx)
  %54 = load ptr, ptr %pVm.addr, align 8
  %55 = load ptr, ptr %pVm.addr, align 8
  %aExceptionCB53 = getelementptr inbounds nuw %struct.ph7_vm, ptr %55, i32 0, i32 28
  %arrayidx54 = getelementptr inbounds [2 x %struct.ph7_value], ptr %aExceptionCB53, i64 0, i64 1
  %call55 = call i32 @PH7_MemObjInit(ptr noundef %54, ptr noundef %arrayidx54)
  %56 = load ptr, ptr %pVm.addr, align 8
  %57 = load ptr, ptr %pVm.addr, align 8
  %aErrCB = getelementptr inbounds nuw %struct.ph7_vm, ptr %57, i32 0, i32 29
  %arrayidx56 = getelementptr inbounds [2 x %struct.ph7_value], ptr %aErrCB, i64 0, i64 0
  %call57 = call i32 @PH7_MemObjInit(ptr noundef %56, ptr noundef %arrayidx56)
  %58 = load ptr, ptr %pVm.addr, align 8
  %59 = load ptr, ptr %pVm.addr, align 8
  %aErrCB58 = getelementptr inbounds nuw %struct.ph7_vm, ptr %59, i32 0, i32 29
  %arrayidx59 = getelementptr inbounds [2 x %struct.ph7_value], ptr %aErrCB58, i64 0, i64 1
  %call60 = call i32 @PH7_MemObjInit(ptr noundef %58, ptr noundef %arrayidx59)
  %60 = load ptr, ptr %pVm.addr, align 8
  %61 = load ptr, ptr %pVm.addr, align 8
  %sAssertCallback = getelementptr inbounds nuw %struct.ph7_vm, ptr %61, i32 0, i32 45
  %call61 = call i32 @PH7_MemObjInit(ptr noundef %60, ptr noundef %sAssertCallback)
  %62 = load ptr, ptr %pVm.addr, align 8
  %nMaxDepth = getelementptr inbounds nuw %struct.ph7_vm, ptr %62, i32 0, i32 35
  store i32 32, ptr %nMaxDepth, align 8
  %63 = load ptr, ptr %pVm.addr, align 8
  %iAssertFlags = getelementptr inbounds nuw %struct.ph7_vm, ptr %63, i32 0, i32 44
  store i32 2, ptr %iAssertFlags, align 8
  %64 = load ptr, ptr %pVm.addr, align 8
  %json_rc = getelementptr inbounds nuw %struct.ph7_vm, ptr %64, i32 0, i32 39
  store i32 0, ptr %json_rc, align 8
  %65 = load ptr, ptr %pVm.addr, align 8
  %sPrng = getelementptr inbounds nuw %struct.ph7_vm, ptr %65, i32 0, i32 5
  %call62 = call i32 @SyRandomnessInit(ptr noundef %sPrng, ptr noundef null, ptr noundef null)
  %66 = load ptr, ptr %pVm.addr, align 8
  %call63 = call ptr @PH7_ReserveConstObj(ptr noundef %66, ptr noundef null)
  store ptr %call63, ptr %pObj, align 8
  %67 = load ptr, ptr %pObj, align 8
  %cmp = icmp eq ptr %67, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, ptr %rc, align 4
  br label %Err

if.end:                                           ; preds = %entry
  %68 = load ptr, ptr %pVm.addr, align 8
  %69 = load ptr, ptr %pObj, align 8
  %call64 = call i32 @PH7_MemObjInit(ptr noundef %68, ptr noundef %69)
  %70 = load ptr, ptr %pVm.addr, align 8
  %call65 = call ptr @PH7_ReserveConstObj(ptr noundef %70, ptr noundef null)
  store ptr %call65, ptr %pObj, align 8
  %71 = load ptr, ptr %pObj, align 8
  %cmp66 = icmp eq ptr %71, null
  br i1 %cmp66, label %if.then67, label %if.end68

if.then67:                                        ; preds = %if.end
  store i32 -1, ptr %rc, align 4
  br label %Err

if.end68:                                         ; preds = %if.end
  %72 = load ptr, ptr %pVm.addr, align 8
  %73 = load ptr, ptr %pObj, align 8
  %call69 = call i32 @PH7_MemObjInitFromBool(ptr noundef %72, ptr noundef %73, i32 noundef 1)
  %74 = load ptr, ptr %pVm.addr, align 8
  %call70 = call ptr @PH7_ReserveConstObj(ptr noundef %74, ptr noundef null)
  store ptr %call70, ptr %pObj, align 8
  %75 = load ptr, ptr %pObj, align 8
  %cmp71 = icmp eq ptr %75, null
  br i1 %cmp71, label %if.then72, label %if.end73

if.then72:                                        ; preds = %if.end68
  store i32 -1, ptr %rc, align 4
  br label %Err

if.end73:                                         ; preds = %if.end68
  %76 = load ptr, ptr %pVm.addr, align 8
  %77 = load ptr, ptr %pObj, align 8
  %call74 = call i32 @PH7_MemObjInitFromBool(ptr noundef %76, ptr noundef %77, i32 noundef 0)
  %78 = load ptr, ptr %pVm.addr, align 8
  %call75 = call i32 @VmEnterFrame(ptr noundef %78, ptr noundef null, ptr noundef null, ptr noundef null)
  store i32 %call75, ptr %rc, align 4
  %79 = load i32, ptr %rc, align 4
  %cmp76 = icmp ne i32 %79, 0
  br i1 %cmp76, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.end73
  br label %Err

if.end78:                                         ; preds = %if.end73
  %80 = load ptr, ptr %pVm.addr, align 8
  %81 = load ptr, ptr %pEngine.addr, align 8
  %xConf = getelementptr inbounds nuw %struct.ph7, ptr %81, i32 0, i32 2
  %xErr = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf, i32 0, i32 0
  %82 = load ptr, ptr %xErr, align 8
  %83 = load ptr, ptr %pEngine.addr, align 8
  %xConf79 = getelementptr inbounds nuw %struct.ph7, ptr %83, i32 0, i32 2
  %pErrData = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf79, i32 0, i32 1
  %84 = load ptr, ptr %pErrData, align 8
  %call80 = call i32 @PH7_InitCodeGenerator(ptr noundef %80, ptr noundef %82, ptr noundef %84)
  store i32 %call80, ptr %rc, align 4
  %85 = load i32, ptr %rc, align 4
  %cmp81 = icmp ne i32 %85, 0
  br i1 %cmp81, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end78
  br label %Err

if.end83:                                         ; preds = %if.end78
  %86 = load ptr, ptr %pVm.addr, align 8
  %nMagic = getelementptr inbounds nuw %struct.ph7_vm, ptr %86, i32 0, i32 57
  store i32 -86076142, ptr %nMagic, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sBuiltin, i32 0, i32 0
  store ptr @.str.34, ptr %zString, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sBuiltin, i32 0, i32 1
  store i32 7154, ptr %nByte, align 8
  %87 = load ptr, ptr %pVm.addr, align 8
  %call84 = call i32 @VmEvalChunk(ptr noundef %87, ptr noundef null, ptr noundef %sBuiltin, i32 noundef 1, i32 noundef 0)
  %88 = load ptr, ptr %pVm.addr, align 8
  %89 = load ptr, ptr %pEngine.addr, align 8
  %xConf85 = getelementptr inbounds nuw %struct.ph7, ptr %89, i32 0, i32 2
  %xErr86 = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf85, i32 0, i32 0
  %90 = load ptr, ptr %xErr86, align 8
  %91 = load ptr, ptr %pEngine.addr, align 8
  %xConf87 = getelementptr inbounds nuw %struct.ph7, ptr %91, i32 0, i32 2
  %pErrData88 = getelementptr inbounds nuw %struct.ph7_conf, ptr %xConf87, i32 0, i32 1
  %92 = load ptr, ptr %pErrData88, align 8
  %call89 = call i32 @PH7_ResetCodeGenerator(ptr noundef %88, ptr noundef %90, ptr noundef %92)
  store i32 0, ptr %retval, align 4
  br label %return

Err:                                              ; preds = %if.then82, %if.then77, %if.then72, %if.then67, %if.then
  %93 = load ptr, ptr %pVm.addr, align 8
  %sAllocator90 = getelementptr inbounds nuw %struct.ph7_vm, ptr %93, i32 0, i32 0
  %call91 = call i32 @SyMemBackendRelease(ptr noundef %sAllocator90)
  %94 = load i32, ptr %rc, align 4
  store i32 %94, ptr %retval, align 4
  br label %return

return:                                           ; preds = %Err, %if.end83
  %95 = load i32, ptr %retval, align 4
  ret i32 %95
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyHashInit(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrHash(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrnmicmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyRandomnessInit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromBool(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmEnterFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_InitCodeGenerator(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmEvalChunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ResetCodeGenerator(ptr noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
