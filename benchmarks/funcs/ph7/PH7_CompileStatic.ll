; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm_func_static_var = type { %struct.SyString, %struct.SySet, i32 }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.306 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.307 = external hidden unnamed_addr constant [30 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileStatic(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %sStatic = alloca %struct.ph7_vm_func_static_var, align 8
  %pFunc = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %pInstrContainer = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  %3 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %3, i32 0, i32 12
  %4 = load ptr, ptr %pIn2, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %pIn2, align 8
  %5 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 4
  %6 = load ptr, ptr %pCurrent, align 8
  store ptr %6, ptr %pBlock, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %7 = load ptr, ptr %pBlock, align 8
  %tobool = icmp ne ptr %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load ptr, ptr %pBlock, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %8, i32 0, i32 3
  %9 = load i32, ptr %iFlags, align 4
  %and = and i32 %9, 8
  %tobool3 = icmp ne i32 %and, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %10 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %10, i32 0, i32 1
  %11 = load ptr, ptr %pParent, align 8
  store ptr %11, ptr %pBlock, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %12 = load ptr, ptr %pBlock, align 8
  %cmp = icmp eq ptr %12, null
  br i1 %cmp, label %if.then4, label %if.end23

if.then4:                                         ; preds = %while.end
  %13 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %13, i32 0, i32 12
  %14 = load ptr, ptr %pIn5, align 8
  %15 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 13
  %16 = load ptr, ptr %pEnd, align 8
  %cmp6 = icmp uge ptr %14, %16
  br i1 %cmp6, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then4
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn7, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nType, align 8
  %and8 = and i32 %19, 16
  %cmp9 = icmp eq i32 %and8, 0
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %lor.lhs.false, %if.then4
  %20 = load ptr, ptr %pGen.addr, align 8
  %21 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %20, i32 noundef 1, i32 noundef %21, ptr noundef @.str.306)
  store i32 %call, ptr %rc, align 4
  %22 = load i32, ptr %rc, align 4
  %cmp11 = icmp eq i32 %22, -10
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then10
  store i32 -10, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then10
  br label %Synchronize

if.end14:                                         ; preds = %lor.lhs.false
  %23 = load ptr, ptr %pGen.addr, align 8
  %call15 = call i32 @PH7_CompileExpr(ptr noundef %23, i32 noundef 0, ptr noundef null)
  store i32 %call15, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp16 = icmp eq i32 %24, -10
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end14
  store i32 -10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end14
  %25 = load i32, ptr %rc, align 4
  %cmp18 = icmp ne i32 %25, -3
  br i1 %cmp18, label %if.then19, label %if.end21

if.then19:                                        ; preds = %if.else
  %26 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm, align 8
  %call20 = call i32 @PH7_VmEmitInstr(ptr noundef %27, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.else
  br label %if.end22

if.end22:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4
  br label %return

if.end23:                                         ; preds = %while.end
  %28 = load ptr, ptr %pBlock, align 8
  %pUserData = getelementptr inbounds nuw %struct.GenBlock, ptr %28, i32 0, i32 5
  %29 = load ptr, ptr %pUserData, align 8
  store ptr %29, ptr %pFunc, align 8
  %30 = load ptr, ptr %pGen.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 12
  %31 = load ptr, ptr %pIn24, align 8
  %32 = load ptr, ptr %pGen.addr, align 8
  %pEnd25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 13
  %33 = load ptr, ptr %pEnd25, align 8
  %cmp26 = icmp uge ptr %31, %33
  br i1 %cmp26, label %if.then42, label %lor.lhs.false27

lor.lhs.false27:                                  ; preds = %if.end23
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn28, align 8
  %nType29 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 0, i32 1
  %36 = load i32, ptr %nType29, align 8
  %and30 = and i32 %36, 16
  %cmp31 = icmp eq i32 %and30, 0
  br i1 %cmp31, label %if.then42, label %lor.lhs.false32

lor.lhs.false32:                                  ; preds = %lor.lhs.false27
  %37 = load ptr, ptr %pGen.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 12
  %38 = load ptr, ptr %pIn33, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %38, i64 1
  %39 = load ptr, ptr %pGen.addr, align 8
  %pEnd34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 13
  %40 = load ptr, ptr %pEnd34, align 8
  %cmp35 = icmp uge ptr %arrayidx, %40
  br i1 %cmp35, label %if.then42, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %lor.lhs.false32
  %41 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 12
  %42 = load ptr, ptr %pIn37, align 8
  %arrayidx38 = getelementptr inbounds %struct.SyToken, ptr %42, i64 1
  %nType39 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx38, i32 0, i32 1
  %43 = load i32, ptr %nType39, align 8
  %and40 = and i32 %43, 12
  %cmp41 = icmp eq i32 %and40, 0
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %lor.lhs.false36, %lor.lhs.false32, %lor.lhs.false27, %if.end23
  %44 = load ptr, ptr %pGen.addr, align 8
  %45 = load i32, ptr %nLine, align 4
  %call43 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %44, i32 noundef 1, i32 noundef %45, ptr noundef @.str.306)
  store i32 %call43, ptr %rc, align 4
  %46 = load i32, ptr %rc, align 4
  %cmp44 = icmp eq i32 %46, -10
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then42
  store i32 -10, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then42
  br label %Synchronize

if.end47:                                         ; preds = %lor.lhs.false36
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn48, align 8
  %incdec.ptr49 = getelementptr inbounds nuw %struct.SyToken, ptr %48, i32 1
  store ptr %incdec.ptr49, ptr %pIn48, align 8
  %49 = load ptr, ptr %pGen.addr, align 8
  %pIn50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 12
  %50 = load ptr, ptr %pIn50, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %50, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %51 = load ptr, ptr %pGen.addr, align 8
  %pIn51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %pIn51, align 8
  %incdec.ptr52 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 1
  store ptr %incdec.ptr52, ptr %pIn51, align 8
  %53 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %pIn53, align 8
  %55 = load ptr, ptr %pGen.addr, align 8
  %pEnd54 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 13
  %56 = load ptr, ptr %pEnd54, align 8
  %cmp55 = icmp ult ptr %54, %56
  br i1 %cmp55, label %land.lhs.true, label %if.end66

land.lhs.true:                                    ; preds = %if.end47
  %57 = load ptr, ptr %pGen.addr, align 8
  %pIn56 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %pIn56, align 8
  %nType57 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 0, i32 1
  %59 = load i32, ptr %nType57, align 8
  %and58 = and i32 %59, 4456448
  %cmp59 = icmp eq i32 %and58, 0
  br i1 %cmp59, label %if.then60, label %if.end66

if.then60:                                        ; preds = %land.lhs.true
  %60 = load ptr, ptr %pGen.addr, align 8
  %61 = load ptr, ptr %pGen.addr, align 8
  %pIn61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %pIn61, align 8
  %nLine62 = getelementptr inbounds nuw %struct.SyToken, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %nLine62, align 4
  %64 = load ptr, ptr %pGen.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %64, i32 0, i32 12
  %65 = load ptr, ptr %pIn63, align 8
  %sData64 = getelementptr inbounds nuw %struct.SyToken, ptr %65, i32 0, i32 0
  %call65 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %60, i32 noundef 1, i32 noundef %63, ptr noundef @.str.307, ptr noundef %sData64)
  store i32 %call65, ptr %rc, align 4
  br label %Synchronize

if.end66:                                         ; preds = %land.lhs.true, %if.end47
  %aByteCode = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %sStatic, i32 0, i32 1
  %66 = load ptr, ptr %pGen.addr, align 8
  %pVm67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %pVm67, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %67, i32 0, i32 0
  %call68 = call i32 @SySetInit(ptr noundef %aByteCode, ptr noundef %sAllocator, i32 noundef 24)
  %nIdx = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %sStatic, i32 0, i32 2
  store i32 -1, ptr %nIdx, align 8
  %68 = load ptr, ptr %pGen.addr, align 8
  %pVm69 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %pVm69, align 8
  %sAllocator70 = getelementptr inbounds nuw %struct.ph7_vm, ptr %69, i32 0, i32 0
  %70 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %zString, align 8
  %72 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %nByte, align 8
  %call71 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator70, ptr noundef %71, i32 noundef %73)
  store ptr %call71, ptr %zDup, align 8
  %74 = load ptr, ptr %zDup, align 8
  %cmp72 = icmp eq ptr %74, null
  br i1 %cmp72, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end66
  %75 = load ptr, ptr %pGen.addr, align 8
  %76 = load i32, ptr %nLine, align 4
  %call74 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %75, i32 noundef 1, i32 noundef %76, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %if.end66
  %77 = load ptr, ptr %zDup, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %sStatic, i32 0, i32 0
  %zString76 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %77, ptr %zString76, align 8
  %78 = load ptr, ptr %pName, align 8
  %nByte77 = getelementptr inbounds nuw %struct.SyString, ptr %78, i32 0, i32 1
  %79 = load i32, ptr %nByte77, align 8
  %sName78 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %sStatic, i32 0, i32 0
  %nByte79 = getelementptr inbounds nuw %struct.SyString, ptr %sName78, i32 0, i32 1
  store i32 %79, ptr %nByte79, align 8
  %80 = load ptr, ptr %pGen.addr, align 8
  %pIn80 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %80, i32 0, i32 12
  %81 = load ptr, ptr %pIn80, align 8
  %82 = load ptr, ptr %pGen.addr, align 8
  %pEnd81 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 13
  %83 = load ptr, ptr %pEnd81, align 8
  %cmp82 = icmp ult ptr %81, %83
  br i1 %cmp82, label %land.lhs.true83, label %if.end102

land.lhs.true83:                                  ; preds = %if.end75
  %84 = load ptr, ptr %pGen.addr, align 8
  %pIn84 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %84, i32 0, i32 12
  %85 = load ptr, ptr %pIn84, align 8
  %nType85 = getelementptr inbounds nuw %struct.SyToken, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %nType85, align 8
  %and86 = and i32 %86, 4194304
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end102

if.then88:                                        ; preds = %land.lhs.true83
  %87 = load ptr, ptr %pGen.addr, align 8
  %pIn89 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %87, i32 0, i32 12
  %88 = load ptr, ptr %pIn89, align 8
  %incdec.ptr90 = getelementptr inbounds nuw %struct.SyToken, ptr %88, i32 1
  store ptr %incdec.ptr90, ptr %pIn89, align 8
  %89 = load ptr, ptr %pGen.addr, align 8
  %pVm91 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %89, i32 0, i32 0
  %90 = load ptr, ptr %pVm91, align 8
  %call92 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %90)
  store ptr %call92, ptr %pInstrContainer, align 8
  %91 = load ptr, ptr %pGen.addr, align 8
  %pVm93 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %pVm93, align 8
  %aByteCode94 = getelementptr inbounds nuw %struct.ph7_vm_func_static_var, ptr %sStatic, i32 0, i32 1
  %call95 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %92, ptr noundef %aByteCode94)
  %93 = load ptr, ptr %pGen.addr, align 8
  %call96 = call i32 @PH7_CompileExpr(ptr noundef %93, i32 noundef 0, ptr noundef null)
  store i32 %call96, ptr %rc, align 4
  %94 = load ptr, ptr %pGen.addr, align 8
  %pVm97 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %pVm97, align 8
  %96 = load i32, ptr %rc, align 4
  %cmp98 = icmp ne i32 %96, -3
  %97 = zext i1 %cmp98 to i64
  %cond = select i1 %cmp98, i32 1, i32 0
  %call99 = call i32 @PH7_VmEmitInstr(ptr noundef %95, i32 noundef 1, i32 noundef %cond, i32 noundef 0, ptr noundef null, ptr noundef null)
  %98 = load ptr, ptr %pGen.addr, align 8
  %pVm100 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %98, i32 0, i32 0
  %99 = load ptr, ptr %pVm100, align 8
  %100 = load ptr, ptr %pInstrContainer, align 8
  %call101 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %99, ptr noundef %100)
  br label %if.end102

if.end102:                                        ; preds = %if.then88, %land.lhs.true83, %if.end75
  %101 = load ptr, ptr %pFunc, align 8
  %aStatic = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %101, i32 0, i32 1
  %call103 = call i32 @SySetPut(ptr noundef %aStatic, ptr noundef %sStatic)
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.then60, %if.end46, %if.end13
  br label %while.cond104

while.cond104:                                    ; preds = %while.body112, %Synchronize
  %102 = load ptr, ptr %pGen.addr, align 8
  %pIn105 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %pIn105, align 8
  %104 = load ptr, ptr %pGen.addr, align 8
  %pEnd106 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %104, i32 0, i32 13
  %105 = load ptr, ptr %pEnd106, align 8
  %cmp107 = icmp ult ptr %103, %105
  br i1 %cmp107, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond104
  %106 = load ptr, ptr %pGen.addr, align 8
  %pIn108 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %106, i32 0, i32 12
  %107 = load ptr, ptr %pIn108, align 8
  %nType109 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %nType109, align 8
  %and110 = and i32 %108, 262144
  %cmp111 = icmp eq i32 %and110, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond104
  %109 = phi i1 [ false, %while.cond104 ], [ %cmp111, %land.rhs ]
  br i1 %109, label %while.body112, label %while.end115

while.body112:                                    ; preds = %land.end
  %110 = load ptr, ptr %pGen.addr, align 8
  %pIn113 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %110, i32 0, i32 12
  %111 = load ptr, ptr %pIn113, align 8
  %incdec.ptr114 = getelementptr inbounds nuw %struct.SyToken, ptr %111, i32 1
  store ptr %incdec.ptr114, ptr %pIn113, align 8
  br label %while.cond104, !llvm.loop !8

while.end115:                                     ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end115, %if.end102, %if.then73, %if.then45, %if.end22, %if.then17, %if.then12
  %112 = load i32, ptr %retval, align 4
  ret i32 %112
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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
