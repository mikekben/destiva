; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.JumpFixup = type { i32, i32, %struct.SyString, ptr, i32 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.313 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.314 = external hidden unnamed_addr constant [31 x i8], align 1
@.str.315 = external hidden unnamed_addr constant [42 x i8], align 1
@.str.316 = external hidden unnamed_addr constant [47 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileGoto(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %sJump = alloca %struct.JumpFixup, align 8
  %rc = alloca i32, align 4
  %pTarget = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %pIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 12
  %3 = load ptr, ptr %pIn1, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 13
  %5 = load ptr, ptr %pEnd, align 8
  %cmp = icmp uge ptr %3, %5
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %pGen.addr, align 8
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn2 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn2, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %nLine, align 4
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %6, i32 noundef 1, i32 noundef %9, ptr noundef @.str.313)
  store i32 %call, ptr %rc, align 4
  %10 = load i32, ptr %rc, align 4
  %cmp3 = icmp eq i32 %10, -10
  br i1 %cmp3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

if.end5:                                          ; preds = %entry
  %11 = load ptr, ptr %pGen.addr, align 8
  %pIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %11, i32 0, i32 12
  %12 = load ptr, ptr %pIn6, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nType, align 8
  %and = and i32 %13, 12
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %14 = load ptr, ptr %pGen.addr, align 8
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn9, align 8
  %nLine10 = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 0, i32 2
  %17 = load i32, ptr %nLine10, align 4
  %18 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 12
  %19 = load ptr, ptr %pIn11, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %19, i32 0, i32 0
  %call12 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %14, i32 noundef 1, i32 noundef %17, ptr noundef @.str.314, ptr noundef %sData)
  store i32 %call12, ptr %rc, align 4
  %20 = load i32, ptr %rc, align 4
  %cmp13 = icmp eq i32 %20, -10
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.then8
  store i32 -10, ptr %retval, align 4
  br label %return

if.end15:                                         ; preds = %if.then8
  br label %if.end63

if.else:                                          ; preds = %if.end5
  %21 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 12
  %22 = load ptr, ptr %pIn16, align 8
  %sData17 = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 0, i32 0
  store ptr %sData17, ptr %pTarget, align 8
  %nJumpType = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 0
  store i32 10, ptr %nJumpType, align 8
  %23 = load ptr, ptr %pGen.addr, align 8
  %pIn18 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 12
  %24 = load ptr, ptr %pIn18, align 8
  %nLine19 = getelementptr inbounds nuw %struct.SyToken, ptr %24, i32 0, i32 2
  %25 = load i32, ptr %nLine19, align 4
  %nLine20 = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 4
  store i32 %25, ptr %nLine20, align 8
  %26 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %27, i32 0, i32 0
  %28 = load ptr, ptr %pTarget, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %28, i32 0, i32 0
  %29 = load ptr, ptr %zString, align 8
  %30 = load ptr, ptr %pTarget, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %30, i32 0, i32 1
  %31 = load i32, ptr %nByte, align 8
  %call21 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator, ptr noundef %29, i32 noundef %31)
  store ptr %call21, ptr %zDup, align 8
  %32 = load ptr, ptr %zDup, align 8
  %cmp22 = icmp eq ptr %32, null
  br i1 %cmp22, label %if.then23, label %if.end27

if.then23:                                        ; preds = %if.else
  %33 = load ptr, ptr %pGen.addr, align 8
  %34 = load ptr, ptr %pGen.addr, align 8
  %pIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 12
  %35 = load ptr, ptr %pIn24, align 8
  %nLine25 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 0, i32 2
  %36 = load i32, ptr %nLine25, align 4
  %call26 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %33, i32 noundef 1, i32 noundef %36, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end27:                                         ; preds = %if.else
  %37 = load ptr, ptr %zDup, align 8
  %sLabel = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 2
  %zString28 = getelementptr inbounds nuw %struct.SyString, ptr %sLabel, i32 0, i32 0
  store ptr %37, ptr %zString28, align 8
  %38 = load ptr, ptr %pTarget, align 8
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %38, i32 0, i32 1
  %39 = load i32, ptr %nByte29, align 8
  %sLabel30 = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 2
  %nByte31 = getelementptr inbounds nuw %struct.SyString, ptr %sLabel30, i32 0, i32 1
  store i32 %39, ptr %nByte31, align 8
  %40 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 4
  %41 = load ptr, ptr %pCurrent, align 8
  store ptr %41, ptr %pBlock, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end35, %if.end27
  %42 = load ptr, ptr %pBlock, align 8
  %tobool = icmp ne ptr %42, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %43 = load ptr, ptr %pBlock, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %43, i32 0, i32 3
  %44 = load i32, ptr %iFlags, align 4
  %and32 = and i32 %44, 264
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then34, label %if.end35

if.then34:                                        ; preds = %while.body
  br label %while.end

if.end35:                                         ; preds = %while.body
  %45 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %pParent, align 8
  store ptr %46, ptr %pBlock, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then34, %while.cond
  %47 = load ptr, ptr %pBlock, align 8
  %tobool36 = icmp ne ptr %47, null
  br i1 %tobool36, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %while.end
  %48 = load ptr, ptr %pBlock, align 8
  %iFlags37 = getelementptr inbounds nuw %struct.GenBlock, ptr %48, i32 0, i32 3
  %49 = load i32, ptr %iFlags37, align 4
  %and38 = and i32 %49, 256
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then40, label %if.end47

if.then40:                                        ; preds = %land.lhs.true
  %50 = load ptr, ptr %pGen.addr, align 8
  %51 = load ptr, ptr %pGen.addr, align 8
  %pIn41 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 12
  %52 = load ptr, ptr %pIn41, align 8
  %nLine42 = getelementptr inbounds nuw %struct.SyToken, ptr %52, i32 0, i32 2
  %53 = load i32, ptr %nLine42, align 4
  %call43 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %50, i32 noundef 1, i32 noundef %53, ptr noundef @.str.315)
  store i32 %call43, ptr %rc, align 4
  %54 = load i32, ptr %rc, align 4
  %cmp44 = icmp eq i32 %54, -10
  br i1 %cmp44, label %if.then45, label %if.end46

if.then45:                                        ; preds = %if.then40
  store i32 -10, ptr %retval, align 4
  br label %return

if.end46:                                         ; preds = %if.then40
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %land.lhs.true, %while.end
  %55 = load ptr, ptr %pBlock, align 8
  %tobool48 = icmp ne ptr %55, null
  br i1 %tobool48, label %land.lhs.true49, label %if.else54

land.lhs.true49:                                  ; preds = %if.end47
  %56 = load ptr, ptr %pBlock, align 8
  %iFlags50 = getelementptr inbounds nuw %struct.GenBlock, ptr %56, i32 0, i32 3
  %57 = load i32, ptr %iFlags50, align 4
  %and51 = and i32 %57, 8
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.else54

if.then53:                                        ; preds = %land.lhs.true49
  %58 = load ptr, ptr %pBlock, align 8
  %pUserData = getelementptr inbounds nuw %struct.GenBlock, ptr %58, i32 0, i32 5
  %59 = load ptr, ptr %pUserData, align 8
  %pFunc = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 3
  store ptr %59, ptr %pFunc, align 8
  br label %if.end56

if.else54:                                        ; preds = %land.lhs.true49, %if.end47
  %pFunc55 = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 3
  store ptr null, ptr %pFunc55, align 8
  br label %if.end56

if.end56:                                         ; preds = %if.else54, %if.then53
  %60 = load ptr, ptr %pGen.addr, align 8
  %pVm57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %60, i32 0, i32 0
  %61 = load ptr, ptr %pVm57, align 8
  %nInstrIdx = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJump, i32 0, i32 1
  %call58 = call i32 @PH7_VmEmitInstr(ptr noundef %61, i32 noundef 10, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nInstrIdx)
  %cmp59 = icmp eq i32 0, %call58
  br i1 %cmp59, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end56
  %62 = load ptr, ptr %pGen.addr, align 8
  %aGoto = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 9
  %call61 = call i32 @SySetPut(ptr noundef %aGoto, ptr noundef %sJump)
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end56
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.end15
  %63 = load ptr, ptr %pGen.addr, align 8
  %pIn64 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %pIn64, align 8
  %incdec.ptr65 = getelementptr inbounds nuw %struct.SyToken, ptr %64, i32 1
  store ptr %incdec.ptr65, ptr %pIn64, align 8
  %65 = load ptr, ptr %pGen.addr, align 8
  %pIn66 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %65, i32 0, i32 12
  %66 = load ptr, ptr %pIn66, align 8
  %67 = load ptr, ptr %pGen.addr, align 8
  %pEnd67 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 13
  %68 = load ptr, ptr %pEnd67, align 8
  %cmp68 = icmp ult ptr %66, %68
  br i1 %cmp68, label %land.lhs.true69, label %if.end78

land.lhs.true69:                                  ; preds = %if.end63
  %69 = load ptr, ptr %pGen.addr, align 8
  %pIn70 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %69, i32 0, i32 12
  %70 = load ptr, ptr %pIn70, align 8
  %nType71 = getelementptr inbounds nuw %struct.SyToken, ptr %70, i32 0, i32 1
  %71 = load i32, ptr %nType71, align 8
  %and72 = and i32 %71, 262144
  %cmp73 = icmp eq i32 %and72, 0
  br i1 %cmp73, label %if.then74, label %if.end78

if.then74:                                        ; preds = %land.lhs.true69
  %72 = load ptr, ptr %pGen.addr, align 8
  %73 = load ptr, ptr %pGen.addr, align 8
  %pIn75 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %73, i32 0, i32 12
  %74 = load ptr, ptr %pIn75, align 8
  %nLine76 = getelementptr inbounds nuw %struct.SyToken, ptr %74, i32 0, i32 2
  %75 = load i32, ptr %nLine76, align 4
  %call77 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %72, i32 noundef 1, i32 noundef %75, ptr noundef @.str.316)
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %land.lhs.true69, %if.end63
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end78, %if.then45, %if.then23, %if.then14, %if.end, %if.then4
  %76 = load i32, ptr %retval, align 4
  ret i32 %76
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
