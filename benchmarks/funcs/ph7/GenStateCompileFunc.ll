; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm_func_closure_env = type { %struct.SyString, i32, %struct.ph7_value, i32 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@.str.68 = external hidden unnamed_addr constant [114 x i8], align 1
@.str.104 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.220 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.221 = external hidden unnamed_addr constant [60 x i8], align 1
@.str.222 = external hidden unnamed_addr constant [53 x i8], align 1
@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.224 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstallUserFunction(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileFunc(ptr noundef %pGen, ptr noundef %pName, i32 noundef %iFlags, i32 noundef %bHandleClosure, ptr noundef %ppFunc) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %bHandleClosure.addr = alloca i32, align 4
  %ppFunc.addr = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %zName = alloca ptr, align 8
  %rc = alloca i32, align 4
  %sEnv = alloca %struct.ph7_vm_func_closure_env, align 8
  %got_this = alloca i32, align 4
  %nLine44 = alloca i32, align 4
  %iFlags71 = alloca i32, align 4
  %pName141 = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 %bHandleClosure, ptr %bHandleClosure.addr, align 4
  store ptr %ppFunc, ptr %ppFunc.addr, align 8
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
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pEnd4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd4, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %6, ptr noundef %8, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %9 = load ptr, ptr %pEnd, align 8
  %10 = load ptr, ptr %pGen.addr, align 8
  %pEnd5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 13
  %11 = load ptr, ptr %pEnd5, align 8
  %cmp = icmp uge ptr %9, %11
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load i32, ptr %nLine, align 4
  %14 = load ptr, ptr %pName.addr, align 8
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.220, ptr noundef %14)
  store i32 %call, ptr %rc, align 4
  %15 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %15, -10
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %16 = load ptr, ptr %pGen.addr, align 8
  %pEnd8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 13
  %17 = load ptr, ptr %pEnd8, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  store ptr %17, ptr %pIn9, align 8
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %entry
  %19 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 0
  %20 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %20, i32 0, i32 0
  %call11 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 216)
  store ptr %call11, ptr %pFunc, align 8
  %21 = load ptr, ptr %pFunc, align 8
  %cmp12 = icmp eq ptr %21, null
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end10
  br label %OutOfMem

if.end14:                                         ; preds = %if.end10
  %22 = load ptr, ptr %pGen.addr, align 8
  %pVm15 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 0
  %23 = load ptr, ptr %pVm15, align 8
  %sAllocator16 = getelementptr inbounds nuw %struct.ph7_vm, ptr %23, i32 0, i32 0
  %24 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %zString, align 8
  %26 = load ptr, ptr %pName.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nByte, align 8
  %call17 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator16, ptr noundef %25, i32 noundef %27)
  store ptr %call17, ptr %zName, align 8
  %28 = load ptr, ptr %zName, align 8
  %cmp18 = icmp eq ptr %28, null
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end14
  br label %OutOfMem

if.end20:                                         ; preds = %if.end14
  %29 = load ptr, ptr %pGen.addr, align 8
  %pVm21 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pVm21, align 8
  %31 = load ptr, ptr %pFunc, align 8
  %32 = load ptr, ptr %zName, align 8
  %33 = load ptr, ptr %pName.addr, align 8
  %nByte22 = getelementptr inbounds nuw %struct.SyString, ptr %33, i32 0, i32 1
  %34 = load i32, ptr %nByte22, align 8
  %35 = load i32, ptr %iFlags.addr, align 4
  %call23 = call i32 @PH7_VmInitFuncState(ptr noundef %30, ptr noundef %31, ptr noundef %32, i32 noundef %34, i32 noundef %35, ptr noundef null)
  %36 = load ptr, ptr %pGen.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %pIn24, align 8
  %38 = load ptr, ptr %pEnd, align 8
  %cmp25 = icmp ult ptr %37, %38
  br i1 %cmp25, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end20
  %39 = load ptr, ptr %pFunc, align 8
  %40 = load ptr, ptr %pGen.addr, align 8
  %41 = load ptr, ptr %pEnd, align 8
  %call27 = call i32 @GenStateCollectFuncArgs(ptr noundef %39, ptr noundef %40, ptr noundef %41)
  store i32 %call27, ptr %rc, align 4
  %42 = load i32, ptr %rc, align 4
  %cmp28 = icmp eq i32 %42, -10
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %if.then26
  store i32 -10, ptr %retval, align 4
  br label %return

if.end30:                                         ; preds = %if.then26
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end20
  %43 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %43, i64 1
  %44 = load ptr, ptr %pGen.addr, align 8
  %pIn32 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn32, align 8
  %45 = load i32, ptr %bHandleClosure.addr, align 4
  %tobool = icmp ne i32 %45, 0
  br i1 %tobool, label %if.then33, label %if.end212

if.then33:                                        ; preds = %if.end31
  store i32 0, ptr %got_this, align 4
  %46 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %pIn34, align 8
  %48 = load ptr, ptr %pGen.addr, align 8
  %pEnd35 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %48, i32 0, i32 13
  %49 = load ptr, ptr %pEnd35, align 8
  %cmp36 = icmp ult ptr %47, %49
  br i1 %cmp36, label %land.lhs.true, label %if.end211

land.lhs.true:                                    ; preds = %if.then33
  %50 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %pIn37, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %nType, align 8
  %and = and i32 %52, 4
  %tobool38 = icmp ne i32 %and, 0
  br i1 %tobool38, label %land.lhs.true39, label %if.end211

land.lhs.true39:                                  ; preds = %land.lhs.true
  %53 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 12
  %54 = load ptr, ptr %pIn40, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %54, i32 0, i32 3
  %55 = load ptr, ptr %pUserData, align 8
  %56 = ptrtoint ptr %55 to i64
  %conv = trunc i64 %56 to i32
  %cmp41 = icmp eq i32 %conv, 24
  br i1 %cmp41, label %if.then43, label %if.end211

if.then43:                                        ; preds = %land.lhs.true39
  %57 = load ptr, ptr %pGen.addr, align 8
  %pIn45 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %pIn45, align 8
  %nLine46 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %nLine46, align 4
  store i32 %59, ptr %nLine44, align 4
  %60 = load ptr, ptr %pGen.addr, align 8
  %pIn47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %60, i32 0, i32 12
  %61 = load ptr, ptr %pIn47, align 8
  %incdec.ptr48 = getelementptr inbounds nuw %struct.SyToken, ptr %61, i32 1
  store ptr %incdec.ptr48, ptr %pIn47, align 8
  %62 = load ptr, ptr %pGen.addr, align 8
  %pIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %pIn49, align 8
  %64 = load ptr, ptr %pGen.addr, align 8
  %pEnd50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %64, i32 0, i32 13
  %65 = load ptr, ptr %pEnd50, align 8
  %cmp51 = icmp uge ptr %63, %65
  br i1 %cmp51, label %if.then58, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then43
  %66 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %pIn53, align 8
  %nType54 = getelementptr inbounds nuw %struct.SyToken, ptr %67, i32 0, i32 1
  %68 = load i32, ptr %nType54, align 8
  %and55 = and i32 %68, 512
  %cmp56 = icmp eq i32 %and55, 0
  br i1 %cmp56, label %if.then58, label %if.end64

if.then58:                                        ; preds = %lor.lhs.false, %if.then43
  %69 = load ptr, ptr %pGen.addr, align 8
  %70 = load i32, ptr %nLine44, align 4
  %call59 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %69, i32 noundef 1, i32 noundef %70, ptr noundef @.str.221)
  store i32 %call59, ptr %rc, align 4
  %71 = load i32, ptr %rc, align 4
  %cmp60 = icmp eq i32 %71, -10
  br i1 %cmp60, label %if.then62, label %if.end63

if.then62:                                        ; preds = %if.then58
  store i32 -10, ptr %retval, align 4
  br label %return

if.end63:                                         ; preds = %if.then58
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %lor.lhs.false
  %72 = load ptr, ptr %pGen.addr, align 8
  %pIn65 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %72, i32 0, i32 12
  %73 = load ptr, ptr %pIn65, align 8
  %incdec.ptr66 = getelementptr inbounds nuw %struct.SyToken, ptr %73, i32 1
  store ptr %incdec.ptr66, ptr %pIn65, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.end190, %if.end64
  %74 = load ptr, ptr %pGen.addr, align 8
  %pIn67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %pIn67, align 8
  %76 = load ptr, ptr %pGen.addr, align 8
  %pEnd68 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %76, i32 0, i32 13
  %77 = load ptr, ptr %pEnd68, align 8
  %cmp69 = icmp ult ptr %75, %77
  br i1 %cmp69, label %while.body, label %while.end191

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %iFlags71, align 4
  %78 = load ptr, ptr %pGen.addr, align 8
  %pIn72 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 12
  %79 = load ptr, ptr %pIn72, align 8
  %nType73 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %nType73, align 8
  %and74 = and i32 %80, 1024
  %tobool75 = icmp ne i32 %and74, 0
  br i1 %tobool75, label %if.then76, label %if.end79

if.then76:                                        ; preds = %while.body
  %81 = load ptr, ptr %pGen.addr, align 8
  %pIn77 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %81, i32 0, i32 12
  %82 = load ptr, ptr %pIn77, align 8
  %incdec.ptr78 = getelementptr inbounds nuw %struct.SyToken, ptr %82, i32 1
  store ptr %incdec.ptr78, ptr %pIn77, align 8
  br label %while.end191

if.end79:                                         ; preds = %while.body
  %83 = load ptr, ptr %pGen.addr, align 8
  %pIn80 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %83, i32 0, i32 12
  %84 = load ptr, ptr %pIn80, align 8
  %nLine81 = getelementptr inbounds nuw %struct.SyToken, ptr %84, i32 0, i32 2
  %85 = load i32, ptr %nLine81, align 4
  store i32 %85, ptr %nLine44, align 4
  %86 = load ptr, ptr %pGen.addr, align 8
  %pIn82 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %86, i32 0, i32 12
  %87 = load ptr, ptr %pIn82, align 8
  %nType83 = getelementptr inbounds nuw %struct.SyToken, ptr %87, i32 0, i32 1
  %88 = load i32, ptr %nType83, align 8
  %and84 = and i32 %88, 2097152
  %tobool85 = icmp ne i32 %and84, 0
  br i1 %tobool85, label %if.then86, label %if.end90

if.then86:                                        ; preds = %if.end79
  %89 = load ptr, ptr %pGen.addr, align 8
  %90 = load i32, ptr %nLine44, align 4
  %call87 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %89, i32 noundef 2, i32 noundef %90, ptr noundef @.str.68)
  store i32 1, ptr %iFlags71, align 4
  %91 = load ptr, ptr %pGen.addr, align 8
  %pIn88 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 12
  %92 = load ptr, ptr %pIn88, align 8
  %incdec.ptr89 = getelementptr inbounds nuw %struct.SyToken, ptr %92, i32 1
  store ptr %incdec.ptr89, ptr %pIn88, align 8
  br label %if.end90

if.end90:                                         ; preds = %if.then86, %if.end79
  %93 = load ptr, ptr %pGen.addr, align 8
  %pIn91 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %pIn91, align 8
  %95 = load ptr, ptr %pGen.addr, align 8
  %pEnd92 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %95, i32 0, i32 13
  %96 = load ptr, ptr %pEnd92, align 8
  %cmp93 = icmp uge ptr %94, %96
  br i1 %cmp93, label %if.then114, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %if.end90
  %97 = load ptr, ptr %pGen.addr, align 8
  %pIn96 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %97, i32 0, i32 12
  %98 = load ptr, ptr %pIn96, align 8
  %nType97 = getelementptr inbounds nuw %struct.SyToken, ptr %98, i32 0, i32 1
  %99 = load i32, ptr %nType97, align 8
  %and98 = and i32 %99, 16
  %cmp99 = icmp eq i32 %and98, 0
  br i1 %cmp99, label %if.then114, label %lor.lhs.false101

lor.lhs.false101:                                 ; preds = %lor.lhs.false95
  %100 = load ptr, ptr %pGen.addr, align 8
  %pIn102 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %100, i32 0, i32 12
  %101 = load ptr, ptr %pIn102, align 8
  %arrayidx103 = getelementptr inbounds %struct.SyToken, ptr %101, i64 1
  %102 = load ptr, ptr %pGen.addr, align 8
  %pEnd104 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %102, i32 0, i32 13
  %103 = load ptr, ptr %pEnd104, align 8
  %cmp105 = icmp uge ptr %arrayidx103, %103
  br i1 %cmp105, label %if.then114, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %lor.lhs.false101
  %104 = load ptr, ptr %pGen.addr, align 8
  %pIn108 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %104, i32 0, i32 12
  %105 = load ptr, ptr %pIn108, align 8
  %arrayidx109 = getelementptr inbounds %struct.SyToken, ptr %105, i64 1
  %nType110 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx109, i32 0, i32 1
  %106 = load i32, ptr %nType110, align 8
  %and111 = and i32 %106, 12
  %cmp112 = icmp eq i32 %and111, 0
  br i1 %cmp112, label %if.then114, label %if.else

if.then114:                                       ; preds = %lor.lhs.false107, %lor.lhs.false101, %lor.lhs.false95, %if.end90
  %107 = load ptr, ptr %pGen.addr, align 8
  %108 = load i32, ptr %nLine44, align 4
  %call115 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %107, i32 noundef 1, i32 noundef %108, ptr noundef @.str.222)
  store i32 %call115, ptr %rc, align 4
  %109 = load i32, ptr %rc, align 4
  %cmp116 = icmp eq i32 %109, -10
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %if.then114
  store i32 -10, ptr %retval, align 4
  br label %return

if.end119:                                        ; preds = %if.then114
  br label %while.cond120

while.cond120:                                    ; preds = %while.body130, %if.end119
  %110 = load ptr, ptr %pGen.addr, align 8
  %pIn121 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %110, i32 0, i32 12
  %111 = load ptr, ptr %pIn121, align 8
  %112 = load ptr, ptr %pGen.addr, align 8
  %pEnd122 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %112, i32 0, i32 13
  %113 = load ptr, ptr %pEnd122, align 8
  %cmp123 = icmp ult ptr %111, %113
  br i1 %cmp123, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond120
  %114 = load ptr, ptr %pGen.addr, align 8
  %pIn125 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %114, i32 0, i32 12
  %115 = load ptr, ptr %pIn125, align 8
  %nType126 = getelementptr inbounds nuw %struct.SyToken, ptr %115, i32 0, i32 1
  %116 = load i32, ptr %nType126, align 8
  %and127 = and i32 %116, 1024
  %cmp128 = icmp eq i32 %and127, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond120
  %117 = phi i1 [ false, %while.cond120 ], [ %cmp128, %land.rhs ]
  br i1 %117, label %while.body130, label %while.end

while.body130:                                    ; preds = %land.end
  %118 = load ptr, ptr %pGen.addr, align 8
  %pIn131 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %118, i32 0, i32 12
  %119 = load ptr, ptr %pIn131, align 8
  %incdec.ptr132 = getelementptr inbounds nuw %struct.SyToken, ptr %119, i32 1
  store ptr %incdec.ptr132, ptr %pIn131, align 8
  br label %while.cond120, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %120 = load ptr, ptr %pGen.addr, align 8
  %pIn133 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %120, i32 0, i32 12
  %121 = load ptr, ptr %pIn133, align 8
  %122 = load ptr, ptr %pGen.addr, align 8
  %pEnd134 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %122, i32 0, i32 13
  %123 = load ptr, ptr %pEnd134, align 8
  %cmp135 = icmp ult ptr %121, %123
  br i1 %cmp135, label %if.then137, label %if.end140

if.then137:                                       ; preds = %while.end
  %124 = load ptr, ptr %pGen.addr, align 8
  %pIn138 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %124, i32 0, i32 12
  %125 = load ptr, ptr %pIn138, align 8
  %incdec.ptr139 = getelementptr inbounds nuw %struct.SyToken, ptr %125, i32 1
  store ptr %incdec.ptr139, ptr %pIn138, align 8
  br label %if.end140

if.end140:                                        ; preds = %if.then137, %while.end
  br label %while.end191

if.else:                                          ; preds = %lor.lhs.false107
  %126 = load ptr, ptr %pGen.addr, align 8
  %pIn142 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %126, i32 0, i32 12
  %127 = load ptr, ptr %pIn142, align 8
  %arrayidx143 = getelementptr inbounds %struct.SyToken, ptr %127, i64 1
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx143, i32 0, i32 0
  store ptr %sData, ptr %pName141, align 8
  %128 = load ptr, ptr %pGen.addr, align 8
  %pVm144 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %128, i32 0, i32 0
  %129 = load ptr, ptr %pVm144, align 8
  %sAllocator145 = getelementptr inbounds nuw %struct.ph7_vm, ptr %129, i32 0, i32 0
  %130 = load ptr, ptr %pName141, align 8
  %zString146 = getelementptr inbounds nuw %struct.SyString, ptr %130, i32 0, i32 0
  %131 = load ptr, ptr %zString146, align 8
  %132 = load ptr, ptr %pName141, align 8
  %nByte147 = getelementptr inbounds nuw %struct.SyString, ptr %132, i32 0, i32 1
  %133 = load i32, ptr %nByte147, align 8
  %call148 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator145, ptr noundef %131, i32 noundef %133)
  store ptr %call148, ptr %zDup, align 8
  %134 = load ptr, ptr %zDup, align 8
  %tobool149 = icmp ne ptr %134, null
  br i1 %tobool149, label %if.then150, label %if.else171

if.then150:                                       ; preds = %if.else
  call void @SyZero(ptr noundef %sEnv, i32 noundef 104)
  %135 = load i32, ptr %iFlags71, align 4
  %iFlags151 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 1
  store i32 %135, ptr %iFlags151, align 8
  %136 = load ptr, ptr %pGen.addr, align 8
  %pVm152 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %136, i32 0, i32 0
  %137 = load ptr, ptr %pVm152, align 8
  %sValue = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 2
  %call153 = call i32 @PH7_MemObjInit(ptr noundef %137, ptr noundef %sValue)
  %138 = load ptr, ptr %zDup, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 0
  %zString154 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %138, ptr %zString154, align 8
  %139 = load ptr, ptr %pName141, align 8
  %nByte155 = getelementptr inbounds nuw %struct.SyString, ptr %139, i32 0, i32 1
  %140 = load i32, ptr %nByte155, align 8
  %sName156 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 0
  %nByte157 = getelementptr inbounds nuw %struct.SyString, ptr %sName156, i32 0, i32 1
  store i32 %140, ptr %nByte157, align 8
  %141 = load i32, ptr %got_this, align 4
  %tobool158 = icmp ne i32 %141, 0
  br i1 %tobool158, label %if.end169, label %land.lhs.true159

land.lhs.true159:                                 ; preds = %if.then150
  %142 = load ptr, ptr %pName141, align 8
  %nByte160 = getelementptr inbounds nuw %struct.SyString, ptr %142, i32 0, i32 1
  %143 = load i32, ptr %nByte160, align 8
  %conv161 = zext i32 %143 to i64
  %cmp162 = icmp eq i64 %conv161, 4
  br i1 %cmp162, label %land.lhs.true164, label %if.end169

land.lhs.true164:                                 ; preds = %land.lhs.true159
  %144 = load ptr, ptr %zDup, align 8
  %call165 = call i32 @SyMemcmp(ptr noundef %144, ptr noundef @.str.104, i32 noundef 4)
  %cmp166 = icmp eq i32 %call165, 0
  br i1 %cmp166, label %if.then168, label %if.end169

if.then168:                                       ; preds = %land.lhs.true164
  store i32 1, ptr %got_this, align 4
  br label %if.end169

if.end169:                                        ; preds = %if.then168, %land.lhs.true164, %land.lhs.true159, %if.then150
  %145 = load ptr, ptr %pFunc, align 8
  %aClosureEnv = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %145, i32 0, i32 4
  %call170 = call i32 @SySetPut(ptr noundef %aClosureEnv, ptr noundef %sEnv)
  br label %if.end173

if.else171:                                       ; preds = %if.else
  %146 = load ptr, ptr %pGen.addr, align 8
  %147 = load i32, ptr %nLine44, align 4
  %call172 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %146, i32 noundef 1, i32 noundef %147, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end173:                                        ; preds = %if.end169
  br label %if.end174

if.end174:                                        ; preds = %if.end173
  %148 = load ptr, ptr %pGen.addr, align 8
  %pIn175 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %148, i32 0, i32 12
  %149 = load ptr, ptr %pIn175, align 8
  %add.ptr = getelementptr inbounds %struct.SyToken, ptr %149, i64 2
  store ptr %add.ptr, ptr %pIn175, align 8
  br label %while.cond176

while.cond176:                                    ; preds = %while.body187, %if.end174
  %150 = load ptr, ptr %pGen.addr, align 8
  %pIn177 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %pIn177, align 8
  %152 = load ptr, ptr %pGen.addr, align 8
  %pEnd178 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %152, i32 0, i32 13
  %153 = load ptr, ptr %pEnd178, align 8
  %cmp179 = icmp ult ptr %151, %153
  br i1 %cmp179, label %land.rhs181, label %land.end186

land.rhs181:                                      ; preds = %while.cond176
  %154 = load ptr, ptr %pGen.addr, align 8
  %pIn182 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %154, i32 0, i32 12
  %155 = load ptr, ptr %pIn182, align 8
  %nType183 = getelementptr inbounds nuw %struct.SyToken, ptr %155, i32 0, i32 1
  %156 = load i32, ptr %nType183, align 8
  %and184 = and i32 %156, 131072
  %tobool185 = icmp ne i32 %and184, 0
  br label %land.end186

land.end186:                                      ; preds = %land.rhs181, %while.cond176
  %157 = phi i1 [ false, %while.cond176 ], [ %tobool185, %land.rhs181 ]
  br i1 %157, label %while.body187, label %while.end190

while.body187:                                    ; preds = %land.end186
  %158 = load ptr, ptr %pGen.addr, align 8
  %pIn188 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %158, i32 0, i32 12
  %159 = load ptr, ptr %pIn188, align 8
  %incdec.ptr189 = getelementptr inbounds nuw %struct.SyToken, ptr %159, i32 1
  store ptr %incdec.ptr189, ptr %pIn188, align 8
  br label %while.cond176, !llvm.loop !8

while.end190:                                     ; preds = %land.end186
  br label %while.cond, !llvm.loop !9

while.end191:                                     ; preds = %if.end140, %if.then76, %while.cond
  %160 = load i32, ptr %got_this, align 4
  %tobool192 = icmp ne i32 %160, 0
  br i1 %tobool192, label %if.end204, label %if.then193

if.then193:                                       ; preds = %while.end191
  call void @SyZero(ptr noundef %sEnv, i32 noundef 104)
  %iFlags194 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 1
  store i32 32, ptr %iFlags194, align 8
  %161 = load ptr, ptr %pGen.addr, align 8
  %pVm195 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %161, i32 0, i32 0
  %162 = load ptr, ptr %pVm195, align 8
  %sValue196 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 2
  %call197 = call i32 @PH7_MemObjInit(ptr noundef %162, ptr noundef %sValue196)
  %sName198 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 0
  %zString199 = getelementptr inbounds nuw %struct.SyString, ptr %sName198, i32 0, i32 0
  store ptr @.str.104, ptr %zString199, align 8
  %sName200 = getelementptr inbounds nuw %struct.ph7_vm_func_closure_env, ptr %sEnv, i32 0, i32 0
  %nByte201 = getelementptr inbounds nuw %struct.SyString, ptr %sName200, i32 0, i32 1
  store i32 4, ptr %nByte201, align 8
  %163 = load ptr, ptr %pFunc, align 8
  %aClosureEnv202 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %163, i32 0, i32 4
  %call203 = call i32 @SySetPut(ptr noundef %aClosureEnv202, ptr noundef %sEnv)
  br label %if.end204

if.end204:                                        ; preds = %if.then193, %while.end191
  %164 = load ptr, ptr %pFunc, align 8
  %aClosureEnv205 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %164, i32 0, i32 4
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aClosureEnv205, i32 0, i32 2
  %165 = load i32, ptr %nUsed, align 8
  %cmp206 = icmp ugt i32 %165, 0
  br i1 %cmp206, label %if.then208, label %if.end210

if.then208:                                       ; preds = %if.end204
  %166 = load ptr, ptr %pFunc, align 8
  %iFlags209 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %166, i32 0, i32 5
  %167 = load i32, ptr %iFlags209, align 8
  %or = or i32 %167, 16
  store i32 %or, ptr %iFlags209, align 8
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %if.end204
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %land.lhs.true39, %land.lhs.true, %if.then33
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.end31
  %168 = load ptr, ptr %pGen.addr, align 8
  %169 = load ptr, ptr %pFunc, align 8
  %call213 = call i32 @GenStateCompileFuncBody(ptr noundef %168, ptr noundef %169)
  store i32 %call213, ptr %rc, align 4
  %170 = load i32, ptr %rc, align 4
  %cmp214 = icmp eq i32 %170, -10
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.end212
  store i32 -10, ptr %retval, align 4
  br label %return

if.end217:                                        ; preds = %if.end212
  %171 = load ptr, ptr %ppFunc.addr, align 8
  %tobool218 = icmp ne ptr %171, null
  br i1 %tobool218, label %if.then219, label %if.end220

if.then219:                                       ; preds = %if.end217
  %172 = load ptr, ptr %pFunc, align 8
  %173 = load ptr, ptr %ppFunc.addr, align 8
  store ptr %172, ptr %173, align 8
  br label %if.end220

if.end220:                                        ; preds = %if.then219, %if.end217
  store i32 0, ptr %rc, align 4
  %174 = load ptr, ptr %pFunc, align 8
  %iFlags221 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %174, i32 0, i32 5
  %175 = load i32, ptr %iFlags221, align 8
  %and222 = and i32 %175, 16
  %cmp223 = icmp eq i32 %and222, 0
  br i1 %cmp223, label %if.then225, label %if.end228

if.then225:                                       ; preds = %if.end220
  %176 = load ptr, ptr %pGen.addr, align 8
  %pVm226 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %176, i32 0, i32 0
  %177 = load ptr, ptr %pVm226, align 8
  %178 = load ptr, ptr %pFunc, align 8
  %call227 = call i32 @PH7_VmInstallUserFunction(ptr noundef %177, ptr noundef %178, ptr noundef null)
  store i32 %call227, ptr %rc, align 4
  br label %if.end228

if.end228:                                        ; preds = %if.then225, %if.end220
  %179 = load i32, ptr %rc, align 4
  %cmp229 = icmp eq i32 %179, 0
  br i1 %cmp229, label %if.then231, label %if.end232

if.then231:                                       ; preds = %if.end228
  store i32 0, ptr %retval, align 4
  br label %return

if.end232:                                        ; preds = %if.end228
  br label %OutOfMem

OutOfMem:                                         ; preds = %if.end232, %if.then19, %if.then13
  %180 = load ptr, ptr %pGen.addr, align 8
  %call233 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %180, i32 noundef 1, i32 noundef 1, ptr noundef @.str.224)
  store i32 -10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %OutOfMem, %if.then231, %if.then216, %if.else171, %if.then118, %if.then62, %if.then29, %if.end, %if.then7
  %181 = load i32, ptr %retval, align 4
  ret i32 %181
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInitFuncState(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCollectFuncArgs(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileFuncBody(ptr noundef, ptr noundef) #0

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
!9 = distinct !{!9, !7}
