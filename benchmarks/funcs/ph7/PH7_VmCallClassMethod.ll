; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmInstr = type { i8, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@.str.126 = external hidden unnamed_addr constant [57 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmNewOperandStack(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmByteCodeExec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmCallClassMethod(ptr noundef %pVm, ptr noundef %pThis, ptr noundef %pMethod, ptr noundef %pResult, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %pMethod.addr = alloca ptr, align 8
  %pResult.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %aStack = alloca ptr, align 8
  %aInstr = alloca [2 x %struct.VmInstr], align 16
  %iCursor = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  store ptr %pMethod, ptr %pMethod.addr, align 8
  store ptr %pResult, ptr %pResult.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %1 = load i32, ptr %nArg.addr, align 4
  %add = add nsw i32 2, %1
  %call = call ptr @VmNewOperandStack(ptr noundef %0, i32 noundef %add)
  store ptr %call, ptr %aStack, align 8
  %2 = load ptr, ptr %aStack, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pVm.addr, align 8
  %call1 = call i32 @PH7_VmThrowError(ptr noundef %3, ptr noundef null, i32 noundef 1, ptr noundef @.str.126)
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %apArg.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %6, i64 %idxprom
  %8 = load ptr, ptr %arrayidx, align 8
  %9 = load ptr, ptr %aStack, align 8
  %10 = load i32, ptr %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %arrayidx4 = getelementptr inbounds %struct.ph7_value, ptr %9, i64 %idxprom3
  %call5 = call i32 @PH7_MemObjLoad(ptr noundef %8, ptr noundef %arrayidx4)
  %11 = load ptr, ptr %apArg.addr, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %arrayidx7 = getelementptr inbounds ptr, ptr %11, i64 %idxprom6
  %13 = load ptr, ptr %arrayidx7, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 5
  %14 = load i32, ptr %nIdx, align 8
  %15 = load ptr, ptr %aStack, align 8
  %16 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %arrayidx9 = getelementptr inbounds %struct.ph7_value, ptr %15, i64 %idxprom8
  %nIdx10 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx9, i32 0, i32 5
  store i32 %14, ptr %nIdx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %18 = load i32, ptr %nArg.addr, align 4
  %add11 = add nsw i32 %18, 1
  store i32 %add11, ptr %iCursor, align 4
  %19 = load ptr, ptr %pThis.addr, align 8
  %tobool = icmp ne ptr %19, null
  br i1 %tobool, label %if.then12, label %if.end18

if.then12:                                        ; preds = %for.end
  %20 = load ptr, ptr %pThis.addr, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %20, i32 0, i32 3
  %21 = load i32, ptr %iRef, align 8
  %inc13 = add nsw i32 %21, 1
  store i32 %inc13, ptr %iRef, align 8
  %22 = load ptr, ptr %pThis.addr, align 8
  %23 = load ptr, ptr %aStack, align 8
  %24 = load i32, ptr %i, align 4
  %idxprom14 = sext i32 %24 to i64
  %arrayidx15 = getelementptr inbounds %struct.ph7_value, ptr %23, i64 %idxprom14
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx15, i32 0, i32 1
  store ptr %22, ptr %x, align 8
  %25 = load ptr, ptr %aStack, align 8
  %26 = load i32, ptr %i, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds %struct.ph7_value, ptr %25, i64 %idxprom16
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx17, i32 0, i32 2
  store i32 128, ptr %iFlags, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %for.end
  %27 = load ptr, ptr %aStack, align 8
  %28 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %28 to i64
  %arrayidx20 = getelementptr inbounds %struct.ph7_value, ptr %27, i64 %idxprom19
  %nIdx21 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx20, i32 0, i32 5
  store i32 -1, ptr %nIdx21, align 8
  %29 = load i32, ptr %i, align 4
  %inc22 = add nsw i32 %29, 1
  store i32 %inc22, ptr %i, align 4
  %30 = load ptr, ptr %aStack, align 8
  %31 = load i32, ptr %i, align 4
  %idxprom23 = sext i32 %31 to i64
  %arrayidx24 = getelementptr inbounds %struct.ph7_value, ptr %30, i64 %idxprom23
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx24, i32 0, i32 4
  %call25 = call i32 @SyBlobReset(ptr noundef %sBlob)
  %32 = load ptr, ptr %aStack, align 8
  %33 = load i32, ptr %i, align 4
  %idxprom26 = sext i32 %33 to i64
  %arrayidx27 = getelementptr inbounds %struct.ph7_value, ptr %32, i64 %idxprom26
  %sBlob28 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx27, i32 0, i32 4
  %34 = load ptr, ptr %pMethod.addr, align 8
  %sVmName = getelementptr inbounds nuw %struct.ph7_class_method, ptr %34, i32 0, i32 1
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sVmName, i32 0, i32 0
  %35 = load ptr, ptr %zString, align 8
  %36 = load ptr, ptr %pMethod.addr, align 8
  %sVmName29 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %36, i32 0, i32 1
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sVmName29, i32 0, i32 1
  %37 = load i32, ptr %nByte, align 8
  %call30 = call i32 @SyBlobAppend(ptr noundef %sBlob28, ptr noundef %35, i32 noundef %37)
  %38 = load ptr, ptr %aStack, align 8
  %39 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %39 to i64
  %arrayidx32 = getelementptr inbounds %struct.ph7_value, ptr %38, i64 %idxprom31
  %iFlags33 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx32, i32 0, i32 2
  store i32 1, ptr %iFlags33, align 8
  %40 = load ptr, ptr %aStack, align 8
  %41 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %41 to i64
  %arrayidx35 = getelementptr inbounds %struct.ph7_value, ptr %40, i64 %idxprom34
  %nIdx36 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx35, i32 0, i32 5
  store i32 -1, ptr %nIdx36, align 8
  %arrayidx37 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %iOp = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx37, i32 0, i32 0
  store i8 18, ptr %iOp, align 16
  %42 = load i32, ptr %nArg.addr, align 4
  %arrayidx38 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %iP1 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx38, i32 0, i32 1
  store i32 %42, ptr %iP1, align 4
  %arrayidx39 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx39, i32 0, i32 2
  store i32 0, ptr %iP2, align 8
  %arrayidx40 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %p3 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx40, i32 0, i32 3
  store ptr null, ptr %p3, align 16
  %arrayidx41 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %iOp42 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx41, i32 0, i32 0
  store i8 1, ptr %iOp42, align 8
  %arrayidx43 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %iP144 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx43, i32 0, i32 1
  store i32 1, ptr %iP144, align 4
  %arrayidx45 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %iP246 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx45, i32 0, i32 2
  store i32 0, ptr %iP246, align 8
  %arrayidx47 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %p348 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx47, i32 0, i32 3
  store ptr null, ptr %p348, align 8
  %43 = load ptr, ptr %pVm.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %44 = load ptr, ptr %aStack, align 8
  %45 = load i32, ptr %iCursor, align 4
  %46 = load ptr, ptr %pResult.addr, align 8
  %call49 = call i32 @VmByteCodeExec(ptr noundef %43, ptr noundef %arraydecay, ptr noundef %44, i32 noundef %45, ptr noundef %46, ptr noundef null, i32 noundef 1)
  %47 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %47, i32 0, i32 0
  %48 = load ptr, ptr %aStack, align 8
  %call50 = call i32 @SyMemBackendFree(ptr noundef %sAllocator, ptr noundef %48)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end18, %if.then
  %49 = load i32, ptr %retval, align 4
  ret i32 %49
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
