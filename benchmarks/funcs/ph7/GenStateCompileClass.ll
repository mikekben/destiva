; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.329 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.347 = external hidden unnamed_addr constant [19 x i8], align 1
@.str.348 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.349 = external hidden unnamed_addr constant [27 x i8], align 1
@.str.350 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.351 = external hidden unnamed_addr constant [83 x i8], align 1
@.str.352 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.353 = external hidden unnamed_addr constant [54 x i8], align 1
@.str.354 = external hidden unnamed_addr constant [73 x i8], align 1
@.str.355 = external hidden unnamed_addr constant [91 x i8], align 1
@.str.356 = external hidden unnamed_addr constant [94 x i8], align 1
@.str.357 = external hidden unnamed_addr constant [91 x i8], align 1
@.str.358 = external hidden unnamed_addr constant [69 x i8], align 1
@.str.359 = external hidden unnamed_addr constant [52 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmExtractClass(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewRawClass(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileClassConstant(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileClassMethod(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstallClass(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateCompileClass(ptr noundef %pGen, i32 noundef %iFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %nLine = alloca i32, align 4
  %pClass = alloca ptr, align 8
  %pBase = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %iProtection = alloca i32, align 4
  %aInterfaces = alloca %struct.SySet, align 8
  %iAttrflags = alloca i32, align 4
  %pName = alloca ptr, align 8
  %nKwrd = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBaseName = alloca ptr, align 8
  %pInterface = alloca ptr, align 8
  %pIntName = alloca ptr, align 8
  %apInterface = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
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
  %cmp = icmp uge ptr %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn5, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 8
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end18

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.347)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, -10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn9, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pEnd10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 13
  %18 = load ptr, ptr %pEnd10, align 8
  %cmp11 = icmp ult ptr %16, %18
  br i1 %cmp11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %19 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 12
  %20 = load ptr, ptr %pIn12, align 8
  %nType13 = getelementptr inbounds nuw %struct.SyToken, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nType13, align 8
  %and14 = and i32 %21, 262208
  %cmp15 = icmp eq i32 %and14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %22 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %22, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn16, align 8
  %incdec.ptr17 = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 1
  store ptr %incdec.ptr17, ptr %pIn16, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

if.end18:                                         ; preds = %lor.lhs.false
  %25 = load ptr, ptr %pGen.addr, align 8
  %pIn19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 12
  %26 = load ptr, ptr %pIn19, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %26, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %27 = load ptr, ptr %pGen.addr, align 8
  %pIn20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 12
  %28 = load ptr, ptr %pIn20, align 8
  %incdec.ptr21 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 1
  store ptr %incdec.ptr21, ptr %pIn20, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pVm, align 8
  %31 = load ptr, ptr %pName, align 8
  %32 = load i32, ptr %nLine, align 4
  %call22 = call ptr @PH7_NewRawClass(ptr noundef %30, ptr noundef %31, i32 noundef %32)
  store ptr %call22, ptr %pClass, align 8
  %33 = load ptr, ptr %pClass, align 8
  %cmp23 = icmp eq ptr %33, null
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end18
  %34 = load ptr, ptr %pGen.addr, align 8
  %35 = load i32, ptr %nLine, align 4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %34, i32 noundef 1, i32 noundef %35, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end18
  %36 = load ptr, ptr %pGen.addr, align 8
  %pVm27 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pVm27, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 0
  %call28 = call i32 @SySetInit(ptr noundef %aInterfaces, ptr noundef %sAllocator, i32 noundef 8)
  store ptr null, ptr %pBase, align 8
  %38 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 12
  %39 = load ptr, ptr %pIn29, align 8
  %40 = load ptr, ptr %pGen.addr, align 8
  %pEnd30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 13
  %41 = load ptr, ptr %pEnd30, align 8
  %cmp31 = icmp ult ptr %39, %41
  br i1 %cmp31, label %land.lhs.true, label %if.end181

land.lhs.true:                                    ; preds = %if.end26
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn32 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pIn32, align 8
  %nType33 = getelementptr inbounds nuw %struct.SyToken, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %nType33, align 8
  %and34 = and i32 %44, 4
  %tobool = icmp ne i32 %and34, 0
  br i1 %tobool, label %if.then35, label %if.end181

if.then35:                                        ; preds = %land.lhs.true
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn36, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 0, i32 3
  %47 = load ptr, ptr %pUserData, align 8
  %48 = ptrtoint ptr %47 to i64
  %conv = trunc i64 %48 to i32
  store i32 %conv, ptr %nKwrd, align 4
  %49 = load i32, ptr %nKwrd, align 4
  %cmp37 = icmp eq i32 %49, 1
  br i1 %cmp37, label %if.then39, label %if.end98

if.then39:                                        ; preds = %if.then35
  %50 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %pIn40, align 8
  %incdec.ptr41 = getelementptr inbounds nuw %struct.SyToken, ptr %51, i32 1
  store ptr %incdec.ptr41, ptr %pIn40, align 8
  %52 = load ptr, ptr %pGen.addr, align 8
  %pIn42 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %pIn42, align 8
  %54 = load ptr, ptr %pGen.addr, align 8
  %pEnd43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 13
  %55 = load ptr, ptr %pEnd43, align 8
  %cmp44 = icmp uge ptr %53, %55
  br i1 %cmp44, label %if.then52, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.then39
  %56 = load ptr, ptr %pGen.addr, align 8
  %pIn47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 12
  %57 = load ptr, ptr %pIn47, align 8
  %nType48 = getelementptr inbounds nuw %struct.SyToken, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %nType48, align 8
  %and49 = and i32 %58, 8
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.then52, label %if.end61

if.then52:                                        ; preds = %lor.lhs.false46, %if.then39
  %59 = load ptr, ptr %pGen.addr, align 8
  %60 = load i32, ptr %nLine, align 4
  %61 = load ptr, ptr %pName, align 8
  %call53 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %59, i32 noundef 1, i32 noundef %60, ptr noundef @.str.348, ptr noundef %61)
  store i32 %call53, ptr %rc, align 4
  %62 = load ptr, ptr %pGen.addr, align 8
  %pVm54 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %pVm54, align 8
  %sAllocator55 = getelementptr inbounds nuw %struct.ph7_vm, ptr %63, i32 0, i32 0
  %64 = load ptr, ptr %pClass, align 8
  %call56 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator55, ptr noundef %64)
  %65 = load i32, ptr %rc, align 4
  %cmp57 = icmp eq i32 %65, -10
  br i1 %cmp57, label %if.then59, label %if.end60

if.then59:                                        ; preds = %if.then52
  store i32 -10, ptr %retval, align 4
  br label %return

if.end60:                                         ; preds = %if.then52
  store i32 0, ptr %retval, align 4
  br label %return

if.end61:                                         ; preds = %lor.lhs.false46
  %66 = load ptr, ptr %pGen.addr, align 8
  %pIn62 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %pIn62, align 8
  %sData63 = getelementptr inbounds nuw %struct.SyToken, ptr %67, i32 0, i32 0
  store ptr %sData63, ptr %pBaseName, align 8
  %68 = load ptr, ptr %pGen.addr, align 8
  %pVm64 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %pVm64, align 8
  %70 = load ptr, ptr %pBaseName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %70, i32 0, i32 0
  %71 = load ptr, ptr %zString, align 8
  %72 = load ptr, ptr %pBaseName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %nByte, align 8
  %call65 = call ptr @PH7_VmExtractClass(ptr noundef %69, ptr noundef %71, i32 noundef %73, i32 noundef 0, i32 noundef 0)
  store ptr %call65, ptr %pBase, align 8
  br label %while.cond66

while.cond66:                                     ; preds = %while.body73, %if.end61
  %74 = load ptr, ptr %pBase, align 8
  %tobool67 = icmp ne ptr %74, null
  br i1 %tobool67, label %land.rhs68, label %land.end72

land.rhs68:                                       ; preds = %while.cond66
  %75 = load ptr, ptr %pBase, align 8
  %iFlags69 = getelementptr inbounds nuw %struct.ph7_class, ptr %75, i32 0, i32 3
  %76 = load i32, ptr %iFlags69, align 8
  %and70 = and i32 %76, 2
  %tobool71 = icmp ne i32 %and70, 0
  br label %land.end72

land.end72:                                       ; preds = %land.rhs68, %while.cond66
  %77 = phi i1 [ false, %while.cond66 ], [ %tobool71, %land.rhs68 ]
  br i1 %77, label %while.body73, label %while.end74

while.body73:                                     ; preds = %land.end72
  %78 = load ptr, ptr %pBase, align 8
  %pNextName = getelementptr inbounds nuw %struct.ph7_class, ptr %78, i32 0, i32 8
  %79 = load ptr, ptr %pNextName, align 8
  store ptr %79, ptr %pBase, align 8
  br label %while.cond66, !llvm.loop !8

while.end74:                                      ; preds = %land.end72
  %80 = load ptr, ptr %pBase, align 8
  %cmp75 = icmp eq ptr %80, null
  br i1 %cmp75, label %if.then77, label %if.else

if.then77:                                        ; preds = %while.end74
  %81 = load ptr, ptr %pGen.addr, align 8
  %82 = load ptr, ptr %pGen.addr, align 8
  %pIn78 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 12
  %83 = load ptr, ptr %pIn78, align 8
  %nLine79 = getelementptr inbounds nuw %struct.SyToken, ptr %83, i32 0, i32 2
  %84 = load i32, ptr %nLine79, align 4
  %85 = load ptr, ptr %pBaseName, align 8
  %call80 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %81, i32 noundef 1, i32 noundef %84, ptr noundef @.str.349, ptr noundef %85)
  store i32 %call80, ptr %rc, align 4
  %86 = load i32, ptr %rc, align 4
  %cmp81 = icmp eq i32 %86, -10
  br i1 %cmp81, label %if.then83, label %if.end84

if.then83:                                        ; preds = %if.then77
  store i32 -10, ptr %retval, align 4
  br label %return

if.end84:                                         ; preds = %if.then77
  br label %if.end95

if.else:                                          ; preds = %while.end74
  %87 = load ptr, ptr %pBase, align 8
  %iFlags85 = getelementptr inbounds nuw %struct.ph7_class, ptr %87, i32 0, i32 3
  %88 = load i32, ptr %iFlags85, align 8
  %and86 = and i32 %88, 1
  %tobool87 = icmp ne i32 %and86, 0
  br i1 %tobool87, label %if.then88, label %if.end94

if.then88:                                        ; preds = %if.else
  %89 = load ptr, ptr %pGen.addr, align 8
  %90 = load i32, ptr %nLine, align 4
  %91 = load ptr, ptr %pName, align 8
  %92 = load ptr, ptr %pBase, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %92, i32 0, i32 2
  %call89 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %89, i32 noundef 1, i32 noundef %90, ptr noundef @.str.350, ptr noundef %91, ptr noundef %sName)
  store i32 %call89, ptr %rc, align 4
  %93 = load i32, ptr %rc, align 4
  %cmp90 = icmp eq i32 %93, -10
  br i1 %cmp90, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.then88
  store i32 -10, ptr %retval, align 4
  br label %return

if.end93:                                         ; preds = %if.then88
  br label %if.end94

if.end94:                                         ; preds = %if.end93, %if.else
  br label %if.end95

if.end95:                                         ; preds = %if.end94, %if.end84
  %94 = load ptr, ptr %pGen.addr, align 8
  %pIn96 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %94, i32 0, i32 12
  %95 = load ptr, ptr %pIn96, align 8
  %incdec.ptr97 = getelementptr inbounds nuw %struct.SyToken, ptr %95, i32 1
  store ptr %incdec.ptr97, ptr %pIn96, align 8
  br label %if.end98

if.end98:                                         ; preds = %if.end95, %if.then35
  %96 = load ptr, ptr %pGen.addr, align 8
  %pIn99 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %96, i32 0, i32 12
  %97 = load ptr, ptr %pIn99, align 8
  %98 = load ptr, ptr %pGen.addr, align 8
  %pEnd100 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %98, i32 0, i32 13
  %99 = load ptr, ptr %pEnd100, align 8
  %cmp101 = icmp ult ptr %97, %99
  br i1 %cmp101, label %land.lhs.true103, label %if.end180

land.lhs.true103:                                 ; preds = %if.end98
  %100 = load ptr, ptr %pGen.addr, align 8
  %pIn104 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %100, i32 0, i32 12
  %101 = load ptr, ptr %pIn104, align 8
  %nType105 = getelementptr inbounds nuw %struct.SyToken, ptr %101, i32 0, i32 1
  %102 = load i32, ptr %nType105, align 8
  %and106 = and i32 %102, 4
  %tobool107 = icmp ne i32 %and106, 0
  br i1 %tobool107, label %land.lhs.true108, label %if.end180

land.lhs.true108:                                 ; preds = %land.lhs.true103
  %103 = load ptr, ptr %pGen.addr, align 8
  %pIn109 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %103, i32 0, i32 12
  %104 = load ptr, ptr %pIn109, align 8
  %pUserData110 = getelementptr inbounds nuw %struct.SyToken, ptr %104, i32 0, i32 3
  %105 = load ptr, ptr %pUserData110, align 8
  %106 = ptrtoint ptr %105 to i64
  %conv111 = trunc i64 %106 to i32
  %cmp112 = icmp eq i32 %conv111, 39
  br i1 %cmp112, label %if.then114, label %if.end180

if.then114:                                       ; preds = %land.lhs.true108
  %107 = load ptr, ptr %pGen.addr, align 8
  %pIn115 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %pIn115, align 8
  %incdec.ptr116 = getelementptr inbounds nuw %struct.SyToken, ptr %108, i32 1
  store ptr %incdec.ptr116, ptr %pIn115, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end177, %if.then114
  %109 = load ptr, ptr %pGen.addr, align 8
  %pIn117 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %109, i32 0, i32 12
  %110 = load ptr, ptr %pIn117, align 8
  %111 = load ptr, ptr %pGen.addr, align 8
  %pEnd118 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %111, i32 0, i32 13
  %112 = load ptr, ptr %pEnd118, align 8
  %cmp119 = icmp uge ptr %110, %112
  br i1 %cmp119, label %if.then127, label %lor.lhs.false121

lor.lhs.false121:                                 ; preds = %for.cond
  %113 = load ptr, ptr %pGen.addr, align 8
  %pIn122 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %pIn122, align 8
  %nType123 = getelementptr inbounds nuw %struct.SyToken, ptr %114, i32 0, i32 1
  %115 = load i32, ptr %nType123, align 8
  %and124 = and i32 %115, 8
  %cmp125 = icmp eq i32 %and124, 0
  br i1 %cmp125, label %if.then127, label %if.end133

if.then127:                                       ; preds = %lor.lhs.false121, %for.cond
  %116 = load ptr, ptr %pGen.addr, align 8
  %117 = load i32, ptr %nLine, align 4
  %118 = load ptr, ptr %pName, align 8
  %call128 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %116, i32 noundef 1, i32 noundef %117, ptr noundef @.str.351, ptr noundef %118)
  store i32 %call128, ptr %rc, align 4
  %119 = load i32, ptr %rc, align 4
  %cmp129 = icmp eq i32 %119, -10
  br i1 %cmp129, label %if.then131, label %if.end132

if.then131:                                       ; preds = %if.then127
  store i32 -10, ptr %retval, align 4
  br label %return

if.end132:                                        ; preds = %if.then127
  br label %for.end

if.end133:                                        ; preds = %lor.lhs.false121
  %120 = load ptr, ptr %pGen.addr, align 8
  %pIn134 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %120, i32 0, i32 12
  %121 = load ptr, ptr %pIn134, align 8
  %sData135 = getelementptr inbounds nuw %struct.SyToken, ptr %121, i32 0, i32 0
  store ptr %sData135, ptr %pIntName, align 8
  %122 = load ptr, ptr %pGen.addr, align 8
  %pVm136 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %122, i32 0, i32 0
  %123 = load ptr, ptr %pVm136, align 8
  %124 = load ptr, ptr %pIntName, align 8
  %zString137 = getelementptr inbounds nuw %struct.SyString, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %zString137, align 8
  %126 = load ptr, ptr %pIntName, align 8
  %nByte138 = getelementptr inbounds nuw %struct.SyString, ptr %126, i32 0, i32 1
  %127 = load i32, ptr %nByte138, align 8
  %call139 = call ptr @PH7_VmExtractClass(ptr noundef %123, ptr noundef %125, i32 noundef %127, i32 noundef 0, i32 noundef 0)
  store ptr %call139, ptr %pInterface, align 8
  br label %while.cond140

while.cond140:                                    ; preds = %while.body148, %if.end133
  %128 = load ptr, ptr %pInterface, align 8
  %tobool141 = icmp ne ptr %128, null
  br i1 %tobool141, label %land.rhs142, label %land.end147

land.rhs142:                                      ; preds = %while.cond140
  %129 = load ptr, ptr %pInterface, align 8
  %iFlags143 = getelementptr inbounds nuw %struct.ph7_class, ptr %129, i32 0, i32 3
  %130 = load i32, ptr %iFlags143, align 8
  %and144 = and i32 %130, 2
  %cmp145 = icmp eq i32 %and144, 0
  br label %land.end147

land.end147:                                      ; preds = %land.rhs142, %while.cond140
  %131 = phi i1 [ false, %while.cond140 ], [ %cmp145, %land.rhs142 ]
  br i1 %131, label %while.body148, label %while.end150

while.body148:                                    ; preds = %land.end147
  %132 = load ptr, ptr %pInterface, align 8
  %pNextName149 = getelementptr inbounds nuw %struct.ph7_class, ptr %132, i32 0, i32 8
  %133 = load ptr, ptr %pNextName149, align 8
  store ptr %133, ptr %pInterface, align 8
  br label %while.cond140, !llvm.loop !9

while.end150:                                     ; preds = %land.end147
  %134 = load ptr, ptr %pInterface, align 8
  %cmp151 = icmp eq ptr %134, null
  br i1 %cmp151, label %if.then153, label %if.else161

if.then153:                                       ; preds = %while.end150
  %135 = load ptr, ptr %pGen.addr, align 8
  %136 = load ptr, ptr %pGen.addr, align 8
  %pIn154 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %136, i32 0, i32 12
  %137 = load ptr, ptr %pIn154, align 8
  %nLine155 = getelementptr inbounds nuw %struct.SyToken, ptr %137, i32 0, i32 2
  %138 = load i32, ptr %nLine155, align 4
  %139 = load ptr, ptr %pIntName, align 8
  %call156 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %135, i32 noundef 1, i32 noundef %138, ptr noundef @.str.329, ptr noundef %139)
  store i32 %call156, ptr %rc, align 4
  %140 = load i32, ptr %rc, align 4
  %cmp157 = icmp eq i32 %140, -10
  br i1 %cmp157, label %if.then159, label %if.end160

if.then159:                                       ; preds = %if.then153
  store i32 -10, ptr %retval, align 4
  br label %return

if.end160:                                        ; preds = %if.then153
  br label %if.end163

if.else161:                                       ; preds = %while.end150
  %call162 = call i32 @SySetPut(ptr noundef %aInterfaces, ptr noundef %pInterface)
  br label %if.end163

if.end163:                                        ; preds = %if.else161, %if.end160
  %141 = load ptr, ptr %pGen.addr, align 8
  %pIn164 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %141, i32 0, i32 12
  %142 = load ptr, ptr %pIn164, align 8
  %incdec.ptr165 = getelementptr inbounds nuw %struct.SyToken, ptr %142, i32 1
  store ptr %incdec.ptr165, ptr %pIn164, align 8
  %143 = load ptr, ptr %pGen.addr, align 8
  %pIn166 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %143, i32 0, i32 12
  %144 = load ptr, ptr %pIn166, align 8
  %145 = load ptr, ptr %pGen.addr, align 8
  %pEnd167 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %145, i32 0, i32 13
  %146 = load ptr, ptr %pEnd167, align 8
  %cmp168 = icmp uge ptr %144, %146
  br i1 %cmp168, label %if.then176, label %lor.lhs.false170

lor.lhs.false170:                                 ; preds = %if.end163
  %147 = load ptr, ptr %pGen.addr, align 8
  %pIn171 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %147, i32 0, i32 12
  %148 = load ptr, ptr %pIn171, align 8
  %nType172 = getelementptr inbounds nuw %struct.SyToken, ptr %148, i32 0, i32 1
  %149 = load i32, ptr %nType172, align 8
  %and173 = and i32 %149, 131072
  %cmp174 = icmp eq i32 %and173, 0
  br i1 %cmp174, label %if.then176, label %if.end177

if.then176:                                       ; preds = %lor.lhs.false170, %if.end163
  br label %for.end

if.end177:                                        ; preds = %lor.lhs.false170
  %150 = load ptr, ptr %pGen.addr, align 8
  %pIn178 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %pIn178, align 8
  %incdec.ptr179 = getelementptr inbounds nuw %struct.SyToken, ptr %151, i32 1
  store ptr %incdec.ptr179, ptr %pIn178, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then176, %if.end132
  br label %if.end180

if.end180:                                        ; preds = %for.end, %land.lhs.true108, %land.lhs.true103, %if.end98
  br label %if.end181

if.end181:                                        ; preds = %if.end180, %land.lhs.true, %if.end26
  %152 = load ptr, ptr %pGen.addr, align 8
  %pIn182 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %152, i32 0, i32 12
  %153 = load ptr, ptr %pIn182, align 8
  %154 = load ptr, ptr %pGen.addr, align 8
  %pEnd183 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %154, i32 0, i32 13
  %155 = load ptr, ptr %pEnd183, align 8
  %cmp184 = icmp uge ptr %153, %155
  br i1 %cmp184, label %if.then192, label %lor.lhs.false186

lor.lhs.false186:                                 ; preds = %if.end181
  %156 = load ptr, ptr %pGen.addr, align 8
  %pIn187 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %156, i32 0, i32 12
  %157 = load ptr, ptr %pIn187, align 8
  %nType188 = getelementptr inbounds nuw %struct.SyToken, ptr %157, i32 0, i32 1
  %158 = load i32, ptr %nType188, align 8
  %and189 = and i32 %158, 64
  %cmp190 = icmp eq i32 %and189, 0
  br i1 %cmp190, label %if.then192, label %if.end201

if.then192:                                       ; preds = %lor.lhs.false186, %if.end181
  %159 = load ptr, ptr %pGen.addr, align 8
  %160 = load i32, ptr %nLine, align 4
  %161 = load ptr, ptr %pName, align 8
  %call193 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %159, i32 noundef 1, i32 noundef %160, ptr noundef @.str.352, ptr noundef %161)
  store i32 %call193, ptr %rc, align 4
  %162 = load ptr, ptr %pGen.addr, align 8
  %pVm194 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %162, i32 0, i32 0
  %163 = load ptr, ptr %pVm194, align 8
  %sAllocator195 = getelementptr inbounds nuw %struct.ph7_vm, ptr %163, i32 0, i32 0
  %164 = load ptr, ptr %pClass, align 8
  %call196 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator195, ptr noundef %164)
  %165 = load i32, ptr %rc, align 4
  %cmp197 = icmp eq i32 %165, -10
  br i1 %cmp197, label %if.then199, label %if.end200

if.then199:                                       ; preds = %if.then192
  store i32 -10, ptr %retval, align 4
  br label %return

if.end200:                                        ; preds = %if.then192
  store i32 0, ptr %retval, align 4
  br label %return

if.end201:                                        ; preds = %lor.lhs.false186
  %166 = load ptr, ptr %pGen.addr, align 8
  %pIn202 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %166, i32 0, i32 12
  %167 = load ptr, ptr %pIn202, align 8
  %incdec.ptr203 = getelementptr inbounds nuw %struct.SyToken, ptr %167, i32 1
  store ptr %incdec.ptr203, ptr %pIn202, align 8
  store ptr null, ptr %pEnd, align 8
  %168 = load ptr, ptr %pGen.addr, align 8
  %pIn204 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %168, i32 0, i32 12
  %169 = load ptr, ptr %pIn204, align 8
  %170 = load ptr, ptr %pGen.addr, align 8
  %pEnd205 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %170, i32 0, i32 13
  %171 = load ptr, ptr %pEnd205, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %169, ptr noundef %171, i32 noundef 64, i32 noundef 128, ptr noundef %pEnd)
  %172 = load ptr, ptr %pEnd, align 8
  %173 = load ptr, ptr %pGen.addr, align 8
  %pEnd206 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %173, i32 0, i32 13
  %174 = load ptr, ptr %pEnd206, align 8
  %cmp207 = icmp uge ptr %172, %174
  br i1 %cmp207, label %if.then209, label %if.end218

if.then209:                                       ; preds = %if.end201
  %175 = load ptr, ptr %pGen.addr, align 8
  %176 = load i32, ptr %nLine, align 4
  %177 = load ptr, ptr %pName, align 8
  %call210 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %175, i32 noundef 1, i32 noundef %176, ptr noundef @.str.353, ptr noundef %177)
  store i32 %call210, ptr %rc, align 4
  %178 = load ptr, ptr %pGen.addr, align 8
  %pVm211 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %178, i32 0, i32 0
  %179 = load ptr, ptr %pVm211, align 8
  %sAllocator212 = getelementptr inbounds nuw %struct.ph7_vm, ptr %179, i32 0, i32 0
  %180 = load ptr, ptr %pClass, align 8
  %call213 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator212, ptr noundef %180)
  %181 = load i32, ptr %rc, align 4
  %cmp214 = icmp eq i32 %181, -10
  br i1 %cmp214, label %if.then216, label %if.end217

if.then216:                                       ; preds = %if.then209
  store i32 -10, ptr %retval, align 4
  br label %return

if.end217:                                        ; preds = %if.then209
  store i32 0, ptr %retval, align 4
  br label %return

if.end218:                                        ; preds = %if.end201
  %182 = load ptr, ptr %pGen.addr, align 8
  %pEnd219 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %182, i32 0, i32 13
  %183 = load ptr, ptr %pEnd219, align 8
  store ptr %183, ptr %pTmp, align 8
  %184 = load ptr, ptr %pEnd, align 8
  %185 = load ptr, ptr %pGen.addr, align 8
  %pEnd220 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %185, i32 0, i32 13
  store ptr %184, ptr %pEnd220, align 8
  %186 = load i32, ptr %iFlags.addr, align 4
  %187 = load ptr, ptr %pClass, align 8
  %iFlags221 = getelementptr inbounds nuw %struct.ph7_class, ptr %187, i32 0, i32 3
  store i32 %186, ptr %iFlags221, align 8
  br label %for.cond222

for.cond222:                                      ; preds = %if.end630, %if.end397, %if.end313, %if.end218
  br label %while.cond223

while.cond223:                                    ; preds = %while.body234, %for.cond222
  %188 = load ptr, ptr %pGen.addr, align 8
  %pIn224 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %188, i32 0, i32 12
  %189 = load ptr, ptr %pIn224, align 8
  %190 = load ptr, ptr %pGen.addr, align 8
  %pEnd225 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %190, i32 0, i32 13
  %191 = load ptr, ptr %pEnd225, align 8
  %cmp226 = icmp ult ptr %189, %191
  br i1 %cmp226, label %land.rhs228, label %land.end233

land.rhs228:                                      ; preds = %while.cond223
  %192 = load ptr, ptr %pGen.addr, align 8
  %pIn229 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %192, i32 0, i32 12
  %193 = load ptr, ptr %pIn229, align 8
  %nType230 = getelementptr inbounds nuw %struct.SyToken, ptr %193, i32 0, i32 1
  %194 = load i32, ptr %nType230, align 8
  %and231 = and i32 %194, 262144
  %tobool232 = icmp ne i32 %and231, 0
  br label %land.end233

land.end233:                                      ; preds = %land.rhs228, %while.cond223
  %195 = phi i1 [ false, %while.cond223 ], [ %tobool232, %land.rhs228 ]
  br i1 %195, label %while.body234, label %while.end237

while.body234:                                    ; preds = %land.end233
  %196 = load ptr, ptr %pGen.addr, align 8
  %pIn235 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %196, i32 0, i32 12
  %197 = load ptr, ptr %pIn235, align 8
  %incdec.ptr236 = getelementptr inbounds nuw %struct.SyToken, ptr %197, i32 1
  store ptr %incdec.ptr236, ptr %pIn235, align 8
  br label %while.cond223, !llvm.loop !10

while.end237:                                     ; preds = %land.end233
  %198 = load ptr, ptr %pGen.addr, align 8
  %pIn238 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %198, i32 0, i32 12
  %199 = load ptr, ptr %pIn238, align 8
  %200 = load ptr, ptr %pGen.addr, align 8
  %pEnd239 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %200, i32 0, i32 13
  %201 = load ptr, ptr %pEnd239, align 8
  %cmp240 = icmp uge ptr %199, %201
  br i1 %cmp240, label %if.then242, label %if.end243

if.then242:                                       ; preds = %while.end237
  br label %for.end631

if.end243:                                        ; preds = %while.end237
  %202 = load ptr, ptr %pGen.addr, align 8
  %pIn244 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %202, i32 0, i32 12
  %203 = load ptr, ptr %pIn244, align 8
  %nType245 = getelementptr inbounds nuw %struct.SyToken, ptr %203, i32 0, i32 1
  %204 = load i32, ptr %nType245, align 8
  %and246 = and i32 %204, 20
  %cmp247 = icmp eq i32 %and246, 0
  br i1 %cmp247, label %if.then249, label %if.end259

if.then249:                                       ; preds = %if.end243
  %205 = load ptr, ptr %pGen.addr, align 8
  %206 = load ptr, ptr %pGen.addr, align 8
  %pIn250 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %206, i32 0, i32 12
  %207 = load ptr, ptr %pIn250, align 8
  %nLine251 = getelementptr inbounds nuw %struct.SyToken, ptr %207, i32 0, i32 2
  %208 = load i32, ptr %nLine251, align 4
  %209 = load ptr, ptr %pGen.addr, align 8
  %pIn252 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %209, i32 0, i32 12
  %210 = load ptr, ptr %pIn252, align 8
  %sData253 = getelementptr inbounds nuw %struct.SyToken, ptr %210, i32 0, i32 0
  %211 = load ptr, ptr %pName, align 8
  %call254 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %205, i32 noundef 1, i32 noundef %208, ptr noundef @.str.354, ptr noundef %sData253, ptr noundef %211)
  store i32 %call254, ptr %rc, align 4
  %212 = load i32, ptr %rc, align 4
  %cmp255 = icmp eq i32 %212, -10
  br i1 %cmp255, label %if.then257, label %if.end258

if.then257:                                       ; preds = %if.then249
  store i32 -10, ptr %retval, align 4
  br label %return

if.end258:                                        ; preds = %if.then249
  br label %done

if.end259:                                        ; preds = %if.end243
  store i32 52, ptr %iProtection, align 4
  store i32 0, ptr %iAttrflags, align 4
  %213 = load ptr, ptr %pGen.addr, align 8
  %pIn260 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %213, i32 0, i32 12
  %214 = load ptr, ptr %pIn260, align 8
  %nType261 = getelementptr inbounds nuw %struct.SyToken, ptr %214, i32 0, i32 1
  %215 = load i32, ptr %nType261, align 8
  %and262 = and i32 %215, 4
  %tobool263 = icmp ne i32 %and262, 0
  br i1 %tobool263, label %if.then264, label %if.else620

if.then264:                                       ; preds = %if.end259
  %216 = load ptr, ptr %pGen.addr, align 8
  %pIn265 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %216, i32 0, i32 12
  %217 = load ptr, ptr %pIn265, align 8
  %pUserData266 = getelementptr inbounds nuw %struct.SyToken, ptr %217, i32 0, i32 3
  %218 = load ptr, ptr %pUserData266, align 8
  %219 = ptrtoint ptr %218 to i64
  %conv267 = trunc i64 %219 to i32
  store i32 %conv267, ptr %nKwrd, align 4
  %220 = load i32, ptr %nKwrd, align 4
  %cmp268 = icmp eq i32 %220, 52
  br i1 %cmp268, label %if.then276, label %lor.lhs.false270

lor.lhs.false270:                                 ; preds = %if.then264
  %221 = load i32, ptr %nKwrd, align 4
  %cmp271 = icmp eq i32 %221, 45
  br i1 %cmp271, label %if.then276, label %lor.lhs.false273

lor.lhs.false273:                                 ; preds = %lor.lhs.false270
  %222 = load i32, ptr %nKwrd, align 4
  %cmp274 = icmp eq i32 %222, 50
  br i1 %cmp274, label %if.then276, label %if.end318

if.then276:                                       ; preds = %lor.lhs.false273, %lor.lhs.false270, %if.then264
  %223 = load i32, ptr %nKwrd, align 4
  store i32 %223, ptr %iProtection, align 4
  %224 = load ptr, ptr %pGen.addr, align 8
  %pIn277 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %224, i32 0, i32 12
  %225 = load ptr, ptr %pIn277, align 8
  %incdec.ptr278 = getelementptr inbounds nuw %struct.SyToken, ptr %225, i32 1
  store ptr %incdec.ptr278, ptr %pIn277, align 8
  %226 = load ptr, ptr %pGen.addr, align 8
  %pIn279 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %226, i32 0, i32 12
  %227 = load ptr, ptr %pIn279, align 8
  %228 = load ptr, ptr %pGen.addr, align 8
  %pEnd280 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %228, i32 0, i32 13
  %229 = load ptr, ptr %pEnd280, align 8
  %cmp281 = icmp uge ptr %227, %229
  br i1 %cmp281, label %if.then289, label %lor.lhs.false283

lor.lhs.false283:                                 ; preds = %if.then276
  %230 = load ptr, ptr %pGen.addr, align 8
  %pIn284 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %230, i32 0, i32 12
  %231 = load ptr, ptr %pIn284, align 8
  %nType285 = getelementptr inbounds nuw %struct.SyToken, ptr %231, i32 0, i32 1
  %232 = load i32, ptr %nType285, align 8
  %and286 = and i32 %232, 20
  %cmp287 = icmp eq i32 %and286, 0
  br i1 %cmp287, label %if.then289, label %if.end299

if.then289:                                       ; preds = %lor.lhs.false283, %if.then276
  %233 = load ptr, ptr %pGen.addr, align 8
  %234 = load ptr, ptr %pGen.addr, align 8
  %pIn290 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %234, i32 0, i32 12
  %235 = load ptr, ptr %pIn290, align 8
  %nLine291 = getelementptr inbounds nuw %struct.SyToken, ptr %235, i32 0, i32 2
  %236 = load i32, ptr %nLine291, align 4
  %237 = load ptr, ptr %pGen.addr, align 8
  %pIn292 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %237, i32 0, i32 12
  %238 = load ptr, ptr %pIn292, align 8
  %sData293 = getelementptr inbounds nuw %struct.SyToken, ptr %238, i32 0, i32 0
  %239 = load ptr, ptr %pName, align 8
  %call294 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %233, i32 noundef 1, i32 noundef %236, ptr noundef @.str.354, ptr noundef %sData293, ptr noundef %239)
  store i32 %call294, ptr %rc, align 4
  %240 = load i32, ptr %rc, align 4
  %cmp295 = icmp eq i32 %240, -10
  br i1 %cmp295, label %if.then297, label %if.end298

if.then297:                                       ; preds = %if.then289
  store i32 -10, ptr %retval, align 4
  br label %return

if.end298:                                        ; preds = %if.then289
  br label %done

if.end299:                                        ; preds = %lor.lhs.false283
  %241 = load ptr, ptr %pGen.addr, align 8
  %pIn300 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %241, i32 0, i32 12
  %242 = load ptr, ptr %pIn300, align 8
  %nType301 = getelementptr inbounds nuw %struct.SyToken, ptr %242, i32 0, i32 1
  %243 = load i32, ptr %nType301, align 8
  %and302 = and i32 %243, 16
  %tobool303 = icmp ne i32 %and302, 0
  br i1 %tobool303, label %if.then304, label %if.end314

if.then304:                                       ; preds = %if.end299
  %244 = load ptr, ptr %pGen.addr, align 8
  %245 = load i32, ptr %iProtection, align 4
  %246 = load i32, ptr %iAttrflags, align 4
  %247 = load ptr, ptr %pClass, align 8
  %call305 = call i32 @GenStateCompileClassAttr(ptr noundef %244, i32 noundef %245, i32 noundef %246, ptr noundef %247)
  store i32 %call305, ptr %rc, align 4
  %248 = load i32, ptr %rc, align 4
  %cmp306 = icmp ne i32 %248, 0
  br i1 %cmp306, label %if.then308, label %if.end313

if.then308:                                       ; preds = %if.then304
  %249 = load i32, ptr %rc, align 4
  %cmp309 = icmp eq i32 %249, -10
  br i1 %cmp309, label %if.then311, label %if.end312

if.then311:                                       ; preds = %if.then308
  store i32 -10, ptr %retval, align 4
  br label %return

if.end312:                                        ; preds = %if.then308
  br label %done

if.end313:                                        ; preds = %if.then304
  br label %for.cond222

if.end314:                                        ; preds = %if.end299
  %250 = load ptr, ptr %pGen.addr, align 8
  %pIn315 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %250, i32 0, i32 12
  %251 = load ptr, ptr %pIn315, align 8
  %pUserData316 = getelementptr inbounds nuw %struct.SyToken, ptr %251, i32 0, i32 3
  %252 = load ptr, ptr %pUserData316, align 8
  %253 = ptrtoint ptr %252 to i64
  %conv317 = trunc i64 %253 to i32
  store i32 %conv317, ptr %nKwrd, align 4
  br label %if.end318

if.end318:                                        ; preds = %if.end314, %lor.lhs.false273
  %254 = load i32, ptr %nKwrd, align 4
  %cmp319 = icmp eq i32 %254, 22
  br i1 %cmp319, label %if.then321, label %if.else331

if.then321:                                       ; preds = %if.end318
  %255 = load ptr, ptr %pGen.addr, align 8
  %256 = load i32, ptr %iProtection, align 4
  %257 = load i32, ptr %iAttrflags, align 4
  %258 = load ptr, ptr %pClass, align 8
  %call322 = call i32 @GenStateCompileClassConstant(ptr noundef %255, i32 noundef %256, i32 noundef %257, ptr noundef %258)
  store i32 %call322, ptr %rc, align 4
  %259 = load i32, ptr %rc, align 4
  %cmp323 = icmp ne i32 %259, 0
  br i1 %cmp323, label %if.then325, label %if.end330

if.then325:                                       ; preds = %if.then321
  %260 = load i32, ptr %rc, align 4
  %cmp326 = icmp eq i32 %260, -10
  br i1 %cmp326, label %if.then328, label %if.end329

if.then328:                                       ; preds = %if.then325
  store i32 -10, ptr %retval, align 4
  br label %return

if.end329:                                        ; preds = %if.then325
  br label %done

if.end330:                                        ; preds = %if.then321
  br label %if.end619

if.else331:                                       ; preds = %if.end318
  %261 = load i32, ptr %nKwrd, align 4
  %cmp332 = icmp eq i32 %261, 16
  br i1 %cmp332, label %if.then334, label %if.else402

if.then334:                                       ; preds = %if.else331
  %262 = load i32, ptr %iAttrflags, align 4
  %or = or i32 %262, 1
  store i32 %or, ptr %iAttrflags, align 4
  %263 = load ptr, ptr %pGen.addr, align 8
  %pIn335 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %263, i32 0, i32 12
  %264 = load ptr, ptr %pIn335, align 8
  %incdec.ptr336 = getelementptr inbounds nuw %struct.SyToken, ptr %264, i32 1
  store ptr %incdec.ptr336, ptr %pIn335, align 8
  %265 = load ptr, ptr %pGen.addr, align 8
  %pIn337 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %265, i32 0, i32 12
  %266 = load ptr, ptr %pIn337, align 8
  %267 = load ptr, ptr %pGen.addr, align 8
  %pEnd338 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %267, i32 0, i32 13
  %268 = load ptr, ptr %pEnd338, align 8
  %cmp339 = icmp ult ptr %266, %268
  br i1 %cmp339, label %land.lhs.true341, label %if.end362

land.lhs.true341:                                 ; preds = %if.then334
  %269 = load ptr, ptr %pGen.addr, align 8
  %pIn342 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %269, i32 0, i32 12
  %270 = load ptr, ptr %pIn342, align 8
  %nType343 = getelementptr inbounds nuw %struct.SyToken, ptr %270, i32 0, i32 1
  %271 = load i32, ptr %nType343, align 8
  %and344 = and i32 %271, 4
  %tobool345 = icmp ne i32 %and344, 0
  br i1 %tobool345, label %if.then346, label %if.end362

if.then346:                                       ; preds = %land.lhs.true341
  %272 = load ptr, ptr %pGen.addr, align 8
  %pIn347 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %272, i32 0, i32 12
  %273 = load ptr, ptr %pIn347, align 8
  %pUserData348 = getelementptr inbounds nuw %struct.SyToken, ptr %273, i32 0, i32 3
  %274 = load ptr, ptr %pUserData348, align 8
  %275 = ptrtoint ptr %274 to i64
  %conv349 = trunc i64 %275 to i32
  store i32 %conv349, ptr %nKwrd, align 4
  %276 = load i32, ptr %nKwrd, align 4
  %cmp350 = icmp eq i32 %276, 52
  br i1 %cmp350, label %if.then358, label %lor.lhs.false352

lor.lhs.false352:                                 ; preds = %if.then346
  %277 = load i32, ptr %nKwrd, align 4
  %cmp353 = icmp eq i32 %277, 45
  br i1 %cmp353, label %if.then358, label %lor.lhs.false355

lor.lhs.false355:                                 ; preds = %lor.lhs.false352
  %278 = load i32, ptr %nKwrd, align 4
  %cmp356 = icmp eq i32 %278, 50
  br i1 %cmp356, label %if.then358, label %if.end361

if.then358:                                       ; preds = %lor.lhs.false355, %lor.lhs.false352, %if.then346
  %279 = load i32, ptr %nKwrd, align 4
  store i32 %279, ptr %iProtection, align 4
  %280 = load ptr, ptr %pGen.addr, align 8
  %pIn359 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %280, i32 0, i32 12
  %281 = load ptr, ptr %pIn359, align 8
  %incdec.ptr360 = getelementptr inbounds nuw %struct.SyToken, ptr %281, i32 1
  store ptr %incdec.ptr360, ptr %pIn359, align 8
  br label %if.end361

if.end361:                                        ; preds = %if.then358, %lor.lhs.false355
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %land.lhs.true341, %if.then334
  %282 = load ptr, ptr %pGen.addr, align 8
  %pIn363 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %282, i32 0, i32 12
  %283 = load ptr, ptr %pIn363, align 8
  %284 = load ptr, ptr %pGen.addr, align 8
  %pEnd364 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %284, i32 0, i32 13
  %285 = load ptr, ptr %pEnd364, align 8
  %cmp365 = icmp uge ptr %283, %285
  br i1 %cmp365, label %if.then373, label %lor.lhs.false367

lor.lhs.false367:                                 ; preds = %if.end362
  %286 = load ptr, ptr %pGen.addr, align 8
  %pIn368 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %286, i32 0, i32 12
  %287 = load ptr, ptr %pIn368, align 8
  %nType369 = getelementptr inbounds nuw %struct.SyToken, ptr %287, i32 0, i32 1
  %288 = load i32, ptr %nType369, align 8
  %and370 = and i32 %288, 20
  %cmp371 = icmp eq i32 %and370, 0
  br i1 %cmp371, label %if.then373, label %if.end383

if.then373:                                       ; preds = %lor.lhs.false367, %if.end362
  %289 = load ptr, ptr %pGen.addr, align 8
  %290 = load ptr, ptr %pGen.addr, align 8
  %pIn374 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %290, i32 0, i32 12
  %291 = load ptr, ptr %pIn374, align 8
  %nLine375 = getelementptr inbounds nuw %struct.SyToken, ptr %291, i32 0, i32 2
  %292 = load i32, ptr %nLine375, align 4
  %293 = load ptr, ptr %pGen.addr, align 8
  %pIn376 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %293, i32 0, i32 12
  %294 = load ptr, ptr %pIn376, align 8
  %sData377 = getelementptr inbounds nuw %struct.SyToken, ptr %294, i32 0, i32 0
  %295 = load ptr, ptr %pName, align 8
  %call378 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %289, i32 noundef 1, i32 noundef %292, ptr noundef @.str.355, ptr noundef %sData377, ptr noundef %295)
  store i32 %call378, ptr %rc, align 4
  %296 = load i32, ptr %rc, align 4
  %cmp379 = icmp eq i32 %296, -10
  br i1 %cmp379, label %if.then381, label %if.end382

if.then381:                                       ; preds = %if.then373
  store i32 -10, ptr %retval, align 4
  br label %return

if.end382:                                        ; preds = %if.then373
  br label %done

if.end383:                                        ; preds = %lor.lhs.false367
  %297 = load ptr, ptr %pGen.addr, align 8
  %pIn384 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %297, i32 0, i32 12
  %298 = load ptr, ptr %pIn384, align 8
  %nType385 = getelementptr inbounds nuw %struct.SyToken, ptr %298, i32 0, i32 1
  %299 = load i32, ptr %nType385, align 8
  %and386 = and i32 %299, 16
  %tobool387 = icmp ne i32 %and386, 0
  br i1 %tobool387, label %if.then388, label %if.end398

if.then388:                                       ; preds = %if.end383
  %300 = load ptr, ptr %pGen.addr, align 8
  %301 = load i32, ptr %iProtection, align 4
  %302 = load i32, ptr %iAttrflags, align 4
  %303 = load ptr, ptr %pClass, align 8
  %call389 = call i32 @GenStateCompileClassAttr(ptr noundef %300, i32 noundef %301, i32 noundef %302, ptr noundef %303)
  store i32 %call389, ptr %rc, align 4
  %304 = load i32, ptr %rc, align 4
  %cmp390 = icmp ne i32 %304, 0
  br i1 %cmp390, label %if.then392, label %if.end397

if.then392:                                       ; preds = %if.then388
  %305 = load i32, ptr %rc, align 4
  %cmp393 = icmp eq i32 %305, -10
  br i1 %cmp393, label %if.then395, label %if.end396

if.then395:                                       ; preds = %if.then392
  store i32 -10, ptr %retval, align 4
  br label %return

if.end396:                                        ; preds = %if.then392
  br label %done

if.end397:                                        ; preds = %if.then388
  br label %for.cond222

if.end398:                                        ; preds = %if.end383
  %306 = load ptr, ptr %pGen.addr, align 8
  %pIn399 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %306, i32 0, i32 12
  %307 = load ptr, ptr %pIn399, align 8
  %pUserData400 = getelementptr inbounds nuw %struct.SyToken, ptr %307, i32 0, i32 3
  %308 = load ptr, ptr %pUserData400, align 8
  %309 = ptrtoint ptr %308 to i64
  %conv401 = trunc i64 %309 to i32
  store i32 %conv401, ptr %nKwrd, align 4
  br label %if.end566

if.else402:                                       ; preds = %if.else331
  %310 = load i32, ptr %nKwrd, align 4
  %cmp403 = icmp eq i32 %310, 29
  br i1 %cmp403, label %if.then405, label %if.else484

if.then405:                                       ; preds = %if.else402
  %311 = load i32, ptr %iAttrflags, align 4
  %or406 = or i32 %311, 4
  store i32 %or406, ptr %iAttrflags, align 4
  %312 = load ptr, ptr %pClass, align 8
  %iFlags407 = getelementptr inbounds nuw %struct.ph7_class, ptr %312, i32 0, i32 3
  %313 = load i32, ptr %iFlags407, align 8
  %or408 = or i32 %313, 4
  store i32 %or408, ptr %iFlags407, align 8
  %314 = load ptr, ptr %pGen.addr, align 8
  %pIn409 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %314, i32 0, i32 12
  %315 = load ptr, ptr %pIn409, align 8
  %incdec.ptr410 = getelementptr inbounds nuw %struct.SyToken, ptr %315, i32 1
  store ptr %incdec.ptr410, ptr %pIn409, align 8
  %316 = load ptr, ptr %pGen.addr, align 8
  %pIn411 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %316, i32 0, i32 12
  %317 = load ptr, ptr %pIn411, align 8
  %318 = load ptr, ptr %pGen.addr, align 8
  %pEnd412 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %318, i32 0, i32 13
  %319 = load ptr, ptr %pEnd412, align 8
  %cmp413 = icmp ult ptr %317, %319
  br i1 %cmp413, label %land.lhs.true415, label %if.end436

land.lhs.true415:                                 ; preds = %if.then405
  %320 = load ptr, ptr %pGen.addr, align 8
  %pIn416 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %320, i32 0, i32 12
  %321 = load ptr, ptr %pIn416, align 8
  %nType417 = getelementptr inbounds nuw %struct.SyToken, ptr %321, i32 0, i32 1
  %322 = load i32, ptr %nType417, align 8
  %and418 = and i32 %322, 4
  %tobool419 = icmp ne i32 %and418, 0
  br i1 %tobool419, label %if.then420, label %if.end436

if.then420:                                       ; preds = %land.lhs.true415
  %323 = load ptr, ptr %pGen.addr, align 8
  %pIn421 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %323, i32 0, i32 12
  %324 = load ptr, ptr %pIn421, align 8
  %pUserData422 = getelementptr inbounds nuw %struct.SyToken, ptr %324, i32 0, i32 3
  %325 = load ptr, ptr %pUserData422, align 8
  %326 = ptrtoint ptr %325 to i64
  %conv423 = trunc i64 %326 to i32
  store i32 %conv423, ptr %nKwrd, align 4
  %327 = load i32, ptr %nKwrd, align 4
  %cmp424 = icmp eq i32 %327, 52
  br i1 %cmp424, label %if.then432, label %lor.lhs.false426

lor.lhs.false426:                                 ; preds = %if.then420
  %328 = load i32, ptr %nKwrd, align 4
  %cmp427 = icmp eq i32 %328, 45
  br i1 %cmp427, label %if.then432, label %lor.lhs.false429

lor.lhs.false429:                                 ; preds = %lor.lhs.false426
  %329 = load i32, ptr %nKwrd, align 4
  %cmp430 = icmp eq i32 %329, 50
  br i1 %cmp430, label %if.then432, label %if.end435

if.then432:                                       ; preds = %lor.lhs.false429, %lor.lhs.false426, %if.then420
  %330 = load i32, ptr %nKwrd, align 4
  store i32 %330, ptr %iProtection, align 4
  %331 = load ptr, ptr %pGen.addr, align 8
  %pIn433 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %331, i32 0, i32 12
  %332 = load ptr, ptr %pIn433, align 8
  %incdec.ptr434 = getelementptr inbounds nuw %struct.SyToken, ptr %332, i32 1
  store ptr %incdec.ptr434, ptr %pIn433, align 8
  br label %if.end435

if.end435:                                        ; preds = %if.then432, %lor.lhs.false429
  br label %if.end436

if.end436:                                        ; preds = %if.end435, %land.lhs.true415, %if.then405
  %333 = load ptr, ptr %pGen.addr, align 8
  %pIn437 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %333, i32 0, i32 12
  %334 = load ptr, ptr %pIn437, align 8
  %335 = load ptr, ptr %pGen.addr, align 8
  %pEnd438 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %335, i32 0, i32 13
  %336 = load ptr, ptr %pEnd438, align 8
  %cmp439 = icmp ult ptr %334, %336
  br i1 %cmp439, label %land.lhs.true441, label %if.end456

land.lhs.true441:                                 ; preds = %if.end436
  %337 = load ptr, ptr %pGen.addr, align 8
  %pIn442 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %337, i32 0, i32 12
  %338 = load ptr, ptr %pIn442, align 8
  %nType443 = getelementptr inbounds nuw %struct.SyToken, ptr %338, i32 0, i32 1
  %339 = load i32, ptr %nType443, align 8
  %and444 = and i32 %339, 4
  %tobool445 = icmp ne i32 %and444, 0
  br i1 %tobool445, label %land.lhs.true446, label %if.end456

land.lhs.true446:                                 ; preds = %land.lhs.true441
  %340 = load ptr, ptr %pGen.addr, align 8
  %pIn447 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %340, i32 0, i32 12
  %341 = load ptr, ptr %pIn447, align 8
  %pUserData448 = getelementptr inbounds nuw %struct.SyToken, ptr %341, i32 0, i32 3
  %342 = load ptr, ptr %pUserData448, align 8
  %343 = ptrtoint ptr %342 to i64
  %conv449 = trunc i64 %343 to i32
  %cmp450 = icmp eq i32 %conv449, 16
  br i1 %cmp450, label %if.then452, label %if.end456

if.then452:                                       ; preds = %land.lhs.true446
  %344 = load i32, ptr %iAttrflags, align 4
  %or453 = or i32 %344, 1
  store i32 %or453, ptr %iAttrflags, align 4
  %345 = load ptr, ptr %pGen.addr, align 8
  %pIn454 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %345, i32 0, i32 12
  %346 = load ptr, ptr %pIn454, align 8
  %incdec.ptr455 = getelementptr inbounds nuw %struct.SyToken, ptr %346, i32 1
  store ptr %incdec.ptr455, ptr %pIn454, align 8
  br label %if.end456

if.end456:                                        ; preds = %if.then452, %land.lhs.true446, %land.lhs.true441, %if.end436
  %347 = load ptr, ptr %pGen.addr, align 8
  %pIn457 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %347, i32 0, i32 12
  %348 = load ptr, ptr %pIn457, align 8
  %349 = load ptr, ptr %pGen.addr, align 8
  %pEnd458 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %349, i32 0, i32 13
  %350 = load ptr, ptr %pEnd458, align 8
  %cmp459 = icmp uge ptr %348, %350
  br i1 %cmp459, label %if.then473, label %lor.lhs.false461

lor.lhs.false461:                                 ; preds = %if.end456
  %351 = load ptr, ptr %pGen.addr, align 8
  %pIn462 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %351, i32 0, i32 12
  %352 = load ptr, ptr %pIn462, align 8
  %nType463 = getelementptr inbounds nuw %struct.SyToken, ptr %352, i32 0, i32 1
  %353 = load i32, ptr %nType463, align 8
  %and464 = and i32 %353, 4
  %cmp465 = icmp eq i32 %and464, 0
  br i1 %cmp465, label %if.then473, label %lor.lhs.false467

lor.lhs.false467:                                 ; preds = %lor.lhs.false461
  %354 = load ptr, ptr %pGen.addr, align 8
  %pIn468 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %354, i32 0, i32 12
  %355 = load ptr, ptr %pIn468, align 8
  %pUserData469 = getelementptr inbounds nuw %struct.SyToken, ptr %355, i32 0, i32 3
  %356 = load ptr, ptr %pUserData469, align 8
  %357 = ptrtoint ptr %356 to i64
  %conv470 = trunc i64 %357 to i32
  %cmp471 = icmp ne i32 %conv470, 19
  br i1 %cmp471, label %if.then473, label %if.end483

if.then473:                                       ; preds = %lor.lhs.false467, %lor.lhs.false461, %if.end456
  %358 = load ptr, ptr %pGen.addr, align 8
  %359 = load ptr, ptr %pGen.addr, align 8
  %pIn474 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %359, i32 0, i32 12
  %360 = load ptr, ptr %pIn474, align 8
  %nLine475 = getelementptr inbounds nuw %struct.SyToken, ptr %360, i32 0, i32 2
  %361 = load i32, ptr %nLine475, align 4
  %362 = load ptr, ptr %pGen.addr, align 8
  %pIn476 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %362, i32 0, i32 12
  %363 = load ptr, ptr %pIn476, align 8
  %sData477 = getelementptr inbounds nuw %struct.SyToken, ptr %363, i32 0, i32 0
  %364 = load ptr, ptr %pName, align 8
  %call478 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %358, i32 noundef 1, i32 noundef %361, ptr noundef @.str.356, ptr noundef %sData477, ptr noundef %364)
  store i32 %call478, ptr %rc, align 4
  %365 = load i32, ptr %rc, align 4
  %cmp479 = icmp eq i32 %365, -10
  br i1 %cmp479, label %if.then481, label %if.end482

if.then481:                                       ; preds = %if.then473
  store i32 -10, ptr %retval, align 4
  br label %return

if.end482:                                        ; preds = %if.then473
  br label %done

if.end483:                                        ; preds = %lor.lhs.false467
  store i32 19, ptr %nKwrd, align 4
  br label %if.end565

if.else484:                                       ; preds = %if.else402
  %366 = load i32, ptr %nKwrd, align 4
  %cmp485 = icmp eq i32 %366, 14
  br i1 %cmp485, label %if.then487, label %if.end564

if.then487:                                       ; preds = %if.else484
  %367 = load i32, ptr %iAttrflags, align 4
  %or488 = or i32 %367, 8
  store i32 %or488, ptr %iAttrflags, align 4
  %368 = load ptr, ptr %pGen.addr, align 8
  %pIn489 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %368, i32 0, i32 12
  %369 = load ptr, ptr %pIn489, align 8
  %incdec.ptr490 = getelementptr inbounds nuw %struct.SyToken, ptr %369, i32 1
  store ptr %incdec.ptr490, ptr %pIn489, align 8
  %370 = load ptr, ptr %pGen.addr, align 8
  %pIn491 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %370, i32 0, i32 12
  %371 = load ptr, ptr %pIn491, align 8
  %372 = load ptr, ptr %pGen.addr, align 8
  %pEnd492 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %372, i32 0, i32 13
  %373 = load ptr, ptr %pEnd492, align 8
  %cmp493 = icmp ult ptr %371, %373
  br i1 %cmp493, label %land.lhs.true495, label %if.end516

land.lhs.true495:                                 ; preds = %if.then487
  %374 = load ptr, ptr %pGen.addr, align 8
  %pIn496 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %374, i32 0, i32 12
  %375 = load ptr, ptr %pIn496, align 8
  %nType497 = getelementptr inbounds nuw %struct.SyToken, ptr %375, i32 0, i32 1
  %376 = load i32, ptr %nType497, align 8
  %and498 = and i32 %376, 4
  %tobool499 = icmp ne i32 %and498, 0
  br i1 %tobool499, label %if.then500, label %if.end516

if.then500:                                       ; preds = %land.lhs.true495
  %377 = load ptr, ptr %pGen.addr, align 8
  %pIn501 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %377, i32 0, i32 12
  %378 = load ptr, ptr %pIn501, align 8
  %pUserData502 = getelementptr inbounds nuw %struct.SyToken, ptr %378, i32 0, i32 3
  %379 = load ptr, ptr %pUserData502, align 8
  %380 = ptrtoint ptr %379 to i64
  %conv503 = trunc i64 %380 to i32
  store i32 %conv503, ptr %nKwrd, align 4
  %381 = load i32, ptr %nKwrd, align 4
  %cmp504 = icmp eq i32 %381, 52
  br i1 %cmp504, label %if.then512, label %lor.lhs.false506

lor.lhs.false506:                                 ; preds = %if.then500
  %382 = load i32, ptr %nKwrd, align 4
  %cmp507 = icmp eq i32 %382, 45
  br i1 %cmp507, label %if.then512, label %lor.lhs.false509

lor.lhs.false509:                                 ; preds = %lor.lhs.false506
  %383 = load i32, ptr %nKwrd, align 4
  %cmp510 = icmp eq i32 %383, 50
  br i1 %cmp510, label %if.then512, label %if.end515

if.then512:                                       ; preds = %lor.lhs.false509, %lor.lhs.false506, %if.then500
  %384 = load i32, ptr %nKwrd, align 4
  store i32 %384, ptr %iProtection, align 4
  %385 = load ptr, ptr %pGen.addr, align 8
  %pIn513 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %385, i32 0, i32 12
  %386 = load ptr, ptr %pIn513, align 8
  %incdec.ptr514 = getelementptr inbounds nuw %struct.SyToken, ptr %386, i32 1
  store ptr %incdec.ptr514, ptr %pIn513, align 8
  br label %if.end515

if.end515:                                        ; preds = %if.then512, %lor.lhs.false509
  br label %if.end516

if.end516:                                        ; preds = %if.end515, %land.lhs.true495, %if.then487
  %387 = load ptr, ptr %pGen.addr, align 8
  %pIn517 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %387, i32 0, i32 12
  %388 = load ptr, ptr %pIn517, align 8
  %389 = load ptr, ptr %pGen.addr, align 8
  %pEnd518 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %389, i32 0, i32 13
  %390 = load ptr, ptr %pEnd518, align 8
  %cmp519 = icmp ult ptr %388, %390
  br i1 %cmp519, label %land.lhs.true521, label %if.end536

land.lhs.true521:                                 ; preds = %if.end516
  %391 = load ptr, ptr %pGen.addr, align 8
  %pIn522 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %391, i32 0, i32 12
  %392 = load ptr, ptr %pIn522, align 8
  %nType523 = getelementptr inbounds nuw %struct.SyToken, ptr %392, i32 0, i32 1
  %393 = load i32, ptr %nType523, align 8
  %and524 = and i32 %393, 4
  %tobool525 = icmp ne i32 %and524, 0
  br i1 %tobool525, label %land.lhs.true526, label %if.end536

land.lhs.true526:                                 ; preds = %land.lhs.true521
  %394 = load ptr, ptr %pGen.addr, align 8
  %pIn527 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %394, i32 0, i32 12
  %395 = load ptr, ptr %pIn527, align 8
  %pUserData528 = getelementptr inbounds nuw %struct.SyToken, ptr %395, i32 0, i32 3
  %396 = load ptr, ptr %pUserData528, align 8
  %397 = ptrtoint ptr %396 to i64
  %conv529 = trunc i64 %397 to i32
  %cmp530 = icmp eq i32 %conv529, 16
  br i1 %cmp530, label %if.then532, label %if.end536

if.then532:                                       ; preds = %land.lhs.true526
  %398 = load i32, ptr %iAttrflags, align 4
  %or533 = or i32 %398, 1
  store i32 %or533, ptr %iAttrflags, align 4
  %399 = load ptr, ptr %pGen.addr, align 8
  %pIn534 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %399, i32 0, i32 12
  %400 = load ptr, ptr %pIn534, align 8
  %incdec.ptr535 = getelementptr inbounds nuw %struct.SyToken, ptr %400, i32 1
  store ptr %incdec.ptr535, ptr %pIn534, align 8
  br label %if.end536

if.end536:                                        ; preds = %if.then532, %land.lhs.true526, %land.lhs.true521, %if.end516
  %401 = load ptr, ptr %pGen.addr, align 8
  %pIn537 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %401, i32 0, i32 12
  %402 = load ptr, ptr %pIn537, align 8
  %403 = load ptr, ptr %pGen.addr, align 8
  %pEnd538 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %403, i32 0, i32 13
  %404 = load ptr, ptr %pEnd538, align 8
  %cmp539 = icmp uge ptr %402, %404
  br i1 %cmp539, label %if.then553, label %lor.lhs.false541

lor.lhs.false541:                                 ; preds = %if.end536
  %405 = load ptr, ptr %pGen.addr, align 8
  %pIn542 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %405, i32 0, i32 12
  %406 = load ptr, ptr %pIn542, align 8
  %nType543 = getelementptr inbounds nuw %struct.SyToken, ptr %406, i32 0, i32 1
  %407 = load i32, ptr %nType543, align 8
  %and544 = and i32 %407, 4
  %cmp545 = icmp eq i32 %and544, 0
  br i1 %cmp545, label %if.then553, label %lor.lhs.false547

lor.lhs.false547:                                 ; preds = %lor.lhs.false541
  %408 = load ptr, ptr %pGen.addr, align 8
  %pIn548 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %408, i32 0, i32 12
  %409 = load ptr, ptr %pIn548, align 8
  %pUserData549 = getelementptr inbounds nuw %struct.SyToken, ptr %409, i32 0, i32 3
  %410 = load ptr, ptr %pUserData549, align 8
  %411 = ptrtoint ptr %410 to i64
  %conv550 = trunc i64 %411 to i32
  %cmp551 = icmp ne i32 %conv550, 19
  br i1 %cmp551, label %if.then553, label %if.end563

if.then553:                                       ; preds = %lor.lhs.false547, %lor.lhs.false541, %if.end536
  %412 = load ptr, ptr %pGen.addr, align 8
  %413 = load ptr, ptr %pGen.addr, align 8
  %pIn554 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %413, i32 0, i32 12
  %414 = load ptr, ptr %pIn554, align 8
  %nLine555 = getelementptr inbounds nuw %struct.SyToken, ptr %414, i32 0, i32 2
  %415 = load i32, ptr %nLine555, align 4
  %416 = load ptr, ptr %pGen.addr, align 8
  %pIn556 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %416, i32 0, i32 12
  %417 = load ptr, ptr %pIn556, align 8
  %sData557 = getelementptr inbounds nuw %struct.SyToken, ptr %417, i32 0, i32 0
  %418 = load ptr, ptr %pName, align 8
  %call558 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %412, i32 noundef 1, i32 noundef %415, ptr noundef @.str.357, ptr noundef %sData557, ptr noundef %418)
  store i32 %call558, ptr %rc, align 4
  %419 = load i32, ptr %rc, align 4
  %cmp559 = icmp eq i32 %419, -10
  br i1 %cmp559, label %if.then561, label %if.end562

if.then561:                                       ; preds = %if.then553
  store i32 -10, ptr %retval, align 4
  br label %return

if.end562:                                        ; preds = %if.then553
  br label %done

if.end563:                                        ; preds = %lor.lhs.false547
  store i32 19, ptr %nKwrd, align 4
  br label %if.end564

if.end564:                                        ; preds = %if.end563, %if.else484
  br label %if.end565

if.end565:                                        ; preds = %if.end564, %if.end483
  br label %if.end566

if.end566:                                        ; preds = %if.end565, %if.end398
  %420 = load i32, ptr %nKwrd, align 4
  %cmp567 = icmp ne i32 %420, 19
  br i1 %cmp567, label %land.lhs.true569, label %if.end582

land.lhs.true569:                                 ; preds = %if.end566
  %421 = load i32, ptr %nKwrd, align 4
  %cmp570 = icmp ne i32 %421, 28
  br i1 %cmp570, label %if.then572, label %if.end582

if.then572:                                       ; preds = %land.lhs.true569
  %422 = load ptr, ptr %pGen.addr, align 8
  %423 = load ptr, ptr %pGen.addr, align 8
  %pIn573 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %423, i32 0, i32 12
  %424 = load ptr, ptr %pIn573, align 8
  %nLine574 = getelementptr inbounds nuw %struct.SyToken, ptr %424, i32 0, i32 2
  %425 = load i32, ptr %nLine574, align 4
  %426 = load ptr, ptr %pGen.addr, align 8
  %pIn575 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %426, i32 0, i32 12
  %427 = load ptr, ptr %pIn575, align 8
  %sData576 = getelementptr inbounds nuw %struct.SyToken, ptr %427, i32 0, i32 0
  %428 = load ptr, ptr %pName, align 8
  %call577 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %422, i32 noundef 1, i32 noundef %425, ptr noundef @.str.358, ptr noundef %sData576, ptr noundef %428)
  store i32 %call577, ptr %rc, align 4
  %429 = load i32, ptr %rc, align 4
  %cmp578 = icmp eq i32 %429, -10
  br i1 %cmp578, label %if.then580, label %if.end581

if.then580:                                       ; preds = %if.then572
  store i32 -10, ptr %retval, align 4
  br label %return

if.end581:                                        ; preds = %if.then572
  br label %done

if.end582:                                        ; preds = %land.lhs.true569, %if.end566
  %430 = load i32, ptr %nKwrd, align 4
  %cmp583 = icmp eq i32 %430, 28
  br i1 %cmp583, label %if.then585, label %if.else608

if.then585:                                       ; preds = %if.end582
  %431 = load ptr, ptr %pGen.addr, align 8
  %pIn586 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %431, i32 0, i32 12
  %432 = load ptr, ptr %pIn586, align 8
  %incdec.ptr587 = getelementptr inbounds nuw %struct.SyToken, ptr %432, i32 1
  store ptr %incdec.ptr587, ptr %pIn586, align 8
  %433 = load ptr, ptr %pGen.addr, align 8
  %pIn588 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %433, i32 0, i32 12
  %434 = load ptr, ptr %pIn588, align 8
  %435 = load ptr, ptr %pGen.addr, align 8
  %pEnd589 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %435, i32 0, i32 13
  %436 = load ptr, ptr %pEnd589, align 8
  %cmp590 = icmp uge ptr %434, %436
  br i1 %cmp590, label %if.then598, label %lor.lhs.false592

lor.lhs.false592:                                 ; preds = %if.then585
  %437 = load ptr, ptr %pGen.addr, align 8
  %pIn593 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %437, i32 0, i32 12
  %438 = load ptr, ptr %pIn593, align 8
  %nType594 = getelementptr inbounds nuw %struct.SyToken, ptr %438, i32 0, i32 1
  %439 = load i32, ptr %nType594, align 8
  %and595 = and i32 %439, 16
  %cmp596 = icmp eq i32 %and595, 0
  br i1 %cmp596, label %if.then598, label %if.end606

if.then598:                                       ; preds = %lor.lhs.false592, %if.then585
  %440 = load ptr, ptr %pGen.addr, align 8
  %441 = load ptr, ptr %pGen.addr, align 8
  %pIn599 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %441, i32 0, i32 12
  %442 = load ptr, ptr %pIn599, align 8
  %nLine600 = getelementptr inbounds nuw %struct.SyToken, ptr %442, i32 0, i32 2
  %443 = load i32, ptr %nLine600, align 4
  %call601 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %440, i32 noundef 1, i32 noundef %443, ptr noundef @.str.359)
  store i32 %call601, ptr %rc, align 4
  %444 = load i32, ptr %rc, align 4
  %cmp602 = icmp eq i32 %444, -10
  br i1 %cmp602, label %if.then604, label %if.end605

if.then604:                                       ; preds = %if.then598
  store i32 -10, ptr %retval, align 4
  br label %return

if.end605:                                        ; preds = %if.then598
  br label %done

if.end606:                                        ; preds = %lor.lhs.false592
  %445 = load ptr, ptr %pGen.addr, align 8
  %446 = load i32, ptr %iProtection, align 4
  %447 = load i32, ptr %iAttrflags, align 4
  %448 = load ptr, ptr %pClass, align 8
  %call607 = call i32 @GenStateCompileClassAttr(ptr noundef %445, i32 noundef %446, i32 noundef %447, ptr noundef %448)
  store i32 %call607, ptr %rc, align 4
  br label %if.end610

if.else608:                                       ; preds = %if.end582
  %449 = load ptr, ptr %pGen.addr, align 8
  %450 = load i32, ptr %iProtection, align 4
  %451 = load i32, ptr %iAttrflags, align 4
  %452 = load ptr, ptr %pClass, align 8
  %call609 = call i32 @GenStateCompileClassMethod(ptr noundef %449, i32 noundef %450, i32 noundef %451, i32 noundef 1, ptr noundef %452)
  store i32 %call609, ptr %rc, align 4
  br label %if.end610

if.end610:                                        ; preds = %if.else608, %if.end606
  %453 = load i32, ptr %rc, align 4
  %cmp611 = icmp ne i32 %453, 0
  br i1 %cmp611, label %if.then613, label %if.end618

if.then613:                                       ; preds = %if.end610
  %454 = load i32, ptr %rc, align 4
  %cmp614 = icmp eq i32 %454, -10
  br i1 %cmp614, label %if.then616, label %if.end617

if.then616:                                       ; preds = %if.then613
  store i32 -10, ptr %retval, align 4
  br label %return

if.end617:                                        ; preds = %if.then613
  br label %done

if.end618:                                        ; preds = %if.end610
  br label %if.end619

if.end619:                                        ; preds = %if.end618, %if.end330
  br label %if.end630

if.else620:                                       ; preds = %if.end259
  %455 = load ptr, ptr %pGen.addr, align 8
  %456 = load i32, ptr %iProtection, align 4
  %457 = load i32, ptr %iAttrflags, align 4
  %458 = load ptr, ptr %pClass, align 8
  %call621 = call i32 @GenStateCompileClassAttr(ptr noundef %455, i32 noundef %456, i32 noundef %457, ptr noundef %458)
  store i32 %call621, ptr %rc, align 4
  %459 = load i32, ptr %rc, align 4
  %cmp622 = icmp ne i32 %459, 0
  br i1 %cmp622, label %if.then624, label %if.end629

if.then624:                                       ; preds = %if.else620
  %460 = load i32, ptr %rc, align 4
  %cmp625 = icmp eq i32 %460, -10
  br i1 %cmp625, label %if.then627, label %if.end628

if.then627:                                       ; preds = %if.then624
  store i32 -10, ptr %retval, align 4
  br label %return

if.end628:                                        ; preds = %if.then624
  br label %done

if.end629:                                        ; preds = %if.else620
  br label %if.end630

if.end630:                                        ; preds = %if.end629, %if.end619
  br label %for.cond222

for.end631:                                       ; preds = %if.then242
  %461 = load ptr, ptr %pGen.addr, align 8
  %pVm632 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %461, i32 0, i32 0
  %462 = load ptr, ptr %pVm632, align 8
  %463 = load ptr, ptr %pClass, align 8
  %call633 = call i32 @PH7_VmInstallClass(ptr noundef %462, ptr noundef %463)
  store i32 %call633, ptr %rc, align 4
  %464 = load i32, ptr %rc, align 4
  %cmp634 = icmp eq i32 %464, 0
  br i1 %cmp634, label %if.then636, label %if.end651

if.then636:                                       ; preds = %for.end631
  %465 = load ptr, ptr %pBase, align 8
  %tobool637 = icmp ne ptr %465, null
  br i1 %tobool637, label %if.then638, label %if.end640

if.then638:                                       ; preds = %if.then636
  %466 = load ptr, ptr %pGen.addr, align 8
  %467 = load ptr, ptr %pClass, align 8
  %468 = load ptr, ptr %pBase, align 8
  %call639 = call i32 @PH7_ClassInherit(ptr noundef %466, ptr noundef %467, ptr noundef %468)
  store i32 %call639, ptr %rc, align 4
  br label %if.end640

if.end640:                                        ; preds = %if.then638, %if.then636
  %pBase641 = getelementptr inbounds nuw %struct.SySet, ptr %aInterfaces, i32 0, i32 1
  %469 = load ptr, ptr %pBase641, align 8
  store ptr %469, ptr %apInterface, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond642

for.cond642:                                      ; preds = %for.inc, %if.end640
  %470 = load i32, ptr %n, align 4
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aInterfaces, i32 0, i32 2
  %471 = load i32, ptr %nUsed, align 8
  %cmp643 = icmp ult i32 %470, %471
  br i1 %cmp643, label %for.body, label %for.end650

for.body:                                         ; preds = %for.cond642
  %472 = load ptr, ptr %pClass, align 8
  %473 = load ptr, ptr %apInterface, align 8
  %474 = load i32, ptr %n, align 4
  %idxprom = zext i32 %474 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %473, i64 %idxprom
  %475 = load ptr, ptr %arrayidx, align 8
  %call645 = call i32 @PH7_ClassImplement(ptr noundef %472, ptr noundef %475)
  store i32 %call645, ptr %rc, align 4
  %476 = load i32, ptr %rc, align 4
  %cmp646 = icmp ne i32 %476, 0
  br i1 %cmp646, label %if.then648, label %if.end649

if.then648:                                       ; preds = %for.body
  br label %for.end650

if.end649:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end649
  %477 = load i32, ptr %n, align 4
  %inc = add i32 %477, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond642, !llvm.loop !11

for.end650:                                       ; preds = %if.then648, %for.cond642
  br label %if.end651

if.end651:                                        ; preds = %for.end650, %for.end631
  %call652 = call i32 @SySetRelease(ptr noundef %aInterfaces)
  %478 = load i32, ptr %rc, align 4
  %cmp653 = icmp ne i32 %478, 0
  br i1 %cmp653, label %if.then655, label %if.end657

if.then655:                                       ; preds = %if.end651
  %479 = load ptr, ptr %pGen.addr, align 8
  %480 = load i32, ptr %nLine, align 4
  %call656 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %479, i32 noundef 1, i32 noundef %480, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end657:                                        ; preds = %if.end651
  br label %done

done:                                             ; preds = %if.end657, %if.end628, %if.end617, %if.end605, %if.end581, %if.end562, %if.end482, %if.end396, %if.end382, %if.end329, %if.end312, %if.end298, %if.end258
  %481 = load ptr, ptr %pEnd, align 8
  %arrayidx658 = getelementptr inbounds %struct.SyToken, ptr %481, i64 1
  %482 = load ptr, ptr %pGen.addr, align 8
  %pIn659 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %482, i32 0, i32 12
  store ptr %arrayidx658, ptr %pIn659, align 8
  %483 = load ptr, ptr %pTmp, align 8
  %484 = load ptr, ptr %pGen.addr, align 8
  %pEnd660 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %484, i32 0, i32 13
  store ptr %483, ptr %pEnd660, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %done, %if.then655, %if.then627, %if.then616, %if.then604, %if.then580, %if.then561, %if.then481, %if.then395, %if.then381, %if.then328, %if.then311, %if.then297, %if.then257, %if.end217, %if.then216, %if.end200, %if.then199, %if.then159, %if.then131, %if.then92, %if.then83, %if.end60, %if.then59, %if.then24, %while.end, %if.then8
  %485 = load i32, ptr %retval, align 4
  ret i32 %485
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileClassAttr(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInherit(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassImplement(ptr noundef, ptr noundef) #0

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
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
