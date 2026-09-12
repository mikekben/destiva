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

@.str.294 = external hidden unnamed_addr constant [64 x i8], align 1
@.str.295 = external hidden unnamed_addr constant [51 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i64 @PH7_TokenValueToInt64(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileContinue(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pLoop = alloca ptr, align 8
  %iLevel = alloca i32, align 4
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  %nInstrIdx = alloca i32, align 4
  %sJumpFix = alloca %struct.JumpFixup, align 8
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
  %22 = load i32, ptr %nLine, align 4
  %call16 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %21, i32 noundef 1, i32 noundef %22, ptr noundef @.str.294)
  store i32 %call16, ptr %rc, align 4
  %23 = load i32, ptr %rc, align 4
  %cmp17 = icmp eq i32 %23, -10
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then15
  store i32 -10, ptr %retval, align 4
  br label %return

if.end20:                                         ; preds = %if.then15
  br label %if.end41

if.else:                                          ; preds = %if.end11
  store i32 0, ptr %nInstrIdx, align 4
  %24 = load ptr, ptr %pLoop, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %24, i32 0, i32 3
  %25 = load i32, ptr %iFlags, align 4
  %and21 = and i32 %25, 512
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.then23, label %if.else30

if.then23:                                        ; preds = %if.else
  %26 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pVm, align 8
  %call24 = call i32 @PH7_VmEmitInstr(ptr noundef %27, i32 noundef 10, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nInstrIdx)
  store i32 %call24, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  %cmp25 = icmp eq i32 %28, 0
  br i1 %cmp25, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.then23
  %29 = load ptr, ptr %pLoop, align 8
  %30 = load i32, ptr %nInstrIdx, align 4
  %call28 = call i32 @GenStateNewJumpFixup(ptr noundef %29, i32 noundef 10, i32 noundef %30)
  br label %if.end29

if.end29:                                         ; preds = %if.then27, %if.then23
  br label %if.end40

if.else30:                                        ; preds = %if.else
  %31 = load ptr, ptr %pGen.addr, align 8
  %pVm31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pVm31, align 8
  %33 = load ptr, ptr %pLoop, align 8
  %nFirstInstr = getelementptr inbounds nuw %struct.GenBlock, ptr %33, i32 0, i32 2
  %34 = load i32, ptr %nFirstInstr, align 8
  %call32 = call i32 @PH7_VmEmitInstr(ptr noundef %32, i32 noundef 10, i32 noundef 0, i32 noundef %34, ptr noundef null, ptr noundef %nInstrIdx)
  %35 = load ptr, ptr %pLoop, align 8
  %bPostContinue = getelementptr inbounds nuw %struct.GenBlock, ptr %35, i32 0, i32 6
  %36 = load i8, ptr %bPostContinue, align 8
  %conv33 = zext i8 %36 to i32
  %cmp34 = icmp eq i32 %conv33, 1
  br i1 %cmp34, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.else30
  %nJumpType = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJumpFix, i32 0, i32 0
  store i32 10, ptr %nJumpType, align 8
  %37 = load i32, ptr %nInstrIdx, align 4
  %nInstrIdx37 = getelementptr inbounds nuw %struct.JumpFixup, ptr %sJumpFix, i32 0, i32 1
  store i32 %37, ptr %nInstrIdx37, align 4
  %38 = load ptr, ptr %pLoop, align 8
  %aPostContFix = getelementptr inbounds nuw %struct.GenBlock, ptr %38, i32 0, i32 7
  %call38 = call i32 @SySetPut(ptr noundef %aPostContFix, ptr noundef %sJumpFix)
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.else30
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.end29
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end20
  %39 = load ptr, ptr %pGen.addr, align 8
  %pIn42 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %39, i32 0, i32 12
  %40 = load ptr, ptr %pIn42, align 8
  %41 = load ptr, ptr %pGen.addr, align 8
  %pEnd43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 13
  %42 = load ptr, ptr %pEnd43, align 8
  %cmp44 = icmp ult ptr %40, %42
  br i1 %cmp44, label %land.lhs.true46, label %if.end56

land.lhs.true46:                                  ; preds = %if.end41
  %43 = load ptr, ptr %pGen.addr, align 8
  %pIn47 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 12
  %44 = load ptr, ptr %pIn47, align 8
  %nType48 = getelementptr inbounds nuw %struct.SyToken, ptr %44, i32 0, i32 1
  %45 = load i32, ptr %nType48, align 8
  %and49 = and i32 %45, 262144
  %cmp50 = icmp eq i32 %and49, 0
  br i1 %cmp50, label %if.then52, label %if.end56

if.then52:                                        ; preds = %land.lhs.true46
  %46 = load ptr, ptr %pGen.addr, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn53, align 8
  %nLine54 = getelementptr inbounds nuw %struct.SyToken, ptr %48, i32 0, i32 2
  %49 = load i32, ptr %nLine54, align 4
  %call55 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %46, i32 noundef 2, i32 noundef %49, ptr noundef @.str.295)
  br label %if.end56

if.end56:                                         ; preds = %if.then52, %land.lhs.true46, %if.end41
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end56, %if.then19
  %50 = load i32, ptr %retval, align 4
  ret i32 %50
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
