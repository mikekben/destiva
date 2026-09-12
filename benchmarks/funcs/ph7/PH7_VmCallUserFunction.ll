; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmInstr = type { i8, i32, i32, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

@.str.129 = external hidden unnamed_addr constant [58 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmNewOperandStack(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmByteCodeExec(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjLoad(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ClassExtractMethod(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallClassMethod(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmCallUserFunction(ptr noundef %pVm, ptr noundef %pFunc, i32 noundef %nArg, ptr noundef %apArg, ptr noundef %pResult) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pFunc.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pResult.addr = alloca ptr, align 8
  %aStack = alloca ptr, align 8
  %aInstr = alloca [2 x %struct.VmInstr], align 16
  %i = alloca i32, align 4
  %pMap = alloca ptr, align 8
  %pMethod = alloca ptr, align 8
  %pThis = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pFunc, ptr %pFunc.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr %pResult, ptr %pResult.addr, align 8
  %0 = load ptr, ptr %pFunc.addr, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %0, i32 0, i32 2
  %1 = load i32, ptr %iFlags, align 8
  %and = and i32 %1, 65
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pResult.addr, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %3 = load ptr, ptr %pResult.addr, align 8
  %call = call i32 @PH7_MemObjRelease(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  store i32 -9, ptr %retval, align 4
  br label %return

if.end2:                                          ; preds = %entry
  %4 = load ptr, ptr %pFunc.addr, align 8
  %iFlags3 = getelementptr inbounds nuw %struct.ph7_value, ptr %4, i32 0, i32 2
  %5 = load i32, ptr %iFlags3, align 8
  %and4 = and i32 %5, 64
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then6, label %if.end57

if.then6:                                         ; preds = %if.end2
  %6 = load ptr, ptr %pFunc.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %6, i32 0, i32 1
  %7 = load ptr, ptr %x, align 8
  store ptr %7, ptr %pMap, align 8
  store ptr null, ptr %pMethod, align 8
  store ptr null, ptr %pThis, align 8
  store ptr null, ptr %pClass, align 8
  %8 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %8, i32 0, i32 6
  %9 = load i32, ptr %nEntry, align 4
  %cmp7 = icmp ult i32 %9, 2
  br i1 %cmp7, label %if.then8, label %if.end13

if.then8:                                         ; preds = %if.then6
  %10 = load ptr, ptr %pResult.addr, align 8
  %tobool9 = icmp ne ptr %10, null
  br i1 %tobool9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.then8
  %11 = load ptr, ptr %pResult.addr, align 8
  %call11 = call i32 @PH7_MemObjRelease(ptr noundef %11)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.then8
  store i32 0, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.then6
  %12 = load ptr, ptr %pVm.addr, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %13, i32 0, i32 2
  %14 = load ptr, ptr %pFirst, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 5
  %15 = load i32, ptr %nValIdx, align 8
  %call14 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %15)
  store ptr %call14, ptr %pValue, align 8
  %16 = load ptr, ptr %pValue, align 8
  %tobool15 = icmp ne ptr %16, null
  br i1 %tobool15, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  %17 = load ptr, ptr %pVm.addr, align 8
  %18 = load ptr, ptr %pValue, align 8
  %call17 = call ptr @VmExtractClassFromValue(ptr noundef %17, ptr noundef %18)
  store ptr %call17, ptr %pClass, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13
  %19 = load ptr, ptr %pClass, align 8
  %cmp19 = icmp eq ptr %19, null
  br i1 %cmp19, label %if.then20, label %if.end25

if.then20:                                        ; preds = %if.end18
  %20 = load ptr, ptr %pResult.addr, align 8
  %tobool21 = icmp ne ptr %20, null
  br i1 %tobool21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %if.then20
  %21 = load ptr, ptr %pResult.addr, align 8
  %call23 = call i32 @PH7_MemObjRelease(ptr noundef %21)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20
  store i32 0, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %if.end18
  %22 = load ptr, ptr %pValue, align 8
  %iFlags26 = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %iFlags26, align 8
  %and27 = and i32 %23, 128
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  %24 = load ptr, ptr %pValue, align 8
  %x30 = getelementptr inbounds nuw %struct.ph7_value, ptr %24, i32 0, i32 1
  %25 = load ptr, ptr %x30, align 8
  store ptr %25, ptr %pThis, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25
  %26 = load ptr, ptr %pVm.addr, align 8
  %aMemObj32 = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 6
  %27 = load ptr, ptr %pMap, align 8
  %pFirst33 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pFirst33, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %28, i32 0, i32 7
  %29 = load ptr, ptr %pPrev, align 8
  %nValIdx34 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %29, i32 0, i32 5
  %30 = load i32, ptr %nValIdx34, align 8
  %call35 = call ptr @SySetAt(ptr noundef %aMemObj32, i32 noundef %30)
  store ptr %call35, ptr %pValue, align 8
  %31 = load ptr, ptr %pValue, align 8
  %tobool36 = icmp ne ptr %31, null
  br i1 %tobool36, label %if.then37, label %if.end48

if.then37:                                        ; preds = %if.end31
  %32 = load ptr, ptr %pValue, align 8
  %iFlags38 = getelementptr inbounds nuw %struct.ph7_value, ptr %32, i32 0, i32 2
  %33 = load i32, ptr %iFlags38, align 8
  %and39 = and i32 %33, 1
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %land.lhs.true, label %if.end47

land.lhs.true:                                    ; preds = %if.then37
  %34 = load ptr, ptr %pValue, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %34, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 2
  %35 = load i32, ptr %nByte, align 8
  %cmp41 = icmp ugt i32 %35, 0
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %land.lhs.true
  %36 = load ptr, ptr %pClass, align 8
  %37 = load ptr, ptr %pValue, align 8
  %sBlob43 = getelementptr inbounds nuw %struct.ph7_value, ptr %37, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob43, i32 0, i32 1
  %38 = load ptr, ptr %pBlob, align 8
  %39 = load ptr, ptr %pValue, align 8
  %sBlob44 = getelementptr inbounds nuw %struct.ph7_value, ptr %39, i32 0, i32 4
  %nByte45 = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob44, i32 0, i32 2
  %40 = load i32, ptr %nByte45, align 8
  %call46 = call ptr @PH7_ClassExtractMethod(ptr noundef %36, ptr noundef %38, i32 noundef %40)
  store ptr %call46, ptr %pMethod, align 8
  br label %if.end47

if.end47:                                         ; preds = %if.then42, %land.lhs.true, %if.then37
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end31
  %41 = load ptr, ptr %pMethod, align 8
  %cmp49 = icmp eq ptr %41, null
  br i1 %cmp49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %if.end48
  %42 = load ptr, ptr %pResult.addr, align 8
  %tobool51 = icmp ne ptr %42, null
  br i1 %tobool51, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.then50
  %43 = load ptr, ptr %pResult.addr, align 8
  %call53 = call i32 @PH7_MemObjRelease(ptr noundef %43)
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.then50
  store i32 0, ptr %retval, align 4
  br label %return

if.end55:                                         ; preds = %if.end48
  %44 = load ptr, ptr %pVm.addr, align 8
  %45 = load ptr, ptr %pThis, align 8
  %46 = load ptr, ptr %pMethod, align 8
  %47 = load ptr, ptr %pResult.addr, align 8
  %48 = load i32, ptr %nArg.addr, align 4
  %49 = load ptr, ptr %apArg.addr, align 8
  %call56 = call i32 @PH7_VmCallClassMethod(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %48, ptr noundef %49)
  store i32 %call56, ptr %rc, align 4
  %50 = load i32, ptr %rc, align 4
  store i32 %50, ptr %retval, align 4
  br label %return

if.end57:                                         ; preds = %if.end2
  %51 = load ptr, ptr %pVm.addr, align 8
  %52 = load i32, ptr %nArg.addr, align 4
  %add = add nsw i32 1, %52
  %call58 = call ptr @VmNewOperandStack(ptr noundef %51, i32 noundef %add)
  store ptr %call58, ptr %aStack, align 8
  %53 = load ptr, ptr %aStack, align 8
  %cmp59 = icmp eq ptr %53, null
  br i1 %cmp59, label %if.then60, label %if.end66

if.then60:                                        ; preds = %if.end57
  %54 = load ptr, ptr %pVm.addr, align 8
  %call61 = call i32 @PH7_VmThrowError(ptr noundef %54, ptr noundef null, i32 noundef 1, ptr noundef @.str.129)
  %55 = load ptr, ptr %pResult.addr, align 8
  %tobool62 = icmp ne ptr %55, null
  br i1 %tobool62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.then60
  %56 = load ptr, ptr %pResult.addr, align 8
  %call64 = call i32 @PH7_MemObjRelease(ptr noundef %56)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.then60
  store i32 -1, ptr %retval, align 4
  br label %return

if.end66:                                         ; preds = %if.end57
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end66
  %57 = load i32, ptr %i, align 4
  %58 = load i32, ptr %nArg.addr, align 4
  %cmp67 = icmp slt i32 %57, %58
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %59 = load ptr, ptr %apArg.addr, align 8
  %60 = load i32, ptr %i, align 4
  %idxprom = sext i32 %60 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %59, i64 %idxprom
  %61 = load ptr, ptr %arrayidx, align 8
  %62 = load ptr, ptr %aStack, align 8
  %63 = load i32, ptr %i, align 4
  %idxprom68 = sext i32 %63 to i64
  %arrayidx69 = getelementptr inbounds %struct.ph7_value, ptr %62, i64 %idxprom68
  %call70 = call i32 @PH7_MemObjLoad(ptr noundef %61, ptr noundef %arrayidx69)
  %64 = load ptr, ptr %apArg.addr, align 8
  %65 = load i32, ptr %i, align 4
  %idxprom71 = sext i32 %65 to i64
  %arrayidx72 = getelementptr inbounds ptr, ptr %64, i64 %idxprom71
  %66 = load ptr, ptr %arrayidx72, align 8
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %66, i32 0, i32 5
  %67 = load i32, ptr %nIdx, align 8
  %68 = load ptr, ptr %aStack, align 8
  %69 = load i32, ptr %i, align 4
  %idxprom73 = sext i32 %69 to i64
  %arrayidx74 = getelementptr inbounds %struct.ph7_value, ptr %68, i64 %idxprom73
  %nIdx75 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx74, i32 0, i32 5
  store i32 %67, ptr %nIdx75, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %70 = load i32, ptr %i, align 4
  %inc = add nsw i32 %70, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %71 = load ptr, ptr %pFunc.addr, align 8
  %72 = load ptr, ptr %aStack, align 8
  %73 = load i32, ptr %i, align 4
  %idxprom76 = sext i32 %73 to i64
  %arrayidx77 = getelementptr inbounds %struct.ph7_value, ptr %72, i64 %idxprom76
  %call78 = call i32 @PH7_MemObjLoad(ptr noundef %71, ptr noundef %arrayidx77)
  %74 = load ptr, ptr %aStack, align 8
  %75 = load i32, ptr %i, align 4
  %idxprom79 = sext i32 %75 to i64
  %arrayidx80 = getelementptr inbounds %struct.ph7_value, ptr %74, i64 %idxprom79
  %nIdx81 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx80, i32 0, i32 5
  store i32 -1, ptr %nIdx81, align 8
  %arrayidx82 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %iOp = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx82, i32 0, i32 0
  store i8 18, ptr %iOp, align 16
  %76 = load i32, ptr %nArg.addr, align 4
  %arrayidx83 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %iP1 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx83, i32 0, i32 1
  store i32 %76, ptr %iP1, align 4
  %arrayidx84 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %iP2 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx84, i32 0, i32 2
  store i32 0, ptr %iP2, align 8
  %arrayidx85 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %p3 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx85, i32 0, i32 3
  store ptr null, ptr %p3, align 16
  %arrayidx86 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %iOp87 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx86, i32 0, i32 0
  store i8 1, ptr %iOp87, align 8
  %arrayidx88 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %iP189 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx88, i32 0, i32 1
  store i32 1, ptr %iP189, align 4
  %arrayidx90 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %iP291 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx90, i32 0, i32 2
  store i32 0, ptr %iP291, align 8
  %arrayidx92 = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 1
  %p393 = getelementptr inbounds nuw %struct.VmInstr, ptr %arrayidx92, i32 0, i32 3
  store ptr null, ptr %p393, align 8
  %77 = load ptr, ptr %pVm.addr, align 8
  %arraydecay = getelementptr inbounds [2 x %struct.VmInstr], ptr %aInstr, i64 0, i64 0
  %78 = load ptr, ptr %aStack, align 8
  %79 = load i32, ptr %nArg.addr, align 4
  %80 = load ptr, ptr %pResult.addr, align 8
  %call94 = call i32 @VmByteCodeExec(ptr noundef %77, ptr noundef %arraydecay, ptr noundef %78, i32 noundef %79, ptr noundef %80, ptr noundef null, i32 noundef 1)
  %81 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %81, i32 0, i32 0
  %82 = load ptr, ptr %aStack, align 8
  %call95 = call i32 @SyMemBackendFree(ptr noundef %sAllocator, ptr noundef %82)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.end65, %if.end55, %if.end54, %if.end24, %if.end12, %if.end
  %83 = load i32, ptr %retval, align 4
  ret i32 %83
}

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractClassFromValue(ptr noundef, ptr noundef) #0

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
