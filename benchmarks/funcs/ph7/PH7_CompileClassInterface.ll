; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.328 = external hidden unnamed_addr constant [72 x i8], align 1
@.str.329 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.330 = external hidden unnamed_addr constant [45 x i8], align 1
@.str.331 = external hidden unnamed_addr constant [44 x i8], align 1
@.str.332 = external hidden unnamed_addr constant [95 x i8], align 1
@.str.333 = external hidden unnamed_addr constant [38 x i8], align 1
@.str.334 = external hidden unnamed_addr constant [73 x i8], align 1
@.str.335 = external hidden unnamed_addr constant [49 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmExtractClass(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileClassInterface(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %pClass = alloca ptr, align 8
  %pBase = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %nKwrd = alloca i32, align 4
  %rc = alloca i32, align 4
  %pBaseName = alloca ptr, align 8
  %iFlags226 = alloca i32, align 4
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
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 12
  %6 = load ptr, ptr %pIn3, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %6, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn4, align 8
  %incdec.ptr5 = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 1
  store ptr %incdec.ptr5, ptr %pIn4, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pVm, align 8
  %11 = load ptr, ptr %pName, align 8
  %12 = load i32, ptr %nLine, align 4
  %call = call ptr @PH7_NewRawClass(ptr noundef %10, ptr noundef %11, i32 noundef %12)
  store ptr %call, ptr %pClass, align 8
  %13 = load ptr, ptr %pClass, align 8
  %cmp = icmp eq ptr %13, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load i32, ptr %nLine, align 4
  %call6 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %14, i32 noundef 1, i32 noundef %15, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %16 = load ptr, ptr %pClass, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_class, ptr %16, i32 0, i32 3
  store i32 2, ptr %iFlags, align 8
  store ptr null, ptr %pBase, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 12
  %18 = load ptr, ptr %pIn7, align 8
  %19 = load ptr, ptr %pGen.addr, align 8
  %pEnd8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %19, i32 0, i32 13
  %20 = load ptr, ptr %pEnd8, align 8
  %cmp9 = icmp ult ptr %18, %20
  br i1 %cmp9, label %land.lhs.true, label %if.end59

land.lhs.true:                                    ; preds = %if.end
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn10, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 0, i32 1
  %23 = load i32, ptr %nType, align 8
  %and = and i32 %23, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then11, label %if.end59

if.then11:                                        ; preds = %land.lhs.true
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn12 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pIn12, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %25, i32 0, i32 3
  %26 = load ptr, ptr %pUserData, align 8
  %27 = ptrtoint ptr %26 to i64
  %conv = trunc i64 %27 to i32
  store i32 %conv, ptr %nKwrd, align 4
  %28 = load i32, ptr %nKwrd, align 4
  %cmp13 = icmp eq i32 %28, 1
  br i1 %cmp13, label %if.then15, label %if.end58

if.then15:                                        ; preds = %if.then11
  %29 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 12
  %30 = load ptr, ptr %pIn16, align 8
  %incdec.ptr17 = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 1
  store ptr %incdec.ptr17, ptr %pIn16, align 8
  %31 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %pIn18, align 8
  %33 = load ptr, ptr %pGen.addr, align 8
  %pEnd19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 13
  %34 = load ptr, ptr %pEnd19, align 8
  %cmp20 = icmp uge ptr %32, %34
  br i1 %cmp20, label %if.then27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn22, align 8
  %nType23 = getelementptr inbounds nuw %struct.SyToken, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %nType23, align 8
  %and24 = and i32 %37, 8
  %cmp25 = icmp eq i32 %and24, 0
  br i1 %cmp25, label %if.then27, label %if.end35

if.then27:                                        ; preds = %lor.lhs.false, %if.then15
  %38 = load ptr, ptr %pGen.addr, align 8
  %39 = load i32, ptr %nLine, align 4
  %40 = load ptr, ptr %pName, align 8
  %call28 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %38, i32 noundef 1, i32 noundef %39, ptr noundef @.str.328, ptr noundef %40)
  store i32 %call28, ptr %rc, align 4
  %41 = load ptr, ptr %pGen.addr, align 8
  %pVm29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %pVm29, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %pClass, align 8
  %call30 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %43)
  %44 = load i32, ptr %rc, align 4
  %cmp31 = icmp eq i32 %44, -10
  br i1 %cmp31, label %if.then33, label %if.end34

if.then33:                                        ; preds = %if.then27
  store i32 -10, ptr %retval, align 4
  br label %return

if.end34:                                         ; preds = %if.then27
  store i32 0, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %lor.lhs.false
  %45 = load ptr, ptr %pGen.addr, align 8
  %pIn36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %45, i32 0, i32 12
  %46 = load ptr, ptr %pIn36, align 8
  %sData37 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 0, i32 0
  store ptr %sData37, ptr %pBaseName, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %pVm38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %pVm38, align 8
  %49 = load ptr, ptr %pBaseName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %49, i32 0, i32 0
  %50 = load ptr, ptr %zString, align 8
  %51 = load ptr, ptr %pBaseName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %51, i32 0, i32 1
  %52 = load i32, ptr %nByte, align 8
  %call39 = call ptr @PH7_VmExtractClass(ptr noundef %48, ptr noundef %50, i32 noundef %52, i32 noundef 0, i32 noundef 0)
  store ptr %call39, ptr %pBase, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end35
  %53 = load ptr, ptr %pBase, align 8
  %tobool40 = icmp ne ptr %53, null
  br i1 %tobool40, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %54 = load ptr, ptr %pBase, align 8
  %iFlags41 = getelementptr inbounds nuw %struct.ph7_class, ptr %54, i32 0, i32 3
  %55 = load i32, ptr %iFlags41, align 8
  %and42 = and i32 %55, 2
  %cmp43 = icmp eq i32 %and42, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %56 = phi i1 [ false, %while.cond ], [ %cmp43, %land.rhs ]
  br i1 %56, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %57 = load ptr, ptr %pBase, align 8
  %pNextName = getelementptr inbounds nuw %struct.ph7_class, ptr %57, i32 0, i32 8
  %58 = load ptr, ptr %pNextName, align 8
  store ptr %58, ptr %pBase, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %59 = load ptr, ptr %pBase, align 8
  %cmp45 = icmp eq ptr %59, null
  br i1 %cmp45, label %if.then47, label %if.end55

if.then47:                                        ; preds = %while.end
  %60 = load ptr, ptr %pGen.addr, align 8
  %61 = load ptr, ptr %pGen.addr, align 8
  %pIn48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %pIn48, align 8
  %nLine49 = getelementptr inbounds nuw %struct.SyToken, ptr %62, i32 0, i32 2
  %63 = load i32, ptr %nLine49, align 4
  %64 = load ptr, ptr %pBaseName, align 8
  %call50 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %60, i32 noundef 1, i32 noundef %63, ptr noundef @.str.329, ptr noundef %64)
  store i32 %call50, ptr %rc, align 4
  %65 = load i32, ptr %rc, align 4
  %cmp51 = icmp eq i32 %65, -10
  br i1 %cmp51, label %if.then53, label %if.end54

if.then53:                                        ; preds = %if.then47
  store i32 -10, ptr %retval, align 4
  br label %return

if.end54:                                         ; preds = %if.then47
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %while.end
  %66 = load ptr, ptr %pGen.addr, align 8
  %pIn56 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %66, i32 0, i32 12
  %67 = load ptr, ptr %pIn56, align 8
  %incdec.ptr57 = getelementptr inbounds nuw %struct.SyToken, ptr %67, i32 1
  store ptr %incdec.ptr57, ptr %pIn56, align 8
  br label %if.end58

if.end58:                                         ; preds = %if.end55, %if.then11
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %land.lhs.true, %if.end
  %68 = load ptr, ptr %pGen.addr, align 8
  %pIn60 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %68, i32 0, i32 12
  %69 = load ptr, ptr %pIn60, align 8
  %70 = load ptr, ptr %pGen.addr, align 8
  %pEnd61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 13
  %71 = load ptr, ptr %pEnd61, align 8
  %cmp62 = icmp uge ptr %69, %71
  br i1 %cmp62, label %if.then70, label %lor.lhs.false64

lor.lhs.false64:                                  ; preds = %if.end59
  %72 = load ptr, ptr %pGen.addr, align 8
  %pIn65 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %72, i32 0, i32 12
  %73 = load ptr, ptr %pIn65, align 8
  %nType66 = getelementptr inbounds nuw %struct.SyToken, ptr %73, i32 0, i32 1
  %74 = load i32, ptr %nType66, align 8
  %and67 = and i32 %74, 64
  %cmp68 = icmp eq i32 %and67, 0
  br i1 %cmp68, label %if.then70, label %if.end79

if.then70:                                        ; preds = %lor.lhs.false64, %if.end59
  %75 = load ptr, ptr %pGen.addr, align 8
  %76 = load i32, ptr %nLine, align 4
  %77 = load ptr, ptr %pName, align 8
  %call71 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %75, i32 noundef 1, i32 noundef %76, ptr noundef @.str.330, ptr noundef %77)
  store i32 %call71, ptr %rc, align 4
  %78 = load ptr, ptr %pGen.addr, align 8
  %pVm72 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %pVm72, align 8
  %sAllocator73 = getelementptr inbounds nuw %struct.ph7_vm, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %pClass, align 8
  %call74 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator73, ptr noundef %80)
  %81 = load i32, ptr %rc, align 4
  %cmp75 = icmp eq i32 %81, -10
  br i1 %cmp75, label %if.then77, label %if.end78

if.then77:                                        ; preds = %if.then70
  store i32 -10, ptr %retval, align 4
  br label %return

if.end78:                                         ; preds = %if.then70
  store i32 0, ptr %retval, align 4
  br label %return

if.end79:                                         ; preds = %lor.lhs.false64
  %82 = load ptr, ptr %pGen.addr, align 8
  %pIn80 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 12
  %83 = load ptr, ptr %pIn80, align 8
  %incdec.ptr81 = getelementptr inbounds nuw %struct.SyToken, ptr %83, i32 1
  store ptr %incdec.ptr81, ptr %pIn80, align 8
  store ptr null, ptr %pEnd, align 8
  %84 = load ptr, ptr %pGen.addr, align 8
  %pIn82 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %84, i32 0, i32 12
  %85 = load ptr, ptr %pIn82, align 8
  %86 = load ptr, ptr %pGen.addr, align 8
  %pEnd83 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %86, i32 0, i32 13
  %87 = load ptr, ptr %pEnd83, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %85, ptr noundef %87, i32 noundef 64, i32 noundef 128, ptr noundef %pEnd)
  %88 = load ptr, ptr %pEnd, align 8
  %89 = load ptr, ptr %pGen.addr, align 8
  %pEnd84 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %89, i32 0, i32 13
  %90 = load ptr, ptr %pEnd84, align 8
  %cmp85 = icmp uge ptr %88, %90
  br i1 %cmp85, label %if.then87, label %if.end96

if.then87:                                        ; preds = %if.end79
  %91 = load ptr, ptr %pGen.addr, align 8
  %92 = load i32, ptr %nLine, align 4
  %93 = load ptr, ptr %pName, align 8
  %call88 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %91, i32 noundef 1, i32 noundef %92, ptr noundef @.str.331, ptr noundef %93)
  store i32 %call88, ptr %rc, align 4
  %94 = load ptr, ptr %pGen.addr, align 8
  %pVm89 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %pVm89, align 8
  %sAllocator90 = getelementptr inbounds nuw %struct.ph7_vm, ptr %95, i32 0, i32 0
  %96 = load ptr, ptr %pClass, align 8
  %call91 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator90, ptr noundef %96)
  %97 = load i32, ptr %rc, align 4
  %cmp92 = icmp eq i32 %97, -10
  br i1 %cmp92, label %if.then94, label %if.end95

if.then94:                                        ; preds = %if.then87
  store i32 -10, ptr %retval, align 4
  br label %return

if.end95:                                         ; preds = %if.then87
  store i32 0, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.end79
  %98 = load ptr, ptr %pGen.addr, align 8
  %pEnd97 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %98, i32 0, i32 13
  %99 = load ptr, ptr %pEnd97, align 8
  store ptr %99, ptr %pTmp, align 8
  %100 = load ptr, ptr %pEnd, align 8
  %101 = load ptr, ptr %pGen.addr, align 8
  %pEnd98 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %101, i32 0, i32 13
  store ptr %100, ptr %pEnd98, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end267, %if.end96
  br label %while.cond99

while.cond99:                                     ; preds = %while.body110, %for.cond
  %102 = load ptr, ptr %pGen.addr, align 8
  %pIn100 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %102, i32 0, i32 12
  %103 = load ptr, ptr %pIn100, align 8
  %104 = load ptr, ptr %pGen.addr, align 8
  %pEnd101 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %104, i32 0, i32 13
  %105 = load ptr, ptr %pEnd101, align 8
  %cmp102 = icmp ult ptr %103, %105
  br i1 %cmp102, label %land.rhs104, label %land.end109

land.rhs104:                                      ; preds = %while.cond99
  %106 = load ptr, ptr %pGen.addr, align 8
  %pIn105 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %106, i32 0, i32 12
  %107 = load ptr, ptr %pIn105, align 8
  %nType106 = getelementptr inbounds nuw %struct.SyToken, ptr %107, i32 0, i32 1
  %108 = load i32, ptr %nType106, align 8
  %and107 = and i32 %108, 262144
  %tobool108 = icmp ne i32 %and107, 0
  br label %land.end109

land.end109:                                      ; preds = %land.rhs104, %while.cond99
  %109 = phi i1 [ false, %while.cond99 ], [ %tobool108, %land.rhs104 ]
  br i1 %109, label %while.body110, label %while.end113

while.body110:                                    ; preds = %land.end109
  %110 = load ptr, ptr %pGen.addr, align 8
  %pIn111 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %110, i32 0, i32 12
  %111 = load ptr, ptr %pIn111, align 8
  %incdec.ptr112 = getelementptr inbounds nuw %struct.SyToken, ptr %111, i32 1
  store ptr %incdec.ptr112, ptr %pIn111, align 8
  br label %while.cond99, !llvm.loop !8

while.end113:                                     ; preds = %land.end109
  %112 = load ptr, ptr %pGen.addr, align 8
  %pIn114 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %112, i32 0, i32 12
  %113 = load ptr, ptr %pIn114, align 8
  %114 = load ptr, ptr %pGen.addr, align 8
  %pEnd115 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %114, i32 0, i32 13
  %115 = load ptr, ptr %pEnd115, align 8
  %cmp116 = icmp uge ptr %113, %115
  br i1 %cmp116, label %if.then118, label %if.end119

if.then118:                                       ; preds = %while.end113
  br label %for.end

if.end119:                                        ; preds = %while.end113
  %116 = load ptr, ptr %pGen.addr, align 8
  %pIn120 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %116, i32 0, i32 12
  %117 = load ptr, ptr %pIn120, align 8
  %nType121 = getelementptr inbounds nuw %struct.SyToken, ptr %117, i32 0, i32 1
  %118 = load i32, ptr %nType121, align 8
  %and122 = and i32 %118, 4
  %cmp123 = icmp eq i32 %and122, 0
  br i1 %cmp123, label %if.then125, label %if.end135

if.then125:                                       ; preds = %if.end119
  %119 = load ptr, ptr %pGen.addr, align 8
  %120 = load ptr, ptr %pGen.addr, align 8
  %pIn126 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %120, i32 0, i32 12
  %121 = load ptr, ptr %pIn126, align 8
  %nLine127 = getelementptr inbounds nuw %struct.SyToken, ptr %121, i32 0, i32 2
  %122 = load i32, ptr %nLine127, align 4
  %123 = load ptr, ptr %pGen.addr, align 8
  %pIn128 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %123, i32 0, i32 12
  %124 = load ptr, ptr %pIn128, align 8
  %sData129 = getelementptr inbounds nuw %struct.SyToken, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %pName, align 8
  %call130 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %119, i32 noundef 1, i32 noundef %122, ptr noundef @.str.332, ptr noundef %sData129, ptr noundef %125)
  store i32 %call130, ptr %rc, align 4
  %126 = load i32, ptr %rc, align 4
  %cmp131 = icmp eq i32 %126, -10
  br i1 %cmp131, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.then125
  store i32 -10, ptr %retval, align 4
  br label %return

if.end134:                                        ; preds = %if.then125
  br label %done

if.end135:                                        ; preds = %if.end119
  %127 = load ptr, ptr %pGen.addr, align 8
  %pIn136 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %127, i32 0, i32 12
  %128 = load ptr, ptr %pIn136, align 8
  %pUserData137 = getelementptr inbounds nuw %struct.SyToken, ptr %128, i32 0, i32 3
  %129 = load ptr, ptr %pUserData137, align 8
  %130 = ptrtoint ptr %129 to i64
  %conv138 = trunc i64 %130 to i32
  store i32 %conv138, ptr %nKwrd, align 4
  %131 = load i32, ptr %nKwrd, align 4
  %cmp139 = icmp eq i32 %131, 45
  br i1 %cmp139, label %if.then144, label %lor.lhs.false141

lor.lhs.false141:                                 ; preds = %if.end135
  %132 = load i32, ptr %nKwrd, align 4
  %cmp142 = icmp eq i32 %132, 50
  br i1 %cmp142, label %if.then144, label %if.end148

if.then144:                                       ; preds = %lor.lhs.false141, %if.end135
  %133 = load ptr, ptr %pGen.addr, align 8
  %134 = load ptr, ptr %pGen.addr, align 8
  %pIn145 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %134, i32 0, i32 12
  %135 = load ptr, ptr %pIn145, align 8
  %nLine146 = getelementptr inbounds nuw %struct.SyToken, ptr %135, i32 0, i32 2
  %136 = load i32, ptr %nLine146, align 4
  %call147 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %133, i32 noundef 2, i32 noundef %136, ptr noundef @.str.333)
  store i32 52, ptr %nKwrd, align 4
  br label %if.end148

if.end148:                                        ; preds = %if.then144, %lor.lhs.false141
  %137 = load i32, ptr %nKwrd, align 4
  %cmp149 = icmp ne i32 %137, 52
  br i1 %cmp149, label %land.lhs.true151, label %if.end168

land.lhs.true151:                                 ; preds = %if.end148
  %138 = load i32, ptr %nKwrd, align 4
  %cmp152 = icmp ne i32 %138, 19
  br i1 %cmp152, label %land.lhs.true154, label %if.end168

land.lhs.true154:                                 ; preds = %land.lhs.true151
  %139 = load i32, ptr %nKwrd, align 4
  %cmp155 = icmp ne i32 %139, 22
  br i1 %cmp155, label %land.lhs.true157, label %if.end168

land.lhs.true157:                                 ; preds = %land.lhs.true154
  %140 = load i32, ptr %nKwrd, align 4
  %cmp158 = icmp ne i32 %140, 16
  br i1 %cmp158, label %if.then160, label %if.end168

if.then160:                                       ; preds = %land.lhs.true157
  %141 = load ptr, ptr %pGen.addr, align 8
  %142 = load ptr, ptr %pGen.addr, align 8
  %pIn161 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %142, i32 0, i32 12
  %143 = load ptr, ptr %pIn161, align 8
  %nLine162 = getelementptr inbounds nuw %struct.SyToken, ptr %143, i32 0, i32 2
  %144 = load i32, ptr %nLine162, align 4
  %145 = load ptr, ptr %pName, align 8
  %call163 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %141, i32 noundef 1, i32 noundef %144, ptr noundef @.str.334, ptr noundef %145)
  store i32 %call163, ptr %rc, align 4
  %146 = load i32, ptr %rc, align 4
  %cmp164 = icmp eq i32 %146, -10
  br i1 %cmp164, label %if.then166, label %if.end167

if.then166:                                       ; preds = %if.then160
  store i32 -10, ptr %retval, align 4
  br label %return

if.end167:                                        ; preds = %if.then160
  br label %done

if.end168:                                        ; preds = %land.lhs.true157, %land.lhs.true154, %land.lhs.true151, %if.end148
  %147 = load i32, ptr %nKwrd, align 4
  %cmp169 = icmp eq i32 %147, 52
  br i1 %cmp169, label %if.then171, label %if.end213

if.then171:                                       ; preds = %if.end168
  %148 = load ptr, ptr %pGen.addr, align 8
  %pIn172 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %148, i32 0, i32 12
  %149 = load ptr, ptr %pIn172, align 8
  %incdec.ptr173 = getelementptr inbounds nuw %struct.SyToken, ptr %149, i32 1
  store ptr %incdec.ptr173, ptr %pIn172, align 8
  %150 = load ptr, ptr %pGen.addr, align 8
  %pIn174 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %150, i32 0, i32 12
  %151 = load ptr, ptr %pIn174, align 8
  %152 = load ptr, ptr %pGen.addr, align 8
  %pEnd175 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %152, i32 0, i32 13
  %153 = load ptr, ptr %pEnd175, align 8
  %cmp176 = icmp uge ptr %151, %153
  br i1 %cmp176, label %if.then184, label %lor.lhs.false178

lor.lhs.false178:                                 ; preds = %if.then171
  %154 = load ptr, ptr %pGen.addr, align 8
  %pIn179 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %154, i32 0, i32 12
  %155 = load ptr, ptr %pIn179, align 8
  %nType180 = getelementptr inbounds nuw %struct.SyToken, ptr %155, i32 0, i32 1
  %156 = load i32, ptr %nType180, align 8
  %and181 = and i32 %156, 4
  %cmp182 = icmp eq i32 %and181, 0
  br i1 %cmp182, label %if.then184, label %if.end192

if.then184:                                       ; preds = %lor.lhs.false178, %if.then171
  %157 = load ptr, ptr %pGen.addr, align 8
  %158 = load ptr, ptr %pGen.addr, align 8
  %pIn185 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %158, i32 0, i32 12
  %159 = load ptr, ptr %pIn185, align 8
  %nLine186 = getelementptr inbounds nuw %struct.SyToken, ptr %159, i32 0, i32 2
  %160 = load i32, ptr %nLine186, align 4
  %161 = load ptr, ptr %pName, align 8
  %call187 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %157, i32 noundef 1, i32 noundef %160, ptr noundef @.str.335, ptr noundef %161)
  store i32 %call187, ptr %rc, align 4
  %162 = load i32, ptr %rc, align 4
  %cmp188 = icmp eq i32 %162, -10
  br i1 %cmp188, label %if.then190, label %if.end191

if.then190:                                       ; preds = %if.then184
  store i32 -10, ptr %retval, align 4
  br label %return

if.end191:                                        ; preds = %if.then184
  br label %done

if.end192:                                        ; preds = %lor.lhs.false178
  %163 = load ptr, ptr %pGen.addr, align 8
  %pIn193 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %163, i32 0, i32 12
  %164 = load ptr, ptr %pIn193, align 8
  %pUserData194 = getelementptr inbounds nuw %struct.SyToken, ptr %164, i32 0, i32 3
  %165 = load ptr, ptr %pUserData194, align 8
  %166 = ptrtoint ptr %165 to i64
  %conv195 = trunc i64 %166 to i32
  store i32 %conv195, ptr %nKwrd, align 4
  %167 = load i32, ptr %nKwrd, align 4
  %cmp196 = icmp ne i32 %167, 19
  br i1 %cmp196, label %land.lhs.true198, label %if.end212

land.lhs.true198:                                 ; preds = %if.end192
  %168 = load i32, ptr %nKwrd, align 4
  %cmp199 = icmp ne i32 %168, 22
  br i1 %cmp199, label %land.lhs.true201, label %if.end212

land.lhs.true201:                                 ; preds = %land.lhs.true198
  %169 = load i32, ptr %nKwrd, align 4
  %cmp202 = icmp ne i32 %169, 16
  br i1 %cmp202, label %if.then204, label %if.end212

if.then204:                                       ; preds = %land.lhs.true201
  %170 = load ptr, ptr %pGen.addr, align 8
  %171 = load ptr, ptr %pGen.addr, align 8
  %pIn205 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %171, i32 0, i32 12
  %172 = load ptr, ptr %pIn205, align 8
  %nLine206 = getelementptr inbounds nuw %struct.SyToken, ptr %172, i32 0, i32 2
  %173 = load i32, ptr %nLine206, align 4
  %174 = load ptr, ptr %pName, align 8
  %call207 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %170, i32 noundef 1, i32 noundef %173, ptr noundef @.str.334, ptr noundef %174)
  store i32 %call207, ptr %rc, align 4
  %175 = load i32, ptr %rc, align 4
  %cmp208 = icmp eq i32 %175, -10
  br i1 %cmp208, label %if.then210, label %if.end211

if.then210:                                       ; preds = %if.then204
  store i32 -10, ptr %retval, align 4
  br label %return

if.end211:                                        ; preds = %if.then204
  br label %done

if.end212:                                        ; preds = %land.lhs.true201, %land.lhs.true198, %if.end192
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.end168
  %176 = load i32, ptr %nKwrd, align 4
  %cmp214 = icmp eq i32 %176, 22
  br i1 %cmp214, label %if.then216, label %if.else

if.then216:                                       ; preds = %if.end213
  %177 = load ptr, ptr %pGen.addr, align 8
  %178 = load ptr, ptr %pClass, align 8
  %call217 = call i32 @GenStateCompileClassConstant(ptr noundef %177, i32 noundef 0, i32 noundef 0, ptr noundef %178)
  store i32 %call217, ptr %rc, align 4
  %179 = load i32, ptr %rc, align 4
  %cmp218 = icmp ne i32 %179, 0
  br i1 %cmp218, label %if.then220, label %if.end225

if.then220:                                       ; preds = %if.then216
  %180 = load i32, ptr %rc, align 4
  %cmp221 = icmp eq i32 %180, -10
  br i1 %cmp221, label %if.then223, label %if.end224

if.then223:                                       ; preds = %if.then220
  store i32 -10, ptr %retval, align 4
  br label %return

if.end224:                                        ; preds = %if.then220
  br label %done

if.end225:                                        ; preds = %if.then216
  br label %if.end267

if.else:                                          ; preds = %if.end213
  store i32 0, ptr %iFlags226, align 4
  %181 = load i32, ptr %nKwrd, align 4
  %cmp227 = icmp eq i32 %181, 16
  br i1 %cmp227, label %if.then229, label %if.end257

if.then229:                                       ; preds = %if.else
  %182 = load i32, ptr %iFlags226, align 4
  %or = or i32 %182, 1
  store i32 %or, ptr %iFlags226, align 4
  %183 = load ptr, ptr %pGen.addr, align 8
  %pIn230 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %183, i32 0, i32 12
  %184 = load ptr, ptr %pIn230, align 8
  %incdec.ptr231 = getelementptr inbounds nuw %struct.SyToken, ptr %184, i32 1
  store ptr %incdec.ptr231, ptr %pIn230, align 8
  %185 = load ptr, ptr %pGen.addr, align 8
  %pIn232 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %185, i32 0, i32 12
  %186 = load ptr, ptr %pIn232, align 8
  %187 = load ptr, ptr %pGen.addr, align 8
  %pEnd233 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %187, i32 0, i32 13
  %188 = load ptr, ptr %pEnd233, align 8
  %cmp234 = icmp uge ptr %186, %188
  br i1 %cmp234, label %if.then248, label %lor.lhs.false236

lor.lhs.false236:                                 ; preds = %if.then229
  %189 = load ptr, ptr %pGen.addr, align 8
  %pIn237 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %189, i32 0, i32 12
  %190 = load ptr, ptr %pIn237, align 8
  %nType238 = getelementptr inbounds nuw %struct.SyToken, ptr %190, i32 0, i32 1
  %191 = load i32, ptr %nType238, align 8
  %and239 = and i32 %191, 4
  %cmp240 = icmp eq i32 %and239, 0
  br i1 %cmp240, label %if.then248, label %lor.lhs.false242

lor.lhs.false242:                                 ; preds = %lor.lhs.false236
  %192 = load ptr, ptr %pGen.addr, align 8
  %pIn243 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %192, i32 0, i32 12
  %193 = load ptr, ptr %pIn243, align 8
  %pUserData244 = getelementptr inbounds nuw %struct.SyToken, ptr %193, i32 0, i32 3
  %194 = load ptr, ptr %pUserData244, align 8
  %195 = ptrtoint ptr %194 to i64
  %conv245 = trunc i64 %195 to i32
  %cmp246 = icmp ne i32 %conv245, 19
  br i1 %cmp246, label %if.then248, label %if.end256

if.then248:                                       ; preds = %lor.lhs.false242, %lor.lhs.false236, %if.then229
  %196 = load ptr, ptr %pGen.addr, align 8
  %197 = load ptr, ptr %pGen.addr, align 8
  %pIn249 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %197, i32 0, i32 12
  %198 = load ptr, ptr %pIn249, align 8
  %nLine250 = getelementptr inbounds nuw %struct.SyToken, ptr %198, i32 0, i32 2
  %199 = load i32, ptr %nLine250, align 4
  %200 = load ptr, ptr %pName, align 8
  %call251 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %196, i32 noundef 1, i32 noundef %199, ptr noundef @.str.335, ptr noundef %200)
  store i32 %call251, ptr %rc, align 4
  %201 = load i32, ptr %rc, align 4
  %cmp252 = icmp eq i32 %201, -10
  br i1 %cmp252, label %if.then254, label %if.end255

if.then254:                                       ; preds = %if.then248
  store i32 -10, ptr %retval, align 4
  br label %return

if.end255:                                        ; preds = %if.then248
  br label %done

if.end256:                                        ; preds = %lor.lhs.false242
  br label %if.end257

if.end257:                                        ; preds = %if.end256, %if.else
  %202 = load ptr, ptr %pGen.addr, align 8
  %203 = load i32, ptr %iFlags226, align 4
  %204 = load ptr, ptr %pClass, align 8
  %call258 = call i32 @GenStateCompileClassMethod(ptr noundef %202, i32 noundef 0, i32 noundef 0, i32 noundef %203, ptr noundef %204)
  store i32 %call258, ptr %rc, align 4
  %205 = load i32, ptr %rc, align 4
  %cmp259 = icmp ne i32 %205, 0
  br i1 %cmp259, label %if.then261, label %if.end266

if.then261:                                       ; preds = %if.end257
  %206 = load i32, ptr %rc, align 4
  %cmp262 = icmp eq i32 %206, -10
  br i1 %cmp262, label %if.then264, label %if.end265

if.then264:                                       ; preds = %if.then261
  store i32 -10, ptr %retval, align 4
  br label %return

if.end265:                                        ; preds = %if.then261
  br label %done

if.end266:                                        ; preds = %if.end257
  br label %if.end267

if.end267:                                        ; preds = %if.end266, %if.end225
  br label %for.cond

for.end:                                          ; preds = %if.then118
  %207 = load ptr, ptr %pGen.addr, align 8
  %pVm268 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %207, i32 0, i32 0
  %208 = load ptr, ptr %pVm268, align 8
  %209 = load ptr, ptr %pClass, align 8
  %call269 = call i32 @PH7_VmInstallClass(ptr noundef %208, ptr noundef %209)
  store i32 %call269, ptr %rc, align 4
  %210 = load i32, ptr %rc, align 4
  %cmp270 = icmp eq i32 %210, 0
  br i1 %cmp270, label %land.lhs.true272, label %if.end276

land.lhs.true272:                                 ; preds = %for.end
  %211 = load ptr, ptr %pBase, align 8
  %tobool273 = icmp ne ptr %211, null
  br i1 %tobool273, label %if.then274, label %if.end276

if.then274:                                       ; preds = %land.lhs.true272
  %212 = load ptr, ptr %pClass, align 8
  %213 = load ptr, ptr %pBase, align 8
  %call275 = call i32 @PH7_ClassInterfaceInherit(ptr noundef %212, ptr noundef %213)
  store i32 %call275, ptr %rc, align 4
  br label %if.end276

if.end276:                                        ; preds = %if.then274, %land.lhs.true272, %for.end
  %214 = load i32, ptr %rc, align 4
  %cmp277 = icmp ne i32 %214, 0
  br i1 %cmp277, label %if.then279, label %if.end281

if.then279:                                       ; preds = %if.end276
  %215 = load ptr, ptr %pGen.addr, align 8
  %216 = load i32, ptr %nLine, align 4
  %call280 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %215, i32 noundef 1, i32 noundef %216, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end281:                                        ; preds = %if.end276
  br label %done

done:                                             ; preds = %if.end281, %if.end265, %if.end255, %if.end224, %if.end211, %if.end191, %if.end167, %if.end134
  %217 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %217, i64 1
  %218 = load ptr, ptr %pGen.addr, align 8
  %pIn282 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %218, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn282, align 8
  %219 = load ptr, ptr %pTmp, align 8
  %220 = load ptr, ptr %pGen.addr, align 8
  %pEnd283 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %220, i32 0, i32 13
  store ptr %219, ptr %pEnd283, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %done, %if.then279, %if.then264, %if.then254, %if.then223, %if.then210, %if.then190, %if.then166, %if.then133, %if.end95, %if.then94, %if.end78, %if.then77, %if.then53, %if.end34, %if.then33, %if.then
  %221 = load i32, ptr %retval, align 4
  ret i32 %221
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_NewRawClass(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileClassConstant(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileClassMethod(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstallClass(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_ClassInterfaceInherit(ptr noundef, ptr noundef) #0

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
