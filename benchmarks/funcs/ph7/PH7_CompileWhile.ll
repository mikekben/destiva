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

@.str.229 = external hidden unnamed_addr constant [22 x i8], align 1
@.str.283 = external hidden unnamed_addr constant [35 x i8], align 1
@.str.284 = external hidden unnamed_addr constant [42 x i8], align 1

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
define hidden i32 @PH7_CompileWhile(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pWhileBlock = alloca ptr, align 8
  %pTmp = alloca ptr, align 8
  %pEnd = alloca ptr, align 8
  %nFalseJump = alloca i32, align 4
  %nLine = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store ptr null, ptr %pWhileBlock, align 8
  store ptr null, ptr %pEnd, align 8
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
  %call = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %12, i32 noundef 1, i32 noundef %13, ptr noundef @.str.283)
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
  %call13 = call i32 @GenStateEnterBlock(ptr noundef %17, i32 noundef 1, i32 noundef %call12, ptr noundef null, ptr noundef %pWhileBlock)
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
  %call25 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %31, i32 noundef 1, i32 noundef %32, ptr noundef @.str.284)
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
  %call41 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %43, i32 noundef 1, i32 noundef %46, ptr noundef @.str.229, ptr noundef %sData)
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
  %pVm49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %pVm49, align 8
  %call50 = call i32 @PH7_VmEmitInstr(ptr noundef %57, i32 noundef 11, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %nFalseJump)
  %58 = load ptr, ptr %pWhileBlock, align 8
  %59 = load i32, ptr %nFalseJump, align 4
  %call51 = call i32 @GenStateNewJumpFixup(ptr noundef %58, i32 noundef 11, i32 noundef %59)
  %60 = load ptr, ptr %pGen.addr, align 8
  %call52 = call i32 @PH7_CompileBlock(ptr noundef %60, i32 noundef 8388608)
  store i32 %call52, ptr %rc, align 4
  %61 = load i32, ptr %rc, align 4
  %cmp53 = icmp eq i32 %61, -10
  br i1 %cmp53, label %if.then54, label %if.end55

if.then54:                                        ; preds = %while.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %while.end
  %62 = load ptr, ptr %pGen.addr, align 8
  %pVm56 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %62, i32 0, i32 0
  %63 = load ptr, ptr %pVm56, align 8
  %64 = load ptr, ptr %pWhileBlock, align 8
  %nFirstInstr = getelementptr inbounds nuw %struct.GenBlock, ptr %64, i32 0, i32 2
  %65 = load i32, ptr %nFirstInstr, align 8
  %call57 = call i32 @PH7_VmEmitInstr(ptr noundef %63, i32 noundef 10, i32 noundef 0, i32 noundef %65, ptr noundef null, ptr noundef null)
  %66 = load ptr, ptr %pWhileBlock, align 8
  %67 = load ptr, ptr %pGen.addr, align 8
  %pVm58 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 0
  %68 = load ptr, ptr %pVm58, align 8
  %call59 = call i32 @PH7_VmInstrLength(ptr noundef %68)
  %call60 = call i32 @GenStateFixJumps(ptr noundef %66, i32 noundef -1, i32 noundef %call59)
  %69 = load ptr, ptr %pGen.addr, align 8
  %call61 = call i32 @GenStateLeaveBlock(ptr noundef %69, ptr noundef null)
  store i32 0, ptr %retval, align 4
  br label %return

Synchronize:                                      ; preds = %if.end
  br label %while.cond62

while.cond62:                                     ; preds = %while.body70, %Synchronize
  %70 = load ptr, ptr %pGen.addr, align 8
  %pIn63 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %70, i32 0, i32 12
  %71 = load ptr, ptr %pIn63, align 8
  %72 = load ptr, ptr %pGen.addr, align 8
  %pEnd64 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %72, i32 0, i32 13
  %73 = load ptr, ptr %pEnd64, align 8
  %cmp65 = icmp ult ptr %71, %73
  br i1 %cmp65, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond62
  %74 = load ptr, ptr %pGen.addr, align 8
  %pIn66 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %74, i32 0, i32 12
  %75 = load ptr, ptr %pIn66, align 8
  %nType67 = getelementptr inbounds nuw %struct.SyToken, ptr %75, i32 0, i32 1
  %76 = load i32, ptr %nType67, align 8
  %and68 = and i32 %76, 262208
  %cmp69 = icmp eq i32 %and68, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond62
  %77 = phi i1 [ false, %while.cond62 ], [ %cmp69, %land.rhs ]
  br i1 %77, label %while.body70, label %while.end73

while.body70:                                     ; preds = %land.end
  %78 = load ptr, ptr %pGen.addr, align 8
  %pIn71 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %78, i32 0, i32 12
  %79 = load ptr, ptr %pIn71, align 8
  %incdec.ptr72 = getelementptr inbounds nuw %struct.SyToken, ptr %79, i32 1
  store ptr %incdec.ptr72, ptr %pIn71, align 8
  br label %while.cond62, !llvm.loop !8

while.end73:                                      ; preds = %land.end
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end73, %if.end55, %if.then54, %if.then43, %if.then34, %if.then27, %if.then15, %if.then8
  %80 = load i32, ptr %retval, align 4
  ret i32 %80
}

; Function Attrs: nounwind uwtable
declare hidden i32 @GenStateNewJumpFixup(ptr noundef, i32 noundef, i32 noundef) #0

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
