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
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_foreach_info = type { %struct.SyString, %struct.SyString, i32, %struct.SySet }
%struct.VmInstr = type { i8, i32, i32, ptr }

@.str.224 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.285 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.286 = external hidden unnamed_addr constant [28 x i8], align 1
@.str.287 = external hidden unnamed_addr constant [41 x i8], align 1
@.str.288 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.289 = external hidden unnamed_addr constant [37 x i8], align 1
@.str.290 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.291 = external hidden unnamed_addr constant [24 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

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
declare hidden i32 @PH7_CompileBlock(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateLeaveBlock(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmPopInstr(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileForeach(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pCur = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %pForeachBlock = alloca ptr, align 8
  %pInfo = alloca ptr, align 8
  %nFalseJump = alloca i32, align 4
  %pInstr = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %nKeywrd = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pEnd, align 8
  store ptr null, ptr %pForeachBlock, align 8
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
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.285)
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
  %17 = load ptr, ptr %pGen.addr, align 8
  %18 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %pVm, align 8
  %call12 = call i32 @PH7_VmInstrLength(ptr noundef %19)
  %call13 = call i32 @GenStateEnterBlock(ptr noundef %17, i32 noundef 1, i32 noundef %call12, ptr noundef null, ptr noundef %pForeachBlock)
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
  br i1 %cmp23, label %if.then24, label %if.end37

if.then24:                                        ; preds = %lor.lhs.false21, %if.end16
  %31 = load ptr, ptr %pGen.addr, align 8
  %32 = load i32, ptr %nLine, align 4
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %31, i32 noundef 1, i32 noundef %32, ptr noundef @.str.286)
  store i32 %call25, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp26 = icmp eq i32 %33, -10
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.then24
  store i32 -10, ptr %retval, align 4
  br label %return

if.end28:                                         ; preds = %if.then24
  %34 = load ptr, ptr %pEnd, align 8
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  store ptr %34, ptr %pIn29, align 8
  %36 = load ptr, ptr %pGen.addr, align 8
  %pIn30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 12
  %37 = load ptr, ptr %pIn30, align 8
  %38 = load ptr, ptr %pGen.addr, align 8
  %pEnd31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %38, i32 0, i32 13
  %39 = load ptr, ptr %pEnd31, align 8
  %cmp32 = icmp ult ptr %37, %39
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end28
  %40 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 12
  %41 = load ptr, ptr %pIn34, align 8
  %incdec.ptr35 = getelementptr inbounds nuw %struct.SyToken, ptr %41, i32 1
  store ptr %incdec.ptr35, ptr %pIn34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end28
  store i32 0, ptr %retval, align 4
  br label %return

if.end37:                                         ; preds = %lor.lhs.false21
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn38 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pIn38, align 8
  store ptr %43, ptr %pCur, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end47, %if.end37
  %44 = load ptr, ptr %pCur, align 8
  %45 = load ptr, ptr %pEnd, align 8
  %cmp39 = icmp ult ptr %44, %45
  br i1 %cmp39, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %46 = load ptr, ptr %pCur, align 8
  %nType40 = getelementptr inbounds nuw %struct.SyToken, ptr %46, i32 0, i32 1
  %47 = load i32, ptr %nType40, align 8
  %and41 = and i32 %47, 4
  %tobool = icmp ne i32 %and41, 0
  br i1 %tobool, label %if.then42, label %if.end47

if.then42:                                        ; preds = %while.body
  %48 = load ptr, ptr %pCur, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %48, i32 0, i32 3
  %49 = load ptr, ptr %pUserData, align 8
  %50 = ptrtoint ptr %49 to i64
  %conv = trunc i64 %50 to i32
  store i32 %conv, ptr %nKeywrd, align 4
  %51 = load i32, ptr %nKeywrd, align 4
  %cmp43 = icmp eq i32 %51, 33
  br i1 %cmp43, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then42
  br label %while.end

if.end46:                                         ; preds = %if.then42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %while.body
  %52 = load ptr, ptr %pCur, align 8
  %incdec.ptr48 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 1
  store ptr %incdec.ptr48, ptr %pCur, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then45, %while.cond
  %53 = load ptr, ptr %pCur, align 8
  %54 = load ptr, ptr %pGen.addr, align 8
  %pIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %pIn49, align 8
  %cmp50 = icmp ule ptr %53, %55
  br i1 %cmp50, label %if.then52, label %if.end60

if.then52:                                        ; preds = %while.end
  %56 = load ptr, ptr %pGen.addr, align 8
  %57 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %57, i32 0, i32 12
  %58 = load ptr, ptr %pIn53, align 8
  %nLine54 = getelementptr inbounds nuw %struct.SyToken, ptr %58, i32 0, i32 2
  %59 = load i32, ptr %nLine54, align 4
  %call55 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %56, i32 noundef 1, i32 noundef %59, ptr noundef @.str.287)
  store i32 %call55, ptr %rc, align 4
  %60 = load i32, ptr %rc, align 4
  %cmp56 = icmp eq i32 %60, -10
  br i1 %cmp56, label %if.then58, label %if.end59

if.then58:                                        ; preds = %if.then52
  store i32 -10, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.then52
  br label %Synchronize

if.end60:                                         ; preds = %while.end
  %61 = load ptr, ptr %pGen.addr, align 8
  %pEnd61 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 13
  %62 = load ptr, ptr %pEnd61, align 8
  store ptr %62, ptr %pTmp, align 8
  %63 = load ptr, ptr %pCur, align 8
  %64 = load ptr, ptr %pGen.addr, align 8
  %pEnd62 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %64, i32 0, i32 13
  store ptr %63, ptr %pEnd62, align 8
  %65 = load ptr, ptr %pGen.addr, align 8
  %call63 = call i32 @PH7_CompileExpr(ptr noundef %65, i32 noundef 0, ptr noundef null)
  store i32 %call63, ptr %rc, align 4
  %66 = load i32, ptr %rc, align 4
  %cmp64 = icmp eq i32 %66, -10
  br i1 %cmp64, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.end60
  store i32 -10, ptr %retval, align 4
  br label %return

if.end67:                                         ; preds = %if.end60
  br label %while.cond68

while.cond68:                                     ; preds = %if.end80, %if.end67
  %67 = load ptr, ptr %pGen.addr, align 8
  %pIn69 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %pIn69, align 8
  %69 = load ptr, ptr %pCur, align 8
  %cmp70 = icmp ult ptr %68, %69
  br i1 %cmp70, label %while.body72, label %while.end83

while.body72:                                     ; preds = %while.cond68
  %70 = load ptr, ptr %pGen.addr, align 8
  %71 = load ptr, ptr %pGen.addr, align 8
  %pIn73 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %71, i32 0, i32 12
  %72 = load ptr, ptr %pIn73, align 8
  %nLine74 = getelementptr inbounds nuw %struct.SyToken, ptr %72, i32 0, i32 2
  %73 = load i32, ptr %nLine74, align 4
  %74 = load ptr, ptr %pGen.addr, align 8
  %pIn75 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %pIn75, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %75, i32 0, i32 0
  %call76 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %70, i32 noundef 1, i32 noundef %73, ptr noundef @.str.288, ptr noundef %sData)
  store i32 %call76, ptr %rc, align 4
  %76 = load i32, ptr %rc, align 4
  %cmp77 = icmp eq i32 %76, -10
  br i1 %cmp77, label %if.then79, label %if.end80

if.then79:                                        ; preds = %while.body72
  store i32 -10, ptr %retval, align 4
  br label %return

if.end80:                                         ; preds = %while.body72
  %77 = load ptr, ptr %pGen.addr, align 8
  %pIn81 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %77, i32 0, i32 12
  %78 = load ptr, ptr %pIn81, align 8
  %incdec.ptr82 = getelementptr inbounds nuw %struct.SyToken, ptr %78, i32 1
  store ptr %incdec.ptr82, ptr %pIn81, align 8
  br label %while.cond68, !llvm.loop !8

while.end83:                                      ; preds = %while.cond68
  %79 = load ptr, ptr %pCur, align 8
  %incdec.ptr84 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 1
  store ptr %incdec.ptr84, ptr %pCur, align 8
  %80 = load ptr, ptr %pCur, align 8
  %81 = load ptr, ptr %pGen.addr, align 8
  %pIn85 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %81, i32 0, i32 12
  store ptr %80, ptr %pIn85, align 8
  %82 = load ptr, ptr %pGen.addr, align 8
  %pIn86 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %82, i32 0, i32 12
  %83 = load ptr, ptr %pIn86, align 8
  %84 = load ptr, ptr %pEnd, align 8
  %cmp87 = icmp uge ptr %83, %84
  br i1 %cmp87, label %if.then89, label %if.end97

if.then89:                                        ; preds = %while.end83
  %85 = load ptr, ptr %pGen.addr, align 8
  %86 = load ptr, ptr %pGen.addr, align 8
  %pIn90 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %86, i32 0, i32 12
  %87 = load ptr, ptr %pIn90, align 8
  %nLine91 = getelementptr inbounds nuw %struct.SyToken, ptr %87, i32 0, i32 2
  %88 = load i32, ptr %nLine91, align 4
  %call92 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %85, i32 noundef 1, i32 noundef %88, ptr noundef @.str.289)
  store i32 %call92, ptr %rc, align 4
  %89 = load i32, ptr %rc, align 4
  %cmp93 = icmp eq i32 %89, -10
  br i1 %cmp93, label %if.then95, label %if.end96

if.then95:                                        ; preds = %if.then89
  store i32 -10, ptr %retval, align 4
  br label %return

if.end96:                                         ; preds = %if.then89
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %while.end83
  %90 = load ptr, ptr %pGen.addr, align 8
  %pVm98 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %90, i32 0, i32 0
  %91 = load ptr, ptr %pVm98, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %91, i32 0, i32 0
  %call99 = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator, i32 noundef 80)
  store ptr %call99, ptr %pInfo, align 8
  %92 = load ptr, ptr %pInfo, align 8
  %cmp100 = icmp eq ptr %92, null
  br i1 %cmp100, label %if.then102, label %if.end106

if.then102:                                       ; preds = %if.end97
  %93 = load ptr, ptr %pGen.addr, align 8
  %94 = load ptr, ptr %pGen.addr, align 8
  %pIn103 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %94, i32 0, i32 12
  %95 = load ptr, ptr %pIn103, align 8
  %nLine104 = getelementptr inbounds nuw %struct.SyToken, ptr %95, i32 0, i32 2
  %96 = load i32, ptr %nLine104, align 4
  %call105 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %93, i32 noundef 1, i32 noundef %96, ptr noundef @.str.224)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end106:                                        ; preds = %if.end97
  %97 = load ptr, ptr %pInfo, align 8
  call void @SyZero(ptr noundef %97, i32 noundef 80)
  %98 = load ptr, ptr %pInfo, align 8
  %aStep = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %98, i32 0, i32 3
  %99 = load ptr, ptr %pGen.addr, align 8
  %pVm107 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %99, i32 0, i32 0
  %100 = load ptr, ptr %pVm107, align 8
  %sAllocator108 = getelementptr inbounds nuw %struct.ph7_vm, ptr %100, i32 0, i32 0
  %call109 = call i32 @SySetInit(ptr noundef %aStep, ptr noundef %sAllocator108, i32 noundef 8)
  br label %while.cond110

while.cond110:                                    ; preds = %while.body117, %if.end106
  %101 = load ptr, ptr %pCur, align 8
  %102 = load ptr, ptr %pEnd, align 8
  %cmp111 = icmp ult ptr %101, %102
  br i1 %cmp111, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond110
  %103 = load ptr, ptr %pCur, align 8
  %nType113 = getelementptr inbounds nuw %struct.SyToken, ptr %103, i32 0, i32 1
  %104 = load i32, ptr %nType113, align 8
  %and114 = and i32 %104, 8388608
  %cmp115 = icmp eq i32 %and114, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond110
  %105 = phi i1 [ false, %while.cond110 ], [ %cmp115, %land.rhs ]
  br i1 %105, label %while.body117, label %while.end119

while.body117:                                    ; preds = %land.end
  %106 = load ptr, ptr %pCur, align 8
  %incdec.ptr118 = getelementptr inbounds nuw %struct.SyToken, ptr %106, i32 1
  store ptr %incdec.ptr118, ptr %pCur, align 8
  br label %while.cond110, !llvm.loop !9

while.end119:                                     ; preds = %land.end
  %107 = load ptr, ptr %pCur, align 8
  %108 = load ptr, ptr %pEnd, align 8
  %cmp120 = icmp ult ptr %107, %108
  br i1 %cmp120, label %if.then122, label %if.end151

if.then122:                                       ; preds = %while.end119
  %109 = load ptr, ptr %pGen.addr, align 8
  %pIn123 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %109, i32 0, i32 12
  %110 = load ptr, ptr %pIn123, align 8
  %111 = load ptr, ptr %pCur, align 8
  %cmp124 = icmp uge ptr %110, %111
  br i1 %cmp124, label %if.then126, label %if.else

if.then126:                                       ; preds = %if.then122
  %112 = load ptr, ptr %pGen.addr, align 8
  %113 = load ptr, ptr %pGen.addr, align 8
  %pIn127 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %113, i32 0, i32 12
  %114 = load ptr, ptr %pIn127, align 8
  %nLine128 = getelementptr inbounds nuw %struct.SyToken, ptr %114, i32 0, i32 2
  %115 = load i32, ptr %nLine128, align 4
  %call129 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %112, i32 noundef 1, i32 noundef %115, ptr noundef @.str.290)
  store i32 %call129, ptr %rc, align 4
  %116 = load i32, ptr %rc, align 4
  %cmp130 = icmp eq i32 %116, -10
  br i1 %cmp130, label %if.then132, label %if.end133

if.then132:                                       ; preds = %if.then126
  store i32 -10, ptr %retval, align 4
  br label %return

if.end133:                                        ; preds = %if.then126
  br label %if.end149

if.else:                                          ; preds = %if.then122
  %117 = load ptr, ptr %pCur, align 8
  %118 = load ptr, ptr %pGen.addr, align 8
  %pEnd134 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %118, i32 0, i32 13
  store ptr %117, ptr %pEnd134, align 8
  %119 = load ptr, ptr %pGen.addr, align 8
  %call135 = call i32 @PH7_CompileExpr(ptr noundef %119, i32 noundef 0, ptr noundef @GenStateForEachNodeValidator)
  store i32 %call135, ptr %rc, align 4
  %120 = load i32, ptr %rc, align 4
  %cmp136 = icmp eq i32 %120, -10
  br i1 %cmp136, label %if.then138, label %if.end139

if.then138:                                       ; preds = %if.else
  store i32 -10, ptr %retval, align 4
  br label %return

if.end139:                                        ; preds = %if.else
  %121 = load ptr, ptr %pGen.addr, align 8
  %pVm140 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %121, i32 0, i32 0
  %122 = load ptr, ptr %pVm140, align 8
  %call141 = call ptr @PH7_VmPopInstr(ptr noundef %122)
  store ptr %call141, ptr %pInstr, align 8
  %123 = load ptr, ptr %pInstr, align 8
  %p3 = getelementptr inbounds nuw %struct.VmInstr, ptr %123, i32 0, i32 3
  %124 = load ptr, ptr %p3, align 8
  %tobool142 = icmp ne ptr %124, null
  br i1 %tobool142, label %if.then143, label %if.end148

if.then143:                                       ; preds = %if.end139
  %125 = load ptr, ptr %pInstr, align 8
  %p3144 = getelementptr inbounds nuw %struct.VmInstr, ptr %125, i32 0, i32 3
  %126 = load ptr, ptr %p3144, align 8
  %127 = load ptr, ptr %pInfo, align 8
  %sKey = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %127, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sKey, i32 0, i32 0
  store ptr %126, ptr %zString, align 8
  %128 = load ptr, ptr %pInstr, align 8
  %p3145 = getelementptr inbounds nuw %struct.VmInstr, ptr %128, i32 0, i32 3
  %129 = load ptr, ptr %p3145, align 8
  %call146 = call i32 @SyStrlen(ptr noundef %129)
  %130 = load ptr, ptr %pInfo, align 8
  %sKey147 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %130, i32 0, i32 0
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sKey147, i32 0, i32 1
  store i32 %call146, ptr %nByte, align 8
  br label %if.end148

if.end148:                                        ; preds = %if.then143, %if.end139
  %131 = load ptr, ptr %pInfo, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %131, i32 0, i32 2
  %132 = load i32, ptr %iFlags, align 8
  %or = or i32 %132, 4
  store i32 %or, ptr %iFlags, align 8
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end133
  %133 = load ptr, ptr %pCur, align 8
  %arrayidx = getelementptr inbounds %struct.SyToken, ptr %133, i64 1
  %134 = load ptr, ptr %pGen.addr, align 8
  %pIn150 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %134, i32 0, i32 12
  store ptr %arrayidx, ptr %pIn150, align 8
  br label %if.end151

if.end151:                                        ; preds = %if.end149, %while.end119
  %135 = load ptr, ptr %pEnd, align 8
  %136 = load ptr, ptr %pGen.addr, align 8
  %pEnd152 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %136, i32 0, i32 13
  store ptr %135, ptr %pEnd152, align 8
  %137 = load ptr, ptr %pGen.addr, align 8
  %pIn153 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %137, i32 0, i32 12
  %138 = load ptr, ptr %pIn153, align 8
  %139 = load ptr, ptr %pEnd, align 8
  %cmp154 = icmp uge ptr %138, %139
  br i1 %cmp154, label %if.then156, label %if.end164

if.then156:                                       ; preds = %if.end151
  %140 = load ptr, ptr %pGen.addr, align 8
  %141 = load ptr, ptr %pGen.addr, align 8
  %pIn157 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %141, i32 0, i32 12
  %142 = load ptr, ptr %pIn157, align 8
  %nLine158 = getelementptr inbounds nuw %struct.SyToken, ptr %142, i32 0, i32 2
  %143 = load i32, ptr %nLine158, align 4
  %call159 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %140, i32 noundef 1, i32 noundef %143, ptr noundef @.str.291)
  store i32 %call159, ptr %rc, align 4
  %144 = load i32, ptr %rc, align 4
  %cmp160 = icmp eq i32 %144, -10
  br i1 %cmp160, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.then156
  store i32 -10, ptr %retval, align 4
  br label %return

if.end163:                                        ; preds = %if.then156
  br label %Synchronize

if.end164:                                        ; preds = %if.end151
  %145 = load ptr, ptr %pGen.addr, align 8
  %pIn165 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %145, i32 0, i32 12
  %146 = load ptr, ptr %pIn165, align 8
  %nType166 = getelementptr inbounds nuw %struct.SyToken, ptr %146, i32 0, i32 1
  %147 = load i32, ptr %nType166, align 8
  %and167 = and i32 %147, 2097152
  %tobool168 = icmp ne i32 %and167, 0
  br i1 %tobool168, label %if.then169, label %if.end174

if.then169:                                       ; preds = %if.end164
  %148 = load ptr, ptr %pGen.addr, align 8
  %pIn170 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %148, i32 0, i32 12
  %149 = load ptr, ptr %pIn170, align 8
  %incdec.ptr171 = getelementptr inbounds nuw %struct.SyToken, ptr %149, i32 1
  store ptr %incdec.ptr171, ptr %pIn170, align 8
  %150 = load ptr, ptr %pInfo, align 8
  %iFlags172 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %150, i32 0, i32 2
  %151 = load i32, ptr %iFlags172, align 8
  %or173 = or i32 %151, 8
  store i32 %or173, ptr %iFlags172, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.then169, %if.end164
  %152 = load ptr, ptr %pGen.addr, align 8
  %call175 = call i32 @PH7_CompileExpr(ptr noundef %152, i32 noundef 0, ptr noundef @GenStateForEachNodeValidator)
  store i32 %call175, ptr %rc, align 4
  %153 = load i32, ptr %rc, align 4
  %cmp176 = icmp eq i32 %153, -10
  br i1 %cmp176, label %if.then178, label %if.end179

if.then178:                                       ; preds = %if.end174
  store i32 -10, ptr %retval, align 4
  br label %return

if.end179:                                        ; preds = %if.end174
  %154 = load ptr, ptr %pGen.addr, align 8
  %pVm180 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %154, i32 0, i32 0
  %155 = load ptr, ptr %pVm180, align 8
  %call181 = call ptr @PH7_VmPopInstr(ptr noundef %155)
  store ptr %call181, ptr %pInstr, align 8
  %156 = load ptr, ptr %pInstr, align 8
  %p3182 = getelementptr inbounds nuw %struct.VmInstr, ptr %156, i32 0, i32 3
  %157 = load ptr, ptr %p3182, align 8
  %tobool183 = icmp ne ptr %157, null
  br i1 %tobool183, label %if.then184, label %if.end191

if.then184:                                       ; preds = %if.end179
  %158 = load ptr, ptr %pInstr, align 8
  %p3185 = getelementptr inbounds nuw %struct.VmInstr, ptr %158, i32 0, i32 3
  %159 = load ptr, ptr %p3185, align 8
  %160 = load ptr, ptr %pInfo, align 8
  %sValue = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %160, i32 0, i32 1
  %zString186 = getelementptr inbounds nuw %struct.SyString, ptr %sValue, i32 0, i32 0
  store ptr %159, ptr %zString186, align 8
  %161 = load ptr, ptr %pInstr, align 8
  %p3187 = getelementptr inbounds nuw %struct.VmInstr, ptr %161, i32 0, i32 3
  %162 = load ptr, ptr %p3187, align 8
  %call188 = call i32 @SyStrlen(ptr noundef %162)
  %163 = load ptr, ptr %pInfo, align 8
  %sValue189 = getelementptr inbounds nuw %struct.ph7_foreach_info, ptr %163, i32 0, i32 1
  %nByte190 = getelementptr inbounds nuw %struct.SyString, ptr %sValue189, i32 0, i32 1
  store i32 %call188, ptr %nByte190, align 8
  br label %if.end191

if.end191:                                        ; preds = %if.then184, %if.end179
  %164 = load ptr, ptr %pGen.addr, align 8
  %pVm192 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %164, i32 0, i32 0
  %165 = load ptr, ptr %pVm192, align 8
  %166 = load ptr, ptr %pInfo, align 8
  %call193 = call i32 @PH7_VmEmitInstr(ptr noundef %165, i32 noundef 77, i32 noundef 0, i32 noundef 0, ptr noundef %166, ptr noundef %nFalseJump)
  %167 = load ptr, ptr %pForeachBlock, align 8
  %168 = load i32, ptr %nFalseJump, align 4
  %call194 = call i32 @GenStateNewJumpFixup(ptr noundef %167, i32 noundef 77, i32 noundef %168)
  %169 = load ptr, ptr %pGen.addr, align 8
  %pVm195 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %169, i32 0, i32 0
  %170 = load ptr, ptr %pVm195, align 8
  %call196 = call i32 @PH7_VmInstrLength(ptr noundef %170)
  %171 = load ptr, ptr %pForeachBlock, align 8
  %nFirstInstr = getelementptr inbounds nuw %struct.GenBlock, ptr %171, i32 0, i32 2
  store i32 %call196, ptr %nFirstInstr, align 8
  %172 = load ptr, ptr %pGen.addr, align 8
  %pVm197 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %172, i32 0, i32 0
  %173 = load ptr, ptr %pVm197, align 8
  %174 = load ptr, ptr %pInfo, align 8
  %call198 = call i32 @PH7_VmEmitInstr(ptr noundef %173, i32 noundef 78, i32 noundef 0, i32 noundef 0, ptr noundef %174, ptr noundef %nFalseJump)
  %175 = load ptr, ptr %pForeachBlock, align 8
  %176 = load i32, ptr %nFalseJump, align 4
  %call199 = call i32 @GenStateNewJumpFixup(ptr noundef %175, i32 noundef 78, i32 noundef %176)
  %177 = load ptr, ptr %pEnd, align 8
  %arrayidx200 = getelementptr inbounds %struct.SyToken, ptr %177, i64 1
  %178 = load ptr, ptr %pGen.addr, align 8
  %pIn201 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %178, i32 0, i32 12
  store ptr %arrayidx200, ptr %pIn201, align 8
  %179 = load ptr, ptr %pTmp, align 8
  %180 = load ptr, ptr %pGen.addr, align 8
  %pEnd202 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %180, i32 0, i32 13
  store ptr %179, ptr %pEnd202, align 8
  %181 = load ptr, ptr %pGen.addr, align 8
  %call203 = call i32 @PH7_CompileBlock(ptr noundef %181, i32 noundef 33554432)
  store i32 %call203, ptr %rc, align 4
  %182 = load i32, ptr %rc, align 4
  %cmp204 = icmp eq i32 %182, -10
  br i1 %cmp204, label %if.then206, label %if.end207

if.then206:                                       ; preds = %if.end191
  store i32 -10, ptr %retval, align 4
  br label %return

if.end207:                                        ; preds = %if.end191
  %183 = load ptr, ptr %pGen.addr, align 8
  %pVm208 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %183, i32 0, i32 0
  %184 = load ptr, ptr %pVm208, align 8
  %185 = load ptr, ptr %pForeachBlock, align 8
  %nFirstInstr209 = getelementptr inbounds nuw %struct.GenBlock, ptr %185, i32 0, i32 2
  %186 = load i32, ptr %nFirstInstr209, align 8
  %call210 = call i32 @PH7_VmEmitInstr(ptr noundef %184, i32 noundef 10, i32 noundef 0, i32 noundef %186, ptr noundef null, ptr noundef null)
  %187 = load ptr, ptr %pForeachBlock, align 8
  %188 = load ptr, ptr %pGen.addr, align 8
  %pVm211 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %188, i32 0, i32 0
  %189 = load ptr, ptr %pVm211, align 8
  %call212 = call i32 @PH7_VmInstrLength(ptr noundef %189)
  %call213 = call i32 @GenStateFixJumps(ptr noundef %187, i32 noundef -1, i32 noundef %call212)
  %190 = load ptr, ptr %pGen.addr, align 8
  %call214 = call i32 @GenStateLeaveBlock(ptr noundef %190, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end163, %if.end59, %if.end
  br label %while.cond215

while.cond215:                                    ; preds = %while.body227, %Synchronize
  %191 = load ptr, ptr %pGen.addr, align 8
  %pIn216 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %191, i32 0, i32 12
  %192 = load ptr, ptr %pIn216, align 8
  %193 = load ptr, ptr %pGen.addr, align 8
  %pEnd217 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %193, i32 0, i32 13
  %194 = load ptr, ptr %pEnd217, align 8
  %cmp218 = icmp ult ptr %192, %194
  br i1 %cmp218, label %land.rhs220, label %land.end226

land.rhs220:                                      ; preds = %while.cond215
  %195 = load ptr, ptr %pGen.addr, align 8
  %pIn221 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %195, i32 0, i32 12
  %196 = load ptr, ptr %pIn221, align 8
  %nType222 = getelementptr inbounds nuw %struct.SyToken, ptr %196, i32 0, i32 1
  %197 = load i32, ptr %nType222, align 8
  %and223 = and i32 %197, 262208
  %cmp224 = icmp eq i32 %and223, 0
  br label %land.end226

land.end226:                                      ; preds = %land.rhs220, %while.cond215
  %198 = phi i1 [ false, %while.cond215 ], [ %cmp224, %land.rhs220 ]
  br i1 %198, label %while.body227, label %while.end230

while.body227:                                    ; preds = %land.end226
  %199 = load ptr, ptr %pGen.addr, align 8
  %pIn228 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %199, i32 0, i32 12
  %200 = load ptr, ptr %pIn228, align 8
  %incdec.ptr229 = getelementptr inbounds nuw %struct.SyToken, ptr %200, i32 1
  store ptr %incdec.ptr229, ptr %pIn228, align 8
  br label %while.cond215, !llvm.loop !10

while.end230:                                     ; preds = %land.end226
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end230, %if.end207, %if.then206, %if.then178, %if.then162, %if.then138, %if.then132, %if.then102, %if.then95, %if.then79, %if.then66, %if.then58, %if.end36, %if.then27, %if.then15, %if.then8
  %201 = load i32, ptr %retval, align 4
  ret i32 %201
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateNewJumpFixup(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateForEachNodeValidator(ptr noundef, ptr noundef) #0

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
