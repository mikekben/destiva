; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_exception_block = type { %struct.SyString, %struct.SyString, %struct.SySet }
%struct.SyString = type { ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_exception = type { ptr, %struct.SySet, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.309 = external hidden unnamed_addr constant [51 x i8], align 1
@.str.310 = external hidden unnamed_addr constant [53 x i8], align 1
@.str.311 = external hidden unnamed_addr constant [61 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixJumps(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEnterBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileCatch(ptr noundef %pGen, ptr noundef %pException) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pException.addr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %sCatch = alloca %struct.ph7_exception_block, align 8
  %pInstrContainer = alloca ptr, align 8
  %pCatch = alloca ptr, align 8
  %pToken = alloca ptr, align 8
  %pName = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr %pException, ptr %pException.addr, align 8
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
  call void @SyZero(ptr noundef %sCatch, i32 noundef 72)
  %sByteCode = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %sCatch, i32 0, i32 2
  %5 = load ptr, ptr %pException.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_exception, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %6, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %sByteCode, ptr noundef %sAllocator, i32 noundef 24)
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn3 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn3, align 8
  %9 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 13
  %10 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %8, %10
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %11 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nType, align 8
  %and = and i32 %13, 512
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false6

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %14 = load ptr, ptr %pGen.addr, align 8
  %pIn7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 12
  %15 = load ptr, ptr %pIn7, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %15, i64 1
  %16 = load ptr, ptr %pGen.addr, align 8
  %pEnd8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 13
  %17 = load ptr, ptr %pEnd8, align 8
  %cmp9 = icmp uge ptr %arrayidx, %17
  br i1 %cmp9, label %if.then, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %pIn11, align 8
  %arrayidx12 = getelementptr inbounds %struct.SyToken, ptr %19, i64 1
  %nType13 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx12, i32 0, i32 1
  %20 = load i32, ptr %nType13, align 8
  %and14 = and i32 %20, 12
  %cmp15 = icmp eq i32 %and14, 0
  br i1 %cmp15, label %if.then, label %if.end26

if.then:                                          ; preds = %lor.lhs.false10, %lor.lhs.false6, %lor.lhs.false, %entry
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn16, align 8
  store ptr %22, ptr %pToken, align 8
  %23 = load ptr, ptr %pToken, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pEnd17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 13
  %25 = load ptr, ptr %pEnd17, align 8
  %cmp18 = icmp uge ptr %23, %25
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %if.then
  %26 = load ptr, ptr %pToken, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.SyToken, ptr %26, i32 -1
  store ptr %incdec.ptr20, ptr %pToken, align 8
  br label %if.end

if.end:                                           ; preds = %if.then19, %if.then
  %27 = load ptr, ptr %pGen.addr, align 8
  %28 = load ptr, ptr %pToken, align 8
  %nLine21 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %nLine21, align 4
  %30 = load ptr, ptr %pToken, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %30, i32 0, i32 0
  %call22 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %27, i32 noundef 1, i32 noundef %29, ptr noundef @.str.309, ptr noundef %sData)
  store i32 %call22, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp23 = icmp eq i32 %31, -10
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end
  store i32 -9, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %lor.lhs.false10
  %32 = load ptr, ptr %pGen.addr, align 8
  %pIn27 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 12
  %33 = load ptr, ptr %pIn27, align 8
  %incdec.ptr28 = getelementptr inbounds nuw %struct.SyToken, ptr %33, i32 1
  store ptr %incdec.ptr28, ptr %pIn27, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn29, align 8
  %sData30 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 0, i32 0
  store ptr %sData30, ptr %pName, align 8
  %36 = load ptr, ptr %pGen.addr, align 8
  %pVm31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pVm31, align 8
  %sAllocator32 = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 0
  %38 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %zString, align 8
  %40 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %40, i32 0, i32 1
  %41 = load i32, ptr %nByte, align 8
  %call33 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator32, ptr noundef %39, i32 noundef %41)
  store ptr %call33, ptr %zDup, align 8
  %42 = load ptr, ptr %zDup, align 8
  %cmp34 = icmp eq ptr %42, null
  br i1 %cmp34, label %if.then35, label %if.end36

if.then35:                                        ; preds = %if.end26
  br label %Mem

if.end36:                                         ; preds = %if.end26
  %43 = load ptr, ptr %zDup, align 8
  %sClass = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %sCatch, i32 0, i32 0
  %zString37 = getelementptr inbounds nuw %struct.SyString, ptr %sClass, i32 0, i32 0
  store ptr %43, ptr %zString37, align 8
  %44 = load ptr, ptr %pName, align 8
  %nByte38 = getelementptr inbounds nuw %struct.SyString, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %nByte38, align 8
  %sClass39 = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %sCatch, i32 0, i32 0
  %nByte40 = getelementptr inbounds nuw %struct.SyString, ptr %sClass39, i32 0, i32 1
  store i32 %45, ptr %nByte40, align 8
  %46 = load ptr, ptr %pGen.addr, align 8
  %pIn41 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 12
  %47 = load ptr, ptr %pIn41, align 8
  %incdec.ptr42 = getelementptr inbounds nuw %struct.SyToken, ptr %47, i32 1
  store ptr %incdec.ptr42, ptr %pIn41, align 8
  %48 = load ptr, ptr %pGen.addr, align 8
  %pIn43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %48, i32 0, i32 12
  %49 = load ptr, ptr %pIn43, align 8
  %50 = load ptr, ptr %pGen.addr, align 8
  %pEnd44 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 13
  %51 = load ptr, ptr %pEnd44, align 8
  %cmp45 = icmp uge ptr %49, %51
  br i1 %cmp45, label %if.then62, label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.end36
  %52 = load ptr, ptr %pGen.addr, align 8
  %pIn47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 12
  %53 = load ptr, ptr %pIn47, align 8
  %nType48 = getelementptr inbounds nuw %struct.SyToken, ptr %53, i32 0, i32 1
  %54 = load i32, ptr %nType48, align 8
  %and49 = and i32 %54, 16
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.then62, label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %lor.lhs.false46
  %55 = load ptr, ptr %pGen.addr, align 8
  %pIn52 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 12
  %56 = load ptr, ptr %pIn52, align 8
  %arrayidx53 = getelementptr inbounds %struct.SyToken, ptr %56, i64 1
  %57 = load ptr, ptr %pGen.addr, align 8
  %pEnd54 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 13
  %58 = load ptr, ptr %pEnd54, align 8
  %cmp55 = icmp uge ptr %arrayidx53, %58
  br i1 %cmp55, label %if.then62, label %lor.lhs.false56

lor.lhs.false56:                                  ; preds = %lor.lhs.false51
  %59 = load ptr, ptr %pGen.addr, align 8
  %pIn57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %59, i32 0, i32 12
  %60 = load ptr, ptr %pIn57, align 8
  %arrayidx58 = getelementptr inbounds %struct.SyToken, ptr %60, i64 1
  %nType59 = getelementptr inbounds nuw %struct.SyToken, ptr %arrayidx58, i32 0, i32 1
  %61 = load i32, ptr %nType59, align 8
  %and60 = and i32 %61, 12
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.then62, label %if.end75

if.then62:                                        ; preds = %lor.lhs.false56, %lor.lhs.false51, %lor.lhs.false46, %if.end36
  %62 = load ptr, ptr %pGen.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 12
  %63 = load ptr, ptr %pIn63, align 8
  store ptr %63, ptr %pToken, align 8
  %64 = load ptr, ptr %pToken, align 8
  %65 = load ptr, ptr %pGen.addr, align 8
  %pEnd64 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %65, i32 0, i32 13
  %66 = load ptr, ptr %pEnd64, align 8
  %cmp65 = icmp uge ptr %64, %66
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then62
  %67 = load ptr, ptr %pToken, align 8
  %incdec.ptr67 = getelementptr inbounds %struct.SyToken, ptr %67, i32 -1
  store ptr %incdec.ptr67, ptr %pToken, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then62
  %68 = load ptr, ptr %pGen.addr, align 8
  %69 = load ptr, ptr %pToken, align 8
  %nLine69 = getelementptr inbounds nuw %struct.SyToken, ptr %69, i32 0, i32 2
  %70 = load i32, ptr %nLine69, align 4
  %71 = load ptr, ptr %pToken, align 8
  %sData70 = getelementptr inbounds nuw %struct.SyToken, ptr %71, i32 0, i32 0
  %call71 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %68, i32 noundef 1, i32 noundef %70, ptr noundef @.str.310, ptr noundef %sData70)
  store i32 %call71, ptr %rc, align 4
  %72 = load i32, ptr %rc, align 4
  %cmp72 = icmp eq i32 %72, -10
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end68
  store i32 -10, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end68
  store i32 -9, ptr %retval, align 4
  br label %return

if.end75:                                         ; preds = %lor.lhs.false56
  %73 = load ptr, ptr %pGen.addr, align 8
  %pIn76 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %pIn76, align 8
  %incdec.ptr77 = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 1
  store ptr %incdec.ptr77, ptr %pIn76, align 8
  %75 = load ptr, ptr %pGen.addr, align 8
  %pIn78 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %75, i32 0, i32 12
  %76 = load ptr, ptr %pIn78, align 8
  %sData79 = getelementptr inbounds nuw %struct.SyToken, ptr %76, i32 0, i32 0
  store ptr %sData79, ptr %pName, align 8
  %77 = load ptr, ptr %pGen.addr, align 8
  %pVm80 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %77, i32 0, i32 0
  %78 = load ptr, ptr %pVm80, align 8
  %sAllocator81 = getelementptr inbounds nuw %struct.ph7_vm, ptr %78, i32 0, i32 0
  %79 = load ptr, ptr %pName, align 8
  %zString82 = getelementptr inbounds nuw %struct.SyString, ptr %79, i32 0, i32 0
  %80 = load ptr, ptr %zString82, align 8
  %81 = load ptr, ptr %pName, align 8
  %nByte83 = getelementptr inbounds nuw %struct.SyString, ptr %81, i32 0, i32 1
  %82 = load i32, ptr %nByte83, align 8
  %call84 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator81, ptr noundef %80, i32 noundef %82)
  store ptr %call84, ptr %zDup, align 8
  %83 = load ptr, ptr %zDup, align 8
  %cmp85 = icmp eq ptr %83, null
  br i1 %cmp85, label %if.then86, label %if.end87

if.then86:                                        ; preds = %if.end75
  br label %Mem

if.end87:                                         ; preds = %if.end75
  %84 = load ptr, ptr %zDup, align 8
  %sThis = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %sCatch, i32 0, i32 1
  %zString88 = getelementptr inbounds nuw %struct.SyString, ptr %sThis, i32 0, i32 0
  store ptr %84, ptr %zString88, align 8
  %85 = load ptr, ptr %pName, align 8
  %nByte89 = getelementptr inbounds nuw %struct.SyString, ptr %85, i32 0, i32 1
  %86 = load i32, ptr %nByte89, align 8
  %sThis90 = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %sCatch, i32 0, i32 1
  %nByte91 = getelementptr inbounds nuw %struct.SyString, ptr %sThis90, i32 0, i32 1
  store i32 %86, ptr %nByte91, align 8
  %87 = load ptr, ptr %pGen.addr, align 8
  %pIn92 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %87, i32 0, i32 12
  %88 = load ptr, ptr %pIn92, align 8
  %incdec.ptr93 = getelementptr inbounds nuw %struct.SyToken, ptr %88, i32 1
  store ptr %incdec.ptr93, ptr %pIn92, align 8
  %89 = load ptr, ptr %pGen.addr, align 8
  %pIn94 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %89, i32 0, i32 12
  %90 = load ptr, ptr %pIn94, align 8
  %91 = load ptr, ptr %pGen.addr, align 8
  %pEnd95 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %91, i32 0, i32 13
  %92 = load ptr, ptr %pEnd95, align 8
  %cmp96 = icmp uge ptr %90, %92
  br i1 %cmp96, label %if.then102, label %lor.lhs.false97

lor.lhs.false97:                                  ; preds = %if.end87
  %93 = load ptr, ptr %pGen.addr, align 8
  %pIn98 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %93, i32 0, i32 12
  %94 = load ptr, ptr %pIn98, align 8
  %nType99 = getelementptr inbounds nuw %struct.SyToken, ptr %94, i32 0, i32 1
  %95 = load i32, ptr %nType99, align 8
  %and100 = and i32 %95, 1024
  %cmp101 = icmp eq i32 %and100, 0
  br i1 %cmp101, label %if.then102, label %if.end115

if.then102:                                       ; preds = %lor.lhs.false97, %if.end87
  %96 = load ptr, ptr %pGen.addr, align 8
  %pIn103 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %96, i32 0, i32 12
  %97 = load ptr, ptr %pIn103, align 8
  store ptr %97, ptr %pToken, align 8
  %98 = load ptr, ptr %pToken, align 8
  %99 = load ptr, ptr %pGen.addr, align 8
  %pEnd104 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %99, i32 0, i32 13
  %100 = load ptr, ptr %pEnd104, align 8
  %cmp105 = icmp uge ptr %98, %100
  br i1 %cmp105, label %if.then106, label %if.end108

if.then106:                                       ; preds = %if.then102
  %101 = load ptr, ptr %pToken, align 8
  %incdec.ptr107 = getelementptr inbounds %struct.SyToken, ptr %101, i32 -1
  store ptr %incdec.ptr107, ptr %pToken, align 8
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %if.then102
  %102 = load ptr, ptr %pGen.addr, align 8
  %103 = load ptr, ptr %pToken, align 8
  %nLine109 = getelementptr inbounds nuw %struct.SyToken, ptr %103, i32 0, i32 2
  %104 = load i32, ptr %nLine109, align 4
  %105 = load ptr, ptr %pToken, align 8
  %sData110 = getelementptr inbounds nuw %struct.SyToken, ptr %105, i32 0, i32 0
  %call111 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %102, i32 noundef 1, i32 noundef %104, ptr noundef @.str.311, ptr noundef %sData110)
  store i32 %call111, ptr %rc, align 4
  %106 = load i32, ptr %rc, align 4
  %cmp112 = icmp eq i32 %106, -10
  br i1 %cmp112, label %if.then113, label %if.end114

if.then113:                                       ; preds = %if.end108
  store i32 -10, ptr %retval, align 4
  br label %return

if.end114:                                        ; preds = %if.end108
  store i32 -9, ptr %retval, align 4
  br label %return

if.end115:                                        ; preds = %lor.lhs.false97
  %107 = load ptr, ptr %pGen.addr, align 8
  %pIn116 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %107, i32 0, i32 12
  %108 = load ptr, ptr %pIn116, align 8
  %incdec.ptr117 = getelementptr inbounds nuw %struct.SyToken, ptr %108, i32 1
  store ptr %incdec.ptr117, ptr %pIn116, align 8
  %109 = load ptr, ptr %pGen.addr, align 8
  %110 = load ptr, ptr %pGen.addr, align 8
  %pVm118 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %110, i32 0, i32 0
  %111 = load ptr, ptr %pVm118, align 8
  %call119 = call i32 @PH7_VmInstrLength(ptr noundef %111)
  %call120 = call i32 @GenStateEnterBlock(ptr noundef %109, i32 noundef 256, i32 noundef %call119, ptr noundef null, ptr noundef %pCatch)
  store i32 %call120, ptr %rc, align 4
  %112 = load i32, ptr %rc, align 4
  %cmp121 = icmp ne i32 %112, 0
  br i1 %cmp121, label %if.then122, label %if.end123

if.then122:                                       ; preds = %if.end115
  store i32 -10, ptr %retval, align 4
  br label %return

if.end123:                                        ; preds = %if.end115
  %113 = load ptr, ptr %pGen.addr, align 8
  %pVm124 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %113, i32 0, i32 0
  %114 = load ptr, ptr %pVm124, align 8
  %call125 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %114)
  store ptr %call125, ptr %pInstrContainer, align 8
  %115 = load ptr, ptr %pGen.addr, align 8
  %pVm126 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %115, i32 0, i32 0
  %116 = load ptr, ptr %pVm126, align 8
  %sByteCode127 = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %sCatch, i32 0, i32 2
  %call128 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %116, ptr noundef %sByteCode127)
  %117 = load ptr, ptr %pGen.addr, align 8
  %call129 = call i32 @PH7_CompileBlock(ptr noundef %117, i32 noundef 0)
  %118 = load ptr, ptr %pCatch, align 8
  %119 = load ptr, ptr %pGen.addr, align 8
  %pVm130 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %119, i32 0, i32 0
  %120 = load ptr, ptr %pVm130, align 8
  %call131 = call i32 @PH7_VmInstrLength(ptr noundef %120)
  %call132 = call i32 @GenStateFixJumps(ptr noundef %118, i32 noundef -1, i32 noundef %call131)
  %121 = load ptr, ptr %pGen.addr, align 8
  %pVm133 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %pVm133, align 8
  %call134 = call i32 @PH7_VmEmitInstr(ptr noundef %122, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null)
  %123 = load ptr, ptr %pGen.addr, align 8
  %call135 = call i32 @GenStateLeaveBlock(ptr noundef %123, ptr noundef null)
  %124 = load ptr, ptr %pGen.addr, align 8
  %pVm136 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %124, i32 0, i32 0
  %125 = load ptr, ptr %pVm136, align 8
  %126 = load ptr, ptr %pInstrContainer, align 8
  %call137 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %125, ptr noundef %126)
  %127 = load ptr, ptr %pException.addr, align 8
  %sEntry = getelementptr inbounds nuw %struct.ph7_exception, ptr %127, i32 0, i32 1
  %call138 = call i32 @SySetPut(ptr noundef %sEntry, ptr noundef %sCatch)
  store i32 %call138, ptr %rc, align 4
  %128 = load i32, ptr %rc, align 4
  %cmp139 = icmp ne i32 %128, 0
  br i1 %cmp139, label %if.then140, label %if.end141

if.then140:                                       ; preds = %if.end123
  br label %Mem

if.end141:                                        ; preds = %if.end123
  store i32 0, ptr %retval, align 4
  br label %return

Mem:                                              ; preds = %if.then140, %if.then86, %if.then35
  %129 = load ptr, ptr %pGen.addr, align 8
  %130 = load i32, ptr %nLine, align 4
  %call142 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %129, i32 noundef 1, i32 noundef %130, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

return:                                           ; preds = %Mem, %if.end141, %if.then122, %if.end114, %if.then113, %if.end74, %if.then73, %if.end25, %if.then24
  %131 = load i32, ptr %retval, align 4
  ret i32 %131
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
