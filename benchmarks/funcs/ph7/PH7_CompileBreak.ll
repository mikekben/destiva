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

@.str.296 = external hidden unnamed_addr constant [61 x i8], align 1
@.str.297 = external hidden unnamed_addr constant [48 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @PH7_TokenValueToInt64(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileBreak(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %iLevel = alloca i32, align 4
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %nInstrIdx = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 12
  %1 = load ptr, ptr %pIn, align 8
  %nLine1 = getelementptr inbounds nuw %struct.SyToken, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %nLine1, align 4
  store i32 %2, ptr %nLine, align 4
  store i32 0, ptr %iLevel, align 4
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
  %cmp = icmp ult ptr %6, %8
  br i1 %cmp, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %entry
  %9 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %9, i32 0, i32 12
  %10 = load ptr, ptr %pIn4, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nType, align 8
  %and = and i32 %11, 3
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end11

if.then:                                          ; preds = %land.lhs.true
  %12 = load ptr, ptr %pGen.addr, align 8
  %pIn5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 12
  %13 = load ptr, ptr %pIn5, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %13, i32 0, i32 0
  %call = call i64 @PH7_TokenValueToInt64(ptr noundef %sData)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %iLevel, align 4
  %14 = load i32, ptr %iLevel, align 4
  %cmp6 = icmp slt i32 %14, 2
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  store i32 0, ptr %iLevel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  %15 = load ptr, ptr %pGen.addr, align 8
  %pIn9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 12
  %16 = load ptr, ptr %pIn9, align 8
  %incdec.ptr10 = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %pIn9, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.end, %land.lhs.true, %entry
  %17 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 4
  %18 = load ptr, ptr %pCurrent, align 8
  %19 = load i32, ptr %iLevel, align 4
  %call12 = call ptr @GenStateFetchBlock(ptr noundef %18, i32 noundef 1, i32 noundef %19)
  store ptr %call12, ptr %pLoop, align 8
  %20 = load ptr, ptr %pLoop, align 8
  %cmp13 = icmp eq ptr %20, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end11
  %21 = load ptr, ptr %pGen.addr, align 8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pIn16, align 8
  %nLine17 = getelementptr inbounds nuw %struct.SyToken, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %nLine17, align 4
  %call18 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %21, i32 noundef 1, i32 noundef %24, ptr noundef @.str.296)
  store i32 %call18, ptr %rc, align 4
  %25 = load i32, ptr %rc, align 4
  %cmp19 = icmp eq i32 %25, -10
  br i1 %cmp19, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.then15
  store i32 -10, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.then15
  br label %if.end29

if.else:                                          ; preds = %if.end11
  %26 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm, align 8
  %call23 = call i32 @PH7_VmEmitInstr(ptr noundef %27, i32 noundef 10, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nInstrIdx)
  store i32 %call23, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp24 = icmp eq i32 %28, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.else
  %29 = load ptr, ptr %pLoop, align 8
  %30 = load i32, ptr %nInstrIdx, align 4
  %call27 = call i32 @GenStateNewJumpFixup(ptr noundef %29, i32 noundef 10, i32 noundef %30)
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.else
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.end22
  %31 = load ptr, ptr %pGen.addr, align 8
  %pIn30 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 12
  %32 = load ptr, ptr %pIn30, align 8
  %33 = load ptr, ptr %pGen.addr, align 8
  %pEnd31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %33, i32 0, i32 13
  %34 = load ptr, ptr %pEnd31, align 8
  %cmp32 = icmp ult ptr %32, %34
  br i1 %cmp32, label %land.lhs.true34, label %if.end44

land.lhs.true34:                                  ; preds = %if.end29
  %35 = load ptr, ptr %pGen.addr, align 8
  %pIn35 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %35, i32 0, i32 12
  %36 = load ptr, ptr %pIn35, align 8
  %nType36 = getelementptr inbounds nuw %struct.SyToken, ptr %36, i32 0, i32 1
  %37 = load i32, ptr %nType36, align 8
  %and37 = and i32 %37, 262144
  %cmp38 = icmp eq i32 %and37, 0
  br i1 %cmp38, label %if.then40, label %if.end44

if.then40:                                        ; preds = %land.lhs.true34
  %38 = load ptr, ptr %pGen.addr, align 8
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn41 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn41, align 8
  %nLine42 = getelementptr inbounds nuw %struct.SyToken, ptr %40, i32 0, i32 2
  %41 = load i32, ptr %nLine42, align 4
  %call43 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %38, i32 noundef 2, i32 noundef %41, ptr noundef @.str.297)
  br label %if.end44

if.end44:                                         ; preds = %if.then40, %land.lhs.true34, %if.end29
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end44, %if.then21
  %42 = load i32, ptr %retval, align 4
  ret i32 %42
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateNewJumpFixup(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @GenStateFetchBlock(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
