; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileScript(ptr noundef %pVm, ptr noundef %pScript, i32 noundef %iFlags) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pScript.addr = alloca ptr, align 8
  %iFlags.addr = alloca i32, align 4
  %aPhpToken = alloca %struct.SySet, align 8
  %aRawToken = alloca %struct.SySet, align 8
  %pCodeGen = alloca ptr, align 8
  %pRawObj = alloca ptr, align 8
  %nObjIdx = alloca i32, align 4
  %nRawObj = alloca i32, align 4
  %is_expr = alloca i32, align 4
  %rc = alloca i32, align 4
  %sTmp = alloca %struct.SyToken, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pScript, ptr %pScript.addr, align 8
  store i32 %iFlags, ptr %iFlags.addr, align 4
  %0 = load ptr, ptr %pScript.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %nByte, align 8
  %cmp = icmp ult i32 %1, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 0
  %call = call i32 @SySetInit(ptr noundef %aRawToken, ptr noundef %sAllocator, i32 noundef 32)
  %3 = load ptr, ptr %pVm.addr, align 8
  %sAllocator1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 0
  %call2 = call i32 @SySetInit(ptr noundef %aPhpToken, ptr noundef %sAllocator1, i32 noundef 32)
  %call3 = call i32 @SySetAlloc(ptr noundef %aPhpToken, i32 noundef 192)
  store i32 0, ptr %is_expr, align 4
  %4 = load i32, ptr %iFlags.addr, align 4
  %and = and i32 %4, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %sTmp, i32 0, i32 2
  store i32 1, ptr %nLine, align 4
  %nType = getelementptr inbounds nuw %struct.SyToken, ptr %sTmp, i32 0, i32 1
  store i32 2, ptr %nType, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyToken, ptr %sTmp, i32 0, i32 3
  store ptr null, ptr %pUserData, align 8
  %5 = load ptr, ptr %pScript.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %zString, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %sTmp, i32 0, i32 0
  %zString5 = getelementptr inbounds nuw %struct.SyString, ptr %sData, i32 0, i32 0
  store ptr %6, ptr %zString5, align 8
  %7 = load ptr, ptr %pScript.addr, align 8
  %nByte6 = getelementptr inbounds nuw %struct.SyString, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %nByte6, align 8
  %sData7 = getelementptr inbounds nuw %struct.SyToken, ptr %sTmp, i32 0, i32 0
  %nByte8 = getelementptr inbounds nuw %struct.SyString, ptr %sData7, i32 0, i32 1
  store i32 %8, ptr %nByte8, align 8
  %call9 = call i32 @SySetPut(ptr noundef %aRawToken, ptr noundef %sTmp)
  %9 = load i32, ptr %iFlags.addr, align 4
  %and10 = and i32 %9, 2
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.then4
  store i32 1, ptr %is_expr, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then4
  br label %if.end18

if.else:                                          ; preds = %if.end
  %call14 = call i32 @SySetAlloc(ptr noundef %aRawToken, i32 noundef 32)
  %10 = load ptr, ptr %pScript.addr, align 8
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %zString15, align 8
  %12 = load ptr, ptr %pScript.addr, align 8
  %nByte16 = getelementptr inbounds nuw %struct.SyString, ptr %12, i32 0, i32 1
  %13 = load i32, ptr %nByte16, align 8
  %call17 = call i32 @PH7_TokenizeRawText(ptr noundef %11, i32 noundef %13, ptr noundef %aRawToken)
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.end13
  %14 = load ptr, ptr %pVm.addr, align 8
  %sCodeGen = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 54
  store ptr %sCodeGen, ptr %pCodeGen, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aRawToken, i32 0, i32 1
  %15 = load ptr, ptr %pBase, align 8
  %16 = load ptr, ptr %pCodeGen, align 8
  %pRawIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 15
  store ptr %15, ptr %pRawIn, align 8
  %17 = load ptr, ptr %pCodeGen, align 8
  %pRawIn19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %17, i32 0, i32 15
  %18 = load ptr, ptr %pRawIn19, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aRawToken, i32 0, i32 2
  %19 = load i32, ptr %nUsed, align 8
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds nuw %struct.SyToken, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %pCodeGen, align 8
  %pRawEnd = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %20, i32 0, i32 16
  store ptr %arrayidx, ptr %pRawEnd, align 8
  store i32 0, ptr %rc, align 4
  %21 = load i32, ptr %is_expr, align 4
  %tobool20 = icmp ne i32 %21, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end18
  %22 = load ptr, ptr %pCodeGen, align 8
  %call22 = call i32 @PH7_CompilePHP(ptr noundef %22, ptr noundef %aPhpToken, i32 noundef 1)
  store i32 %call22, ptr %rc, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  store i32 0, ptr %nObjIdx, align 4
  br label %for.cond

for.cond:                                         ; preds = %if.end57, %if.end37, %if.end23
  %23 = load ptr, ptr %pCodeGen, align 8
  %pRawIn24 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %23, i32 0, i32 15
  %24 = load ptr, ptr %pRawIn24, align 8
  %25 = load ptr, ptr %pCodeGen, align 8
  %pRawEnd25 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %25, i32 0, i32 16
  %26 = load ptr, ptr %pRawEnd25, align 8
  %cmp26 = icmp uge ptr %24, %26
  br i1 %cmp26, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.cond
  br label %for.end

if.end28:                                         ; preds = %for.cond
  %27 = load ptr, ptr %pCodeGen, align 8
  %pRawIn29 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %27, i32 0, i32 15
  %28 = load ptr, ptr %pRawIn29, align 8
  %nType30 = getelementptr inbounds nuw %struct.SyToken, ptr %28, i32 0, i32 1
  %29 = load i32, ptr %nType30, align 8
  %and31 = and i32 %29, 2
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %if.then33, label %if.end38

if.then33:                                        ; preds = %if.end28
  %30 = load ptr, ptr %pCodeGen, align 8
  %call34 = call i32 @PH7_CompilePHP(ptr noundef %30, ptr noundef %aPhpToken, i32 noundef 0)
  store i32 %call34, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp35 = icmp eq i32 %31, -10
  br i1 %cmp35, label %if.then36, label %if.end37

if.then36:                                        ; preds = %if.then33
  br label %for.end

if.end37:                                         ; preds = %if.then33
  br label %for.cond

if.end38:                                         ; preds = %if.end28
  store i32 0, ptr %nRawObj, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end48, %if.end38
  %32 = load ptr, ptr %pCodeGen, align 8
  %pRawIn39 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 15
  %33 = load ptr, ptr %pRawIn39, align 8
  %34 = load ptr, ptr %pCodeGen, align 8
  %pRawEnd40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %34, i32 0, i32 16
  %35 = load ptr, ptr %pRawEnd40, align 8
  %cmp41 = icmp ult ptr %33, %35
  br i1 %cmp41, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %36 = load ptr, ptr %pCodeGen, align 8
  %pRawIn42 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %36, i32 0, i32 15
  %37 = load ptr, ptr %pRawIn42, align 8
  %nType43 = getelementptr inbounds nuw %struct.SyToken, ptr %37, i32 0, i32 1
  %38 = load i32, ptr %nType43, align 8
  %cmp44 = icmp ne i32 %38, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %cmp44, %land.rhs ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load ptr, ptr %pVm.addr, align 8
  %call45 = call ptr @PH7_ReserveConstObj(ptr noundef %40, ptr noundef %nObjIdx)
  store ptr %call45, ptr %pRawObj, align 8
  %41 = load ptr, ptr %pRawObj, align 8
  %cmp46 = icmp eq ptr %41, null
  br i1 %cmp46, label %if.then47, label %if.end48

if.then47:                                        ; preds = %while.body
  store i32 -1, ptr %rc, align 4
  br label %while.end

if.end48:                                         ; preds = %while.body
  %42 = load ptr, ptr %pVm.addr, align 8
  %43 = load ptr, ptr %pRawObj, align 8
  %44 = load ptr, ptr %pCodeGen, align 8
  %pRawIn49 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %44, i32 0, i32 15
  %45 = load ptr, ptr %pRawIn49, align 8
  %sData50 = getelementptr inbounds nuw %struct.SyToken, ptr %45, i32 0, i32 0
  %call51 = call i32 @PH7_MemObjInitFromString(ptr noundef %42, ptr noundef %43, ptr noundef %sData50)
  %46 = load ptr, ptr %pVm.addr, align 8
  %47 = load i32, ptr %nObjIdx, align 4
  %call52 = call i32 @PH7_VmEmitInstr(ptr noundef %46, i32 noundef 4, i32 noundef 0, i32 noundef %47, ptr noundef null, ptr noundef null)
  %48 = load i32, ptr %nRawObj, align 4
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr %nRawObj, align 4
  %49 = load ptr, ptr %pCodeGen, align 8
  %pRawIn53 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 15
  %50 = load ptr, ptr %pRawIn53, align 8
  %incdec.ptr = getelementptr inbounds nuw %struct.SyToken, ptr %50, i32 1
  store ptr %incdec.ptr, ptr %pRawIn53, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then47, %land.end
  %51 = load i32, ptr %nRawObj, align 4
  %cmp54 = icmp sgt i32 %51, 0
  br i1 %cmp54, label %if.then55, label %if.end57

if.then55:                                        ; preds = %while.end
  %52 = load ptr, ptr %pVm.addr, align 8
  %53 = load i32, ptr %nRawObj, align 4
  %call56 = call i32 @PH7_VmEmitInstr(ptr noundef %52, i32 noundef 69, i32 noundef %53, i32 noundef 0, ptr noundef null, ptr noundef null)
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %while.end
  br label %for.cond

for.end:                                          ; preds = %if.then36, %if.then27
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then21
  %call58 = call i32 @SySetRelease(ptr noundef %aRawToken)
  %call59 = call i32 @SySetRelease(ptr noundef %aPhpToken)
  %54 = load i32, ptr %rc, align 4
  store i32 %54, ptr %retval, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then
  %55 = load i32, ptr %retval, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveConstObj(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmEmitInstr(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_TokenizeRawText(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_CompilePHP(ptr noundef, ptr noundef, i32 noundef) #0

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
