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

@.str.132 = external hidden unnamed_addr constant [5 x i8], align 1
@.str.201 = external hidden unnamed_addr constant [43 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_TokenizePHP(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompileExpr(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @GenStateNextChunk(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pRawObj = alloca ptr, align 8
  %nRawObj = alloca i32, align 4
  %nObjIdx = alloca i32, align 4
  %pTokenSet = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  br label %Consume

Consume:                                          ; preds = %if.end54, %entry
  store i32 0, ptr %nObjIdx, align 4
  store i32 0, ptr %nRawObj, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %Consume
  %0 = load ptr, ptr %pGen.addr, align 8
  %pRawIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 15
  %1 = load ptr, ptr %pRawIn, align 8
  %2 = load ptr, ptr %pGen.addr, align 8
  %pRawEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 16
  %3 = load ptr, ptr %pRawEnd, align 8
  %cmp = icmp ult ptr %1, %3
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load ptr, ptr %pGen.addr, align 8
  %pRawIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 15
  %5 = load ptr, ptr %pRawIn1, align 8
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nType, align 8
  %cmp2 = icmp ne i32 %6, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_ReserveConstObj(ptr noundef %9, ptr noundef %nObjIdx)
  store ptr %call, ptr %pRawObj, align 8
  %10 = load ptr, ptr %pRawObj, align 8
  %cmp3 = icmp eq ptr %10, null
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load ptr, ptr %pGen.addr, align 8
  %call4 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %11, i32 noundef 1, i32 noundef 1, ptr noundef @.str.201)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.body
  %12 = load ptr, ptr %pGen.addr, align 8
  %pVm5 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVm5, align 8
  %14 = load ptr, ptr %pRawObj, align 8
  %15 = load ptr, ptr %pGen.addr, align 8
  %pRawIn6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %15, i32 0, i32 15
  %16 = load ptr, ptr %pRawIn6, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %16, i32 0, i32 0
  %call7 = call i32 @PH7_MemObjInitFromString(ptr noundef %13, ptr noundef %14, ptr noundef %sData)
  %17 = load ptr, ptr %pGen.addr, align 8
  %pVm8 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %pVm8, align 8
  %19 = load i32, ptr %nObjIdx, align 4
  %call9 = call i32 @PH7_VmEmitInstr(ptr noundef %18, i32 noundef 4, i32 noundef 0, i32 noundef %19, ptr noundef null, ptr noundef null)
  %20 = load i32, ptr %nRawObj, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %nRawObj, align 4
  %21 = load ptr, ptr %pGen.addr, align 8
  %pRawIn10 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %21, i32 0, i32 15
  %22 = load ptr, ptr %pRawIn10, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %22, i32 1
  store ptr %incdec.ptr, ptr %pRawIn10, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %23 = load i32, ptr %nRawObj, align 4
  %cmp11 = icmp ugt i32 %23, 0
  br i1 %cmp11, label %if.then12, label %if.end15

if.then12:                                        ; preds = %while.end
  %24 = load ptr, ptr %pGen.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pVm13, align 8
  %26 = load i32, ptr %nRawObj, align 4
  %call14 = call i32 @PH7_VmEmitInstr(ptr noundef %25, i32 noundef 69, i32 noundef %26, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %while.end
  %27 = load ptr, ptr %pGen.addr, align 8
  %pRawIn16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 15
  %28 = load ptr, ptr %pRawIn16, align 8
  %29 = load ptr, ptr %pGen.addr, align 8
  %pRawEnd17 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %29, i32 0, i32 16
  %30 = load ptr, ptr %pRawEnd17, align 8
  %cmp18 = icmp ult ptr %28, %30
  br i1 %cmp18, label %if.then19, label %if.else56

if.then19:                                        ; preds = %if.end15
  %31 = load ptr, ptr %pGen.addr, align 8
  %pTokenSet20 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 17
  %32 = load ptr, ptr %pTokenSet20, align 8
  store ptr %32, ptr %pTokenSet, align 8
  %33 = load ptr, ptr %pTokenSet, align 8
  %call21 = call i32 @SySetReset(ptr noundef %33)
  %34 = load ptr, ptr %pGen.addr, align 8
  %pRawIn22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 15
  %35 = load ptr, ptr %pRawIn22, align 8
  %sData23 = getelementptr inbounds nuw %struct.SyToken, ptr %35, i32 0, i32 0
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sData23, i32 0, i32 0
  %36 = load ptr, ptr %zString, align 8
  %37 = load ptr, ptr %pGen.addr, align 8
  %pRawIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %37, i32 0, i32 15
  %38 = load ptr, ptr %pRawIn24, align 8
  %sData25 = getelementptr inbounds nuw %struct.SyToken, ptr %38, i32 0, i32 0
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sData25, i32 0, i32 1
  %39 = load i32, ptr %nByte, align 8
  %40 = load ptr, ptr %pGen.addr, align 8
  %pRawIn26 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %40, i32 0, i32 15
  %41 = load ptr, ptr %pRawIn26, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %nLine, align 4
  %43 = load ptr, ptr %pTokenSet, align 8
  %call27 = call i32 @PH7_TokenizePHP(ptr noundef %36, i32 noundef %39, i32 noundef %42, ptr noundef %43)
  %44 = load ptr, ptr %pTokenSet, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %44, i32 0, i32 1
  %45 = load ptr, ptr %pBase, align 8
  %46 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %46, i32 0, i32 12
  store ptr %45, ptr %pIn, align 8
  %47 = load ptr, ptr %pGen.addr, align 8
  %pIn28 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %47, i32 0, i32 12
  %48 = load ptr, ptr %pIn28, align 8
  %49 = load ptr, ptr %pTokenSet, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %49, i32 0, i32 2
  %50 = load i32, ptr %nUsed, align 8
  %idxprom = zext i32 %50 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyToken, ptr %48, i64 %idxprom
  %51 = load ptr, ptr %pGen.addr, align 8
  %pEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %51, i32 0, i32 13
  store ptr %arrayidx, ptr %pEnd, align 8
  %52 = load ptr, ptr %pGen.addr, align 8
  %pRawIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %52, i32 0, i32 15
  %53 = load ptr, ptr %pRawIn29, align 8
  %incdec.ptr30 = getelementptr inbounds nuw %struct.SyToken, ptr %53, i32 1
  store ptr %incdec.ptr30, ptr %pRawIn29, align 8
  %54 = load ptr, ptr %pGen.addr, align 8
  %pIn31 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %54, i32 0, i32 12
  %55 = load ptr, ptr %pIn31, align 8
  %56 = load ptr, ptr %pGen.addr, align 8
  %pEnd32 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %56, i32 0, i32 13
  %57 = load ptr, ptr %pEnd32, align 8
  %cmp33 = icmp ult ptr %55, %57
  br i1 %cmp33, label %land.lhs.true, label %if.end55

land.lhs.true:                                    ; preds = %if.then19
  %58 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %58, i32 0, i32 12
  %59 = load ptr, ptr %pIn34, align 8
  %nType35 = getelementptr inbounds nuw %struct.SyToken, ptr %59, i32 0, i32 1
  %60 = load i32, ptr %nType35, align 8
  %and = and i32 %60, 4194304
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then36, label %if.end55

if.then36:                                        ; preds = %land.lhs.true
  %61 = load ptr, ptr %pGen.addr, align 8
  %pIn37 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %61, i32 0, i32 12
  %62 = load ptr, ptr %pIn37, align 8
  %nType38 = getelementptr inbounds nuw %struct.SyToken, ptr %62, i32 0, i32 1
  store i32 4, ptr %nType38, align 8
  %63 = load ptr, ptr %pGen.addr, align 8
  %pIn39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %63, i32 0, i32 12
  %64 = load ptr, ptr %pIn39, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %64, i32 0, i32 3
  store ptr inttoptr (i64 37 to ptr), ptr %pUserData, align 8
  %65 = load ptr, ptr %pGen.addr, align 8
  %pIn40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %65, i32 0, i32 12
  %66 = load ptr, ptr %pIn40, align 8
  %sData41 = getelementptr inbounds nuw %struct.SyToken, ptr %66, i32 0, i32 0
  %zString42 = getelementptr inbounds nuw %struct.SyString, ptr %sData41, i32 0, i32 0
  store ptr @.str.132, ptr %zString42, align 8
  %67 = load ptr, ptr %pGen.addr, align 8
  %pIn43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %67, i32 0, i32 12
  %68 = load ptr, ptr %pIn43, align 8
  %sData44 = getelementptr inbounds nuw %struct.SyToken, ptr %68, i32 0, i32 0
  %nByte45 = getelementptr inbounds nuw %struct.SyString, ptr %sData44, i32 0, i32 1
  store i32 4, ptr %nByte45, align 8
  %69 = load ptr, ptr %pGen.addr, align 8
  %call46 = call i32 @PH7_CompileExpr(ptr noundef %69, i32 noundef 0, ptr noundef null)
  store i32 %call46, ptr %rc, align 4
  %70 = load i32, ptr %rc, align 4
  %cmp47 = icmp eq i32 %70, -10
  br i1 %cmp47, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then36
  store i32 -10, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.then36
  %71 = load i32, ptr %rc, align 4
  %cmp49 = icmp ne i32 %71, -3
  br i1 %cmp49, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.else
  %72 = load ptr, ptr %pGen.addr, align 8
  %pVm51 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %pVm51, align 8
  %call52 = call i32 @PH7_VmEmitInstr(ptr noundef %73, i32 noundef 13, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.else
  br label %if.end54

if.end54:                                         ; preds = %if.end53
  br label %Consume

if.end55:                                         ; preds = %land.lhs.true, %if.then19
  br label %if.end59

if.else56:                                        ; preds = %if.end15
  %74 = load ptr, ptr %pGen.addr, align 8
  %pEnd57 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %74, i32 0, i32 13
  %75 = load ptr, ptr %pEnd57, align 8
  %76 = load ptr, ptr %pGen.addr, align 8
  %pIn58 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %76, i32 0, i32 12
  store ptr %75, ptr %pIn58, align 8
  store i32 -18, ptr %retval, align 4
  br label %return

if.end59:                                         ; preds = %if.end55
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end59, %if.else56, %if.then48, %if.then
  %77 = load i32, ptr %retval, align 4
  ret i32 %77
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
