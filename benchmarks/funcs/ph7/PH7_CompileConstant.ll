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

@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1
@.str.317 = external hidden unnamed_addr constant [29 x i8], align 1
@.str.318 = external hidden unnamed_addr constant [49 x i8], align 1
@.str.319 = external hidden unnamed_addr constant [40 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRegisterConstant(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetByteCodeContainer(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmSetByteCodeContainer(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileConstant(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pConsCode = alloca ptr, align 8
  %pInstrContainer = alloca ptr, align 8
  %nLine = alloca i32, align 4
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
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
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 13
  %8 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %6, %8
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 24588
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then, label %if.end8

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load ptr, ptr %pGen.addr, align 8
  %13 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.317)
  store i32 %call, ptr %rc, align 4
  %14 = load i32, ptr %rc, align 4
  %cmp6 = icmp eq i32 %14, -10
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %Synchronize

if.end8:                                          ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn9, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 0, i32 0
  store ptr %sData, ptr %pName, align 8
  %17 = load ptr, ptr %pName, align 8
  %call10 = call i32 @GenStateIsReservedConstant(ptr noundef %17)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end8
  %18 = load ptr, ptr %pGen.addr, align 8
  %19 = load i32, ptr %nLine, align 4
  %20 = load ptr, ptr %pName, align 8
  %call12 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %18, i32 noundef 1, i32 noundef %19, ptr noundef @.str.318, ptr noundef %20)
  store i32 %call12, ptr %rc, align 4
  %21 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %21, -10
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then11
  store i32 -10, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then11
  br label %Synchronize

if.end16:                                         ; preds = %if.end8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pIn17, align 8
  %incdec.ptr18 = getelementptr inbounds nuw %struct.SyToken, ptr %23, i32 1
  store ptr %incdec.ptr18, ptr %pIn17, align 8
  %24 = load ptr, ptr %pGen.addr, align 8
  %pIn19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 12
  %25 = load ptr, ptr %pIn19, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pEnd20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 13
  %27 = load ptr, ptr %pEnd20, align 8
  %cmp21 = icmp uge ptr %25, %27
  br i1 %cmp21, label %if.then27, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %if.end16
  %28 = load ptr, ptr %pGen.addr, align 8
  %pIn23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %pIn23, align 8
  %nType24 = getelementptr inbounds nuw %struct.SyToken, ptr %29, i32 0, i32 1
  %30 = load i32, ptr %nType24, align 8
  %and25 = and i32 %30, 4194304
  %cmp26 = icmp eq i32 %and25, 0
  br i1 %cmp26, label %if.then27, label %if.end32

if.then27:                                        ; preds = %lor.lhs.false22, %if.end16
  %31 = load ptr, ptr %pGen.addr, align 8
  %32 = load i32, ptr %nLine, align 4
  %call28 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %31, i32 noundef 1, i32 noundef %32, ptr noundef @.str.319)
  store i32 %call28, ptr %rc, align 4
  %33 = load i32, ptr %rc, align 4
  %cmp29 = icmp eq i32 %33, -10
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then27
  store i32 -10, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %if.then27
  br label %Synchronize

if.end32:                                         ; preds = %lor.lhs.false22
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn33 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn33, align 8
  %incdec.ptr34 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 1
  store ptr %incdec.ptr34, ptr %pIn33, align 8
  %36 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %37, i32 0, i32 0
  %call35 = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 40)
  store ptr %call35, ptr %pConsCode, align 8
  %38 = load ptr, ptr %pConsCode, align 8
  %cmp36 = icmp eq ptr %38, null
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end32
  %39 = load ptr, ptr %pGen.addr, align 8
  %40 = load i32, ptr %nLine, align 4
  %call38 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %39, i32 noundef 1, i32 noundef %40, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end39:                                         ; preds = %if.end32
  %41 = load ptr, ptr %pConsCode, align 8
  %42 = load ptr, ptr %pGen.addr, align 8
  %pVm40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 0
  %43 = load ptr, ptr %pVm40, align 8
  %sAllocator41 = getelementptr inbounds nuw %struct.ph7_vm, ptr %43, i32 0, i32 0
  %call42 = call i32 @SySetInit(ptr noundef %41, ptr noundef %sAllocator41, i32 noundef 24)
  %44 = load ptr, ptr %pGen.addr, align 8
  %pVm43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %pVm43, align 8
  %call44 = call ptr @PH7_VmGetByteCodeContainer(ptr noundef %45)
  store ptr %call44, ptr %pInstrContainer, align 8
  %46 = load ptr, ptr %pGen.addr, align 8
  %pVm45 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %pVm45, align 8
  %48 = load ptr, ptr %pConsCode, align 8
  %call46 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %47, ptr noundef %48)
  %49 = load ptr, ptr %pGen.addr, align 8
  %call47 = call i32 @PH7_CompileExpr(ptr noundef %49, i32 noundef 0, ptr noundef null)
  store i32 %call47, ptr %rc, align 4
  %50 = load ptr, ptr %pGen.addr, align 8
  %pVm48 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %pVm48, align 8
  %52 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %52, -3
  %53 = zext i1 %cmp49 to i64
  %cond = select i1 %cmp49, i32 1, i32 0
  %call50 = call i32 @PH7_VmEmitInstr(ptr noundef %51, i32 noundef 1, i32 noundef %cond, i32 noundef 0, ptr noundef null, ptr noundef null)
  %54 = load ptr, ptr %pGen.addr, align 8
  %pVm51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 0
  %55 = load ptr, ptr %pVm51, align 8
  %56 = load ptr, ptr %pInstrContainer, align 8
  %call52 = call i32 @PH7_VmSetByteCodeContainer(ptr noundef %55, ptr noundef %56)
  %57 = load i32, ptr %rc, align 4
  %cmp53 = icmp eq i32 %57, -10
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %if.end39
  store i32 -10, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end39
  %58 = load ptr, ptr %pGen.addr, align 8
  %pVm56 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %pVm56, align 8
  %60 = load ptr, ptr %pConsCode, align 8
  %pUserData = getelementptr inbounds nuw %struct.SySet, ptr %60, i32 0, i32 6
  store ptr %59, ptr %pUserData, align 8
  %61 = load ptr, ptr %pGen.addr, align 8
  %pVm57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 0
  %62 = load ptr, ptr %pVm57, align 8
  %63 = load ptr, ptr %pName, align 8
  %64 = load ptr, ptr %pConsCode, align 8
  %call58 = call i32 @PH7_VmRegisterConstant(ptr noundef %62, ptr noundef %63, ptr noundef @PH7_VmExpandConstantValue, ptr noundef %64)
  store i32 %call58, ptr %rc, align 4
  %65 = load i32, ptr %rc, align 4
  %cmp59 = icmp ne i32 %65, 0
  br i1 %cmp59, label %if.then60, label %if.end65

if.then60:                                        ; preds = %if.end55
  %66 = load ptr, ptr %pConsCode, align 8
  %call61 = call i32 @SySetRelease(ptr noundef %66)
  %67 = load ptr, ptr %pGen.addr, align 8
  %pVm62 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %pVm62, align 8
  %sAllocator63 = getelementptr inbounds nuw %struct.ph7_vm, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %pConsCode, align 8
  %call64 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator63, ptr noundef %69)
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end55
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end31, %if.end15, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %Synchronize
  %70 = load ptr, ptr %pGen.addr, align 8
  %pIn66 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %pIn66, align 8
  %72 = load ptr, ptr %pGen.addr, align 8
  %pEnd67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %72, i32 0, i32 13
  %73 = load ptr, ptr %pEnd67, align 8
  %cmp68 = icmp ult ptr %71, %73
  br i1 %cmp68, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %74 = load ptr, ptr %pGen.addr, align 8
  %pIn69 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %pIn69, align 8
  %nType70 = getelementptr inbounds nuw %struct.SyToken, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %nType70, align 8
  %and71 = and i32 %76, 262144
  %cmp72 = icmp eq i32 %and71, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %77 = phi i1 [ false, %while.cond ], [ %cmp72, %land.rhs ]
  br i1 %77, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %78 = load ptr, ptr %pGen.addr, align 8
  %pIn73 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 12
  %79 = load ptr, ptr %pIn73, align 8
  %incdec.ptr74 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 1
  store ptr %incdec.ptr74, ptr %pIn73, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end, %if.end65, %if.then54, %if.then37, %if.then30, %if.then14, %if.then7
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateIsReservedConstant(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_VmExpandConstantValue(ptr noundef, ptr noundef) #0

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
