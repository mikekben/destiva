; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_case_expr = type { %struct.SySet, i32 }
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
%struct.ph7_switch = type { %struct.SySet, i32, i32 }

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.298 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.299 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.300 = external hidden unnamed_addr constant [30 x i8], align 1
@.str.301 = external hidden unnamed_addr constant [40 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateFixJumps(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_DelimitNestedTokens(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateEnterBlock(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileSwitch(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pSwitchBlock = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pSwitch = alloca ptr, align 8
  %nToken = alloca i32, align 4
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %nKwrd = alloca i32, align 4
  %sCase = alloca %struct.ph7_case_expr, align 8
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
  %and = and i32 %11, 512
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then, label %if.end9

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.298)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp7 = icmp eq i32 %14, -10
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %Synchronize

if.end9:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn10, align 8
  %incdec.ptr11 = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr11, ptr %pIn10, align 8
  store ptr null, ptr %pEnd, align 8
  %17 = load ptr, ptr %pGen.addr, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm, align 8
  %call12 = call i32 @PH7_VmInstrLength(ptr noundef %19)
  %call13 = call i32 @GenStateEnterBlock(ptr noundef %17, i32 noundef 513, i32 noundef %call12, ptr noundef null, ptr noundef %pSwitchBlock)
  store i32 %call13, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp14 = icmp ne i32 %20, 0
  br i1 %cmp14, label %if.then15, label %if.end16

if.then15:                                        ; preds = %if.end9
  store i32 -10, ptr %retval, align 4
  br label %return

if.end16:                                         ; preds = %if.end9
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn17, align 8
  %23 = load ptr, ptr %pGen.addr, align 8
  %pEnd18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 13
  %24 = load ptr, ptr %pEnd18, align 8
  call void @PH7_DelimitNestedTokens(ptr noundef %22, ptr noundef %24, i32 noundef 512, i32 noundef 1024, ptr noundef %pEnd)
  %25 = load ptr, ptr %pGen.addr, align 8
  %pIn19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 12
  %26 = load ptr, ptr %pIn19, align 8
  %27 = load ptr, ptr %pEnd, align 8
  %cmp20 = icmp eq ptr %26, %27
  br i1 %cmp20, label %if.then24, label %lor.lhs.false21

lor.lhs.false21:                                  ; preds = %if.end16
  %28 = load ptr, ptr %pEnd, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pEnd22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 13
  %30 = load ptr, ptr %pEnd22, align 8
  %cmp23 = icmp uge ptr %28, %30
  br i1 %cmp23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %lor.lhs.false21, %if.end16
  %31 = load ptr, ptr %pGen.addr, align 8
  %32 = load i32, ptr %nLine, align 4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %31, i32 noundef 1, i32 noundef %32, ptr noundef @.str.299)
  store i32 %call25, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %33, -10
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  store i32 -10, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then24
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %lor.lhs.false21
  %34 = load ptr, ptr %pGen.addr, align 8
  %pEnd30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 13
  %35 = load ptr, ptr %pEnd30, align 8
  store ptr %35, ptr %pTmp, align 8
  %36 = load ptr, ptr %pEnd, align 8
  %37 = load ptr, ptr %pGen.addr, align 8
  %pEnd31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 13
  store ptr %36, ptr %pEnd31, align 8
  %38 = load ptr, ptr %pGen.addr, align 8
  %call32 = call i32 @PH7_CompileExpr(ptr noundef %38, i32 noundef 0, ptr noundef null)
  store i32 %call32, ptr %rc, align 4
  %39 = load i32, ptr %rc, align 4
  %cmp33 = icmp eq i32 %39, -10
  br i1 %cmp33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end29
  store i32 -10, ptr %retval, align 4
  br label %return

if.end35:                                         ; preds = %if.end29
  br label %while.cond

while.cond:                                       ; preds = %if.end44, %if.end35
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn36 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pIn36, align 8
  %42 = load ptr, ptr %pEnd, align 8
  %cmp37 = icmp ult ptr %41, %42
  br i1 %cmp37, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load ptr, ptr %pGen.addr, align 8
  %44 = load ptr, ptr %pGen.addr, align 8
  %pIn38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 12
  %45 = load ptr, ptr %pIn38, align 8
  %nLine39 = getelementptr inbounds nuw %struct.SyToken, ptr %45, i32 0, i32 2
  %46 = load i32, ptr %nLine39, align 4
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn40, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %48, i32 0, i32 0
  %call41 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %43, i32 noundef 1, i32 noundef %46, ptr noundef @.str.300, ptr noundef %sData)
  store i32 %call41, ptr %rc, align 4
  %49 = load i32, ptr %rc, align 4
  %cmp42 = icmp eq i32 %49, -10
  br i1 %cmp42, label %if.then43, label %if.end44

if.then43:                                        ; preds = %while.body
  store i32 -10, ptr %retval, align 4
  br label %return

if.end44:                                         ; preds = %while.body
  %50 = load ptr, ptr %pGen.addr, align 8
  %pIn45 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 12
  %51 = load ptr, ptr %pIn45, align 8
  %incdec.ptr46 = getelementptr inbounds nuw %struct.SyToken, ptr %51, i32 1
  store ptr %incdec.ptr46, ptr %pIn45, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %while.cond
  %52 = load ptr, ptr %pEnd, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %52, i64 1
  %53 = load ptr, ptr %pGen.addr, align 8
  %pIn47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %53, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn47, align 8
  %54 = load ptr, ptr %pTmp, align 8
  %55 = load ptr, ptr %pGen.addr, align 8
  %pEnd48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %55, i32 0, i32 13
  store ptr %54, ptr %pEnd48, align 8
  %56 = load ptr, ptr %pGen.addr, align 8
  %pIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 12
  %57 = load ptr, ptr %pIn49, align 8
  %58 = load ptr, ptr %pGen.addr, align 8
  %pEnd50 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 13
  %59 = load ptr, ptr %pEnd50, align 8
  %cmp51 = icmp uge ptr %57, %59
  br i1 %cmp51, label %if.then62, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %while.end
  %60 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %60, i32 0, i32 12
  %61 = load ptr, ptr %pIn53, align 8
  %arrayidx54 = getelementptr inbounds %struct.SyToken, ptr %61, i64 1
  %62 = load ptr, ptr %pGen.addr, align 8
  %pEnd55 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 13
  %63 = load ptr, ptr %pEnd55, align 8
  %cmp56 = icmp uge ptr %arrayidx54, %63
  br i1 %cmp56, label %if.then62, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false52
  %64 = load ptr, ptr %pGen.addr, align 8
  %pIn58 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %64, i32 0, i32 12
  %65 = load ptr, ptr %pIn58, align 8
  %nType59 = getelementptr inbounds nuw %struct.SyToken, ptr %65, i32 0, i32 1
  %66 = load i32, ptr %nType59, align 8
  %and60 = and i32 %66, 1048640
  %cmp61 = icmp eq i32 %and60, 0
  br i1 %cmp61, label %if.then62, label %if.end75

if.then62:                                        ; preds = %lor.lhs.false57, %lor.lhs.false52, %while.end
  %67 = load ptr, ptr %pGen.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %pIn63, align 8
  store ptr %68, ptr %pTmp, align 8
  %69 = load ptr, ptr %pTmp, align 8
  %70 = load ptr, ptr %pGen.addr, align 8
  %pEnd64 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 13
  %71 = load ptr, ptr %pEnd64, align 8
  %cmp65 = icmp uge ptr %69, %71
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %if.then62
  %72 = load ptr, ptr %pTmp, align 8
  %incdec.ptr67 = getelementptr inbounds %struct.SyToken, ptr %72, i32 -1
  store ptr %incdec.ptr67, ptr %pTmp, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.then62
  %73 = load ptr, ptr %pGen.addr, align 8
  %74 = load ptr, ptr %pTmp, align 8
  %nLine69 = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %nLine69, align 4
  %76 = load ptr, ptr %pTmp, align 8
  %sData70 = getelementptr inbounds nuw %struct.SyToken, ptr %76, i32 0, i32 0
  %call71 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %73, i32 noundef 1, i32 noundef %75, ptr noundef @.str.300, ptr noundef %sData70)
  store i32 %call71, ptr %rc, align 4
  %77 = load i32, ptr %rc, align 4
  %cmp72 = icmp eq i32 %77, -10
  br i1 %cmp72, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end68
  store i32 -10, ptr %retval, align 4
  br label %return

if.end74:                                         ; preds = %if.end68
  br label %Synchronize

if.end75:                                         ; preds = %lor.lhs.false57
  %78 = load ptr, ptr %pGen.addr, align 8
  %pIn76 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 12
  %79 = load ptr, ptr %pIn76, align 8
  %nType77 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 0, i32 1
  %80 = load i32, ptr %nType77, align 8
  %and78 = and i32 %80, 1048576
  %tobool = icmp ne i32 %and78, 0
  br i1 %tobool, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end75
  store i32 4, ptr %nToken, align 4
  br label %if.end80

if.else:                                          ; preds = %if.end75
  store i32 128, ptr %nToken, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.else, %if.then79
  %81 = load ptr, ptr %pGen.addr, align 8
  %pIn81 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %81, i32 0, i32 12
  %82 = load ptr, ptr %pIn81, align 8
  %incdec.ptr82 = getelementptr inbounds nuw %struct.SyToken, ptr %82, i32 1
  store ptr %incdec.ptr82, ptr %pIn81, align 8
  %83 = load ptr, ptr %pGen.addr, align 8
  %pVm83 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %83, i32 0, i32 0
  %84 = load ptr, ptr %pVm83, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %84, i32 0, i32 0
  %call84 = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef 48)
  store ptr %call84, ptr %pSwitch, align 8
  %85 = load ptr, ptr %pSwitch, align 8
  %cmp85 = icmp eq ptr %85, null
  br i1 %cmp85, label %if.then86, label %if.end90

if.then86:                                        ; preds = %if.end80
  %86 = load ptr, ptr %pGen.addr, align 8
  %87 = load ptr, ptr %pGen.addr, align 8
  %pIn87 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %87, i32 0, i32 12
  %88 = load ptr, ptr %pIn87, align 8
  %nLine88 = getelementptr inbounds nuw %struct.SyToken, ptr %88, i32 0, i32 2
  %89 = load i32, ptr %nLine88, align 4
  %call89 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %86, i32 noundef 1, i32 noundef %89, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end90:                                         ; preds = %if.end80
  %90 = load ptr, ptr %pSwitch, align 8
  call void @SyZero(ptr noundef %90, i32 noundef 48)
  %91 = load ptr, ptr %pSwitch, align 8
  %aCaseExpr = getelementptr inbounds nuw %struct.ph7_switch, ptr %91, i32 0, i32 0
  %92 = load ptr, ptr %pGen.addr, align 8
  %pVm91 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %92, i32 0, i32 0
  %93 = load ptr, ptr %pVm91, align 8
  %sAllocator92 = getelementptr inbounds nuw %struct.ph7_vm, ptr %93, i32 0, i32 0
  %call93 = call i32 @SySetInit(ptr noundef %aCaseExpr, ptr noundef %sAllocator92, i32 noundef 48)
  %94 = load ptr, ptr %pGen.addr, align 8
  %pVm94 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %94, i32 0, i32 0
  %95 = load ptr, ptr %pVm94, align 8
  %96 = load ptr, ptr %pSwitch, align 8
  %call95 = call i32 @PH7_VmEmitInstr(ptr noundef %95, i32 noundef 83, i32 noundef 0, i32 noundef 0, ptr noundef %96, ptr noundef null)
  br label %for.cond

for.cond:                                         ; preds = %if.end205, %if.end90
  %97 = load ptr, ptr %pGen.addr, align 8
  %pIn96 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %97, i32 0, i32 12
  %98 = load ptr, ptr %pIn96, align 8
  %99 = load ptr, ptr %pGen.addr, align 8
  %pEnd97 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %99, i32 0, i32 13
  %100 = load ptr, ptr %pEnd97, align 8
  %cmp98 = icmp uge ptr %98, %100
  br i1 %cmp98, label %if.then99, label %if.end100

if.then99:                                        ; preds = %for.cond
  br label %for.end

if.end100:                                        ; preds = %for.cond
  %101 = load ptr, ptr %pGen.addr, align 8
  %pIn101 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %101, i32 0, i32 12
  %102 = load ptr, ptr %pIn101, align 8
  %nType102 = getelementptr inbounds nuw %struct.SyToken, ptr %102, i32 0, i32 1
  %103 = load i32, ptr %nType102, align 8
  %and103 = and i32 %103, 4
  %cmp104 = icmp eq i32 %and103, 0
  br i1 %cmp104, label %if.then105, label %if.end122

if.then105:                                       ; preds = %if.end100
  %104 = load i32, ptr %nToken, align 4
  %cmp106 = icmp ne i32 %104, 128
  br i1 %cmp106, label %if.then112, label %lor.lhs.false107

lor.lhs.false107:                                 ; preds = %if.then105
  %105 = load ptr, ptr %pGen.addr, align 8
  %pIn108 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %105, i32 0, i32 12
  %106 = load ptr, ptr %pIn108, align 8
  %nType109 = getelementptr inbounds nuw %struct.SyToken, ptr %106, i32 0, i32 1
  %107 = load i32, ptr %nType109, align 8
  %and110 = and i32 %107, 128
  %cmp111 = icmp eq i32 %and110, 0
  br i1 %cmp111, label %if.then112, label %if.end121

if.then112:                                       ; preds = %lor.lhs.false107, %if.then105
  %108 = load ptr, ptr %pGen.addr, align 8
  %109 = load ptr, ptr %pGen.addr, align 8
  %pIn113 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %109, i32 0, i32 12
  %110 = load ptr, ptr %pIn113, align 8
  %nLine114 = getelementptr inbounds nuw %struct.SyToken, ptr %110, i32 0, i32 2
  %111 = load i32, ptr %nLine114, align 4
  %112 = load ptr, ptr %pGen.addr, align 8
  %pIn115 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %112, i32 0, i32 12
  %113 = load ptr, ptr %pIn115, align 8
  %sData116 = getelementptr inbounds nuw %struct.SyToken, ptr %113, i32 0, i32 0
  %call117 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %108, i32 noundef 1, i32 noundef %111, ptr noundef @.str.300, ptr noundef %sData116)
  store i32 %call117, ptr %rc, align 4
  %114 = load i32, ptr %rc, align 4
  %cmp118 = icmp eq i32 %114, -10
  br i1 %cmp118, label %if.then119, label %if.end120

if.then119:                                       ; preds = %if.then112
  store i32 -10, ptr %retval, align 4
  br label %return

if.end120:                                        ; preds = %if.then112
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %lor.lhs.false107
  br label %for.end

if.end122:                                        ; preds = %if.end100
  %115 = load ptr, ptr %pGen.addr, align 8
  %pIn123 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %115, i32 0, i32 12
  %116 = load ptr, ptr %pIn123, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %116, i32 0, i32 3
  %117 = load ptr, ptr %pUserData, align 8
  %118 = ptrtoint ptr %117 to i64
  %conv = trunc i64 %118 to i32
  store i32 %conv, ptr %nKwrd, align 4
  %119 = load i32, ptr %nKwrd, align 4
  %cmp124 = icmp eq i32 %119, 2
  br i1 %cmp124, label %if.then126, label %if.end140

if.then126:                                       ; preds = %if.end122
  %120 = load i32, ptr %nToken, align 4
  %cmp127 = icmp ne i32 %120, 4
  br i1 %cmp127, label %if.then129, label %if.end139

if.then129:                                       ; preds = %if.then126
  %121 = load ptr, ptr %pGen.addr, align 8
  %122 = load ptr, ptr %pGen.addr, align 8
  %pIn130 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %122, i32 0, i32 12
  %123 = load ptr, ptr %pIn130, align 8
  %nLine131 = getelementptr inbounds nuw %struct.SyToken, ptr %123, i32 0, i32 2
  %124 = load i32, ptr %nLine131, align 4
  %125 = load ptr, ptr %pGen.addr, align 8
  %pIn132 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %125, i32 0, i32 12
  %126 = load ptr, ptr %pIn132, align 8
  %sData133 = getelementptr inbounds nuw %struct.SyToken, ptr %126, i32 0, i32 0
  %call134 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %121, i32 noundef 1, i32 noundef %124, ptr noundef @.str.300, ptr noundef %sData133)
  store i32 %call134, ptr %rc, align 4
  %127 = load i32, ptr %rc, align 4
  %cmp135 = icmp eq i32 %127, -10
  br i1 %cmp135, label %if.then137, label %if.end138

if.then137:                                       ; preds = %if.then129
  store i32 -10, ptr %retval, align 4
  br label %return

if.end138:                                        ; preds = %if.then129
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then126
  br label %for.end

if.end140:                                        ; preds = %if.end122
  %128 = load i32, ptr %nKwrd, align 4
  %cmp141 = icmp eq i32 %128, 31
  br i1 %cmp141, label %if.then143, label %if.else168

if.then143:                                       ; preds = %if.end140
  %129 = load ptr, ptr %pSwitch, align 8
  %nDefault = getelementptr inbounds nuw %struct.ph7_switch, ptr %129, i32 0, i32 2
  %130 = load i32, ptr %nDefault, align 4
  %cmp144 = icmp ugt i32 %130, 0
  br i1 %cmp144, label %if.then146, label %if.end154

if.then146:                                       ; preds = %if.then143
  %131 = load ptr, ptr %pGen.addr, align 8
  %132 = load ptr, ptr %pGen.addr, align 8
  %pIn147 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %132, i32 0, i32 12
  %133 = load ptr, ptr %pIn147, align 8
  %nLine148 = getelementptr inbounds nuw %struct.SyToken, ptr %133, i32 0, i32 2
  %134 = load i32, ptr %nLine148, align 4
  %call149 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %131, i32 noundef 2, i32 noundef %134, ptr noundef @.str.301)
  store i32 %call149, ptr %rc, align 4
  %135 = load i32, ptr %rc, align 4
  %cmp150 = icmp eq i32 %135, -10
  br i1 %cmp150, label %if.then152, label %if.end153

if.then152:                                       ; preds = %if.then146
  store i32 -10, ptr %retval, align 4
  br label %return

if.end153:                                        ; preds = %if.then146
  br label %if.end154

if.end154:                                        ; preds = %if.end153, %if.then143
  %136 = load ptr, ptr %pGen.addr, align 8
  %pIn155 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %136, i32 0, i32 12
  %137 = load ptr, ptr %pIn155, align 8
  %incdec.ptr156 = getelementptr inbounds nuw %struct.SyToken, ptr %137, i32 1
  store ptr %incdec.ptr156, ptr %pIn155, align 8
  %138 = load ptr, ptr %pGen.addr, align 8
  %139 = load i32, ptr %nToken, align 4
  %140 = load ptr, ptr %pSwitch, align 8
  %nDefault157 = getelementptr inbounds nuw %struct.ph7_switch, ptr %140, i32 0, i32 2
  %call158 = call i32 @GenStateCompileSwitchBlock(ptr noundef %138, i32 noundef %139, ptr noundef %nDefault157)
  store i32 %call158, ptr %rc, align 4
  %141 = load i32, ptr %rc, align 4
  %cmp159 = icmp eq i32 %141, -10
  br i1 %cmp159, label %if.then161, label %if.else162

if.then161:                                       ; preds = %if.end154
  store i32 -10, ptr %retval, align 4
  br label %return

if.else162:                                       ; preds = %if.end154
  %142 = load i32, ptr %rc, align 4
  %cmp163 = icmp eq i32 %142, -18
  br i1 %cmp163, label %if.then165, label %if.end166

if.then165:                                       ; preds = %if.else162
  br label %for.end

if.end166:                                        ; preds = %if.else162
  br label %if.end167

if.end167:                                        ; preds = %if.end166
  br label %if.end205

if.else168:                                       ; preds = %if.end140
  %143 = load i32, ptr %nKwrd, align 4
  %cmp169 = icmp eq i32 %143, 17
  br i1 %cmp169, label %if.then171, label %if.else194

if.then171:                                       ; preds = %if.else168
  %144 = load ptr, ptr %pGen.addr, align 8
  %pIn172 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %144, i32 0, i32 12
  %145 = load ptr, ptr %pIn172, align 8
  %incdec.ptr173 = getelementptr inbounds nuw %struct.SyToken, ptr %145, i32 1
  store ptr %incdec.ptr173, ptr %pIn172, align 8
  %aByteCode = getelementptr inbounds nuw %struct.ph7_case_expr, ptr %sCase, i32 0, i32 0
  %146 = load ptr, ptr %pGen.addr, align 8
  %pVm174 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %146, i32 0, i32 0
  %147 = load ptr, ptr %pVm174, align 8
  %sAllocator175 = getelementptr inbounds nuw %struct.ph7_vm, ptr %147, i32 0, i32 0
  %call176 = call i32 @SySetInit(ptr noundef %aByteCode, ptr noundef %sAllocator175, i32 noundef 24)
  %148 = load ptr, ptr %pGen.addr, align 8
  %call177 = call i32 @GenStateCompileCaseExpr(ptr noundef %148, ptr noundef %sCase)
  store i32 %call177, ptr %rc, align 4
  %149 = load i32, ptr %rc, align 4
  %cmp178 = icmp eq i32 %149, -10
  br i1 %cmp178, label %if.then180, label %if.end181

if.then180:                                       ; preds = %if.then171
  store i32 -10, ptr %retval, align 4
  br label %return

if.end181:                                        ; preds = %if.then171
  %150 = load ptr, ptr %pGen.addr, align 8
  %151 = load i32, ptr %nToken, align 4
  %nStart = getelementptr inbounds nuw %struct.ph7_case_expr, ptr %sCase, i32 0, i32 1
  %call182 = call i32 @GenStateCompileSwitchBlock(ptr noundef %150, i32 noundef %151, ptr noundef %nStart)
  store i32 %call182, ptr %rc, align 4
  %152 = load ptr, ptr %pSwitch, align 8
  %aCaseExpr183 = getelementptr inbounds nuw %struct.ph7_switch, ptr %152, i32 0, i32 0
  %call184 = call i32 @SySetPut(ptr noundef %aCaseExpr183, ptr noundef %sCase)
  %153 = load i32, ptr %rc, align 4
  %cmp185 = icmp eq i32 %153, -10
  br i1 %cmp185, label %if.then187, label %if.else188

if.then187:                                       ; preds = %if.end181
  store i32 -10, ptr %retval, align 4
  br label %return

if.else188:                                       ; preds = %if.end181
  %154 = load i32, ptr %rc, align 4
  %cmp189 = icmp eq i32 %154, -18
  br i1 %cmp189, label %if.then191, label %if.end192

if.then191:                                       ; preds = %if.else188
  br label %for.end

if.end192:                                        ; preds = %if.else188
  br label %if.end193

if.end193:                                        ; preds = %if.end192
  br label %if.end204

if.else194:                                       ; preds = %if.else168
  %155 = load ptr, ptr %pGen.addr, align 8
  %156 = load ptr, ptr %pGen.addr, align 8
  %pIn195 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %156, i32 0, i32 12
  %157 = load ptr, ptr %pIn195, align 8
  %nLine196 = getelementptr inbounds nuw %struct.SyToken, ptr %157, i32 0, i32 2
  %158 = load i32, ptr %nLine196, align 4
  %159 = load ptr, ptr %pGen.addr, align 8
  %pIn197 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %159, i32 0, i32 12
  %160 = load ptr, ptr %pIn197, align 8
  %sData198 = getelementptr inbounds nuw %struct.SyToken, ptr %160, i32 0, i32 0
  %call199 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %155, i32 noundef 1, i32 noundef %158, ptr noundef @.str.300, ptr noundef %sData198)
  store i32 %call199, ptr %rc, align 4
  %161 = load i32, ptr %rc, align 4
  %cmp200 = icmp eq i32 %161, -10
  br i1 %cmp200, label %if.then202, label %if.end203

if.then202:                                       ; preds = %if.else194
  store i32 -10, ptr %retval, align 4
  br label %return

if.end203:                                        ; preds = %if.else194
  br label %for.end

if.end204:                                        ; preds = %if.end193
  br label %if.end205

if.end205:                                        ; preds = %if.end204, %if.end167
  br label %for.cond

for.end:                                          ; preds = %if.end203, %if.then191, %if.then165, %if.end139, %if.end121, %if.then99
  %162 = load ptr, ptr %pGen.addr, align 8
  %pVm206 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %162, i32 0, i32 0
  %163 = load ptr, ptr %pVm206, align 8
  %call207 = call i32 @PH7_VmInstrLength(ptr noundef %163)
  %164 = load ptr, ptr %pSwitch, align 8
  %nOut = getelementptr inbounds nuw %struct.ph7_switch, ptr %164, i32 0, i32 1
  store i32 %call207, ptr %nOut, align 8
  %165 = load ptr, ptr %pSwitchBlock, align 8
  %166 = load ptr, ptr %pGen.addr, align 8
  %pVm208 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %166, i32 0, i32 0
  %167 = load ptr, ptr %pVm208, align 8
  %call209 = call i32 @PH7_VmInstrLength(ptr noundef %167)
  %call210 = call i32 @GenStateFixJumps(ptr noundef %165, i32 noundef -1, i32 noundef %call209)
  %168 = load ptr, ptr %pGen.addr, align 8
  %call211 = call i32 @GenStateLeaveBlock(ptr noundef %168, ptr noundef null)
  %169 = load ptr, ptr %pGen.addr, align 8
  %pIn212 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %169, i32 0, i32 12
  %170 = load ptr, ptr %pIn212, align 8
  %171 = load ptr, ptr %pGen.addr, align 8
  %pEnd213 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %171, i32 0, i32 13
  %172 = load ptr, ptr %pEnd213, align 8
  %cmp214 = icmp ult ptr %170, %172
  br i1 %cmp214, label %if.then216, label %if.end219

if.then216:                                       ; preds = %for.end
  %173 = load ptr, ptr %pGen.addr, align 8
  %pIn217 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %173, i32 0, i32 12
  %174 = load ptr, ptr %pIn217, align 8
  %incdec.ptr218 = getelementptr inbounds nuw %struct.SyToken, ptr %174, i32 1
  store ptr %incdec.ptr218, ptr %pIn217, align 8
  br label %if.end219

if.end219:                                        ; preds = %if.then216, %for.end
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end74, %if.end
  br label %while.cond220

while.cond220:                                    ; preds = %while.body230, %Synchronize
  %175 = load ptr, ptr %pGen.addr, align 8
  %pIn221 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %175, i32 0, i32 12
  %176 = load ptr, ptr %pIn221, align 8
  %177 = load ptr, ptr %pGen.addr, align 8
  %pEnd222 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %177, i32 0, i32 13
  %178 = load ptr, ptr %pEnd222, align 8
  %cmp223 = icmp ult ptr %176, %178
  br i1 %cmp223, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond220
  %179 = load ptr, ptr %pGen.addr, align 8
  %pIn225 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %179, i32 0, i32 12
  %180 = load ptr, ptr %pIn225, align 8
  %nType226 = getelementptr inbounds nuw %struct.SyToken, ptr %180, i32 0, i32 1
  %181 = load i32, ptr %nType226, align 8
  %and227 = and i32 %181, 262144
  %cmp228 = icmp eq i32 %and227, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond220
  %182 = phi i1 [ false, %while.cond220 ], [ %cmp228, %land.rhs ]
  br i1 %182, label %while.body230, label %while.end233

while.body230:                                    ; preds = %land.end
  %183 = load ptr, ptr %pGen.addr, align 8
  %pIn231 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %183, i32 0, i32 12
  %184 = load ptr, ptr %pIn231, align 8
  %incdec.ptr232 = getelementptr inbounds nuw %struct.SyToken, ptr %184, i32 1
  store ptr %incdec.ptr232, ptr %pIn231, align 8
  br label %while.cond220, !llvm.loop !8

while.end233:                                     ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end233, %if.end219, %if.then202, %if.then187, %if.then180, %if.then161, %if.then152, %if.then137, %if.then119, %if.then86, %if.then73, %if.then43, %if.then34, %if.then27, %if.then15, %if.then8
  %185 = load i32, ptr %retval, align 4
  ret i32 %185
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileSwitchBlock(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateCompileCaseExpr(ptr noundef, ptr noundef) #0

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
