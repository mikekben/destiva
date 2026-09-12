; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.SyString = type { ptr, i32 }
%struct.ph7_class_method = type { %struct.ph7_vm_func, %struct.SyString, i32, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
%struct.SyHashEntry = type { ptr, i32, ptr }

@.str.96 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.125 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.346 = external hidden unnamed_addr constant [15 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_VmRandomString(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemcmp(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyHashGet(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBufferFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInitFuncState(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @PH7_NewClassMethod(ptr noundef %pVm, ptr noundef %pClass, ptr noundef %pName, i32 noundef %nLine, i32 noundef %iProtection, i32 noundef %iFlags, i32 noundef %iFuncFlags) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pClass.addr = alloca ptr, align 8
  %pName.addr = alloca ptr, align 8
  %nLine.addr = alloca i32, align 4
  %iProtection.addr = alloca i32, align 4
  %iFlags.addr = alloca i32, align 4
  %iFuncFlags.addr = alloca i32, align 4
  %pMeth = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pNamePtr = alloca ptr, align 8
  %zSalt = alloca [10 x i8], align 1
  %zName = alloca ptr, align 8
  %nByte = alloca i32, align 4
  %pCurrent = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pClass, ptr %pClass.addr, align 8
  store ptr %pName, ptr %pName.addr, align 8
  store i32 %nLine, ptr %nLine.addr, align 4
  store i32 %iProtection, ptr %iProtection.addr, align 4
  store i32 %iFlags, ptr %iFlags.addr, align 4
  store i32 %iFuncFlags, ptr %iFuncFlags.addr, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 0
  %call = call ptr @SyMemBackendPoolAlloc(ptr noundef %sAllocator, i32 noundef 248)
  store ptr %call, ptr %pMeth, align 8
  %1 = load ptr, ptr %pMeth, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pMeth, align 8
  call void @SyZero(ptr noundef %2, i32 noundef 248)
  %3 = load ptr, ptr %pClass.addr, align 8
  %hMethod = getelementptr inbounds nuw %struct.ph7_class, ptr %3, i32 0, i32 5
  %4 = load ptr, ptr %pName.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %zString, align 8
  %6 = load ptr, ptr %pName.addr, align 8
  %nByte1 = getelementptr inbounds nuw %struct.SyString, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %nByte1, align 8
  %call2 = call ptr @SyHashGet(ptr noundef %hMethod, ptr noundef %5, i32 noundef %7)
  store ptr %call2, ptr %pEntry, align 8
  %8 = load ptr, ptr %pEntry, align 8
  %cmp3 = icmp eq ptr %8, null
  br i1 %cmp3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %9 = load ptr, ptr %pName.addr, align 8
  %nByte5 = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %nByte5, align 8
  %conv = zext i32 %10 to i64
  %add = add i64 10, %conv
  %11 = load ptr, ptr %pClass.addr, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %11, i32 0, i32 2
  %nByte6 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  %12 = load i32, ptr %nByte6, align 8
  %conv7 = zext i32 %12 to i64
  %add8 = add i64 %add, %conv7
  %add9 = add i64 %add8, 7
  %conv10 = trunc i64 %add9 to i32
  store i32 %conv10, ptr %nByte, align 4
  %13 = load ptr, ptr %pVm.addr, align 8
  %sAllocator11 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 0
  %14 = load i32, ptr %nByte, align 4
  %call12 = call ptr @SyMemBackendAlloc(ptr noundef %sAllocator11, i32 noundef %14)
  store ptr %call12, ptr %zName, align 8
  %15 = load ptr, ptr %zName, align 8
  %cmp13 = icmp eq ptr %15, null
  br i1 %cmp13, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.then4
  %16 = load ptr, ptr %pVm.addr, align 8
  %sAllocator16 = getelementptr inbounds nuw %struct.ph7_vm, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %pMeth, align 8
  %call17 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator16, ptr noundef %17)
  store ptr null, ptr %retval, align 8
  br label %return

if.end18:                                         ; preds = %if.then4
  %18 = load ptr, ptr %pMeth, align 8
  %sVmName = getelementptr inbounds nuw %struct.ph7_class_method, ptr %18, i32 0, i32 1
  store ptr %sVmName, ptr %pNamePtr, align 8
  %19 = load ptr, ptr %pVm.addr, align 8
  %arraydecay = getelementptr inbounds [10 x i8], ptr %zSalt, i64 0, i64 0
  call void @PH7_VmRandomString(ptr noundef %19, ptr noundef %arraydecay, i32 noundef 10)
  %20 = load ptr, ptr %zName, align 8
  %21 = load i32, ptr %nByte, align 4
  %22 = load ptr, ptr %pClass.addr, align 8
  %sName19 = getelementptr inbounds nuw %struct.ph7_class, ptr %22, i32 0, i32 2
  %23 = load ptr, ptr %pName.addr, align 8
  %arraydecay20 = getelementptr inbounds [10 x i8], ptr %zSalt, i64 0, i64 0
  %call21 = call i32 (ptr, i32, ptr, ...) @SyBufferFormat(ptr noundef %20, i32 noundef %21, ptr noundef @.str.346, ptr noundef %sName19, ptr noundef %23, i64 noundef 10, ptr noundef %arraydecay20)
  %24 = load ptr, ptr %pNamePtr, align 8
  %nByte22 = getelementptr inbounds nuw %struct.SyString, ptr %24, i32 0, i32 1
  store i32 %call21, ptr %nByte22, align 8
  %25 = load ptr, ptr %zName, align 8
  %26 = load ptr, ptr %pNamePtr, align 8
  %zString23 = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 0
  store ptr %25, ptr %zString23, align 8
  br label %if.end32

if.else:                                          ; preds = %if.end
  %27 = load ptr, ptr %pEntry, align 8
  %pUserData = getelementptr inbounds nuw %struct.SyHashEntry, ptr %27, i32 0, i32 2
  %28 = load ptr, ptr %pUserData, align 8
  store ptr %28, ptr %pCurrent, align 8
  %29 = load ptr, ptr %pMeth, align 8
  %sVmName24 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %29, i32 0, i32 1
  store ptr %sVmName24, ptr %pNamePtr, align 8
  %30 = load ptr, ptr %pCurrent, align 8
  %sVmName25 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %30, i32 0, i32 1
  %zString26 = getelementptr inbounds nuw %struct.SyString, ptr %sVmName25, i32 0, i32 0
  %31 = load ptr, ptr %zString26, align 8
  %32 = load ptr, ptr %pNamePtr, align 8
  %zString27 = getelementptr inbounds nuw %struct.SyString, ptr %32, i32 0, i32 0
  store ptr %31, ptr %zString27, align 8
  %33 = load ptr, ptr %pCurrent, align 8
  %sVmName28 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %33, i32 0, i32 1
  %nByte29 = getelementptr inbounds nuw %struct.SyString, ptr %sVmName28, i32 0, i32 1
  %34 = load i32, ptr %nByte29, align 8
  %35 = load ptr, ptr %pNamePtr, align 8
  %nByte30 = getelementptr inbounds nuw %struct.SyString, ptr %35, i32 0, i32 1
  store i32 %34, ptr %nByte30, align 8
  %36 = load ptr, ptr %pNamePtr, align 8
  %zString31 = getelementptr inbounds nuw %struct.SyString, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %zString31, align 8
  store ptr %37, ptr %zName, align 8
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.end18
  %38 = load i32, ptr %iProtection.addr, align 4
  %cmp33 = icmp ne i32 %38, 1
  br i1 %cmp33, label %if.then35, label %if.end72

if.then35:                                        ; preds = %if.end32
  %39 = load ptr, ptr %pName.addr, align 8
  %nByte36 = getelementptr inbounds nuw %struct.SyString, ptr %39, i32 0, i32 1
  %40 = load i32, ptr %nByte36, align 8
  %conv37 = zext i32 %40 to i64
  %cmp38 = icmp eq i64 %conv37, 11
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then35
  %41 = load ptr, ptr %pName.addr, align 8
  %zString40 = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %zString40, align 8
  %call41 = call i32 @SyMemcmp(ptr noundef %42, ptr noundef @.str.96, i32 noundef 11)
  %cmp42 = icmp eq i32 %call41, 0
  br i1 %cmp42, label %if.then70, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then35
  %43 = load ptr, ptr %pName.addr, align 8
  %nByte44 = getelementptr inbounds nuw %struct.SyString, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %nByte44, align 8
  %conv45 = zext i32 %44 to i64
  %cmp46 = icmp eq i64 %conv45, 10
  br i1 %cmp46, label %land.lhs.true48, label %lor.lhs.false53

land.lhs.true48:                                  ; preds = %lor.lhs.false
  %45 = load ptr, ptr %pName.addr, align 8
  %zString49 = getelementptr inbounds nuw %struct.SyString, ptr %45, i32 0, i32 0
  %46 = load ptr, ptr %zString49, align 8
  %call50 = call i32 @SyMemcmp(ptr noundef %46, ptr noundef @.str.125, i32 noundef 10)
  %cmp51 = icmp eq i32 %call50, 0
  br i1 %cmp51, label %if.then70, label %lor.lhs.false53

lor.lhs.false53:                                  ; preds = %land.lhs.true48, %lor.lhs.false
  %47 = load ptr, ptr %pName.addr, align 8
  %nByte54 = getelementptr inbounds nuw %struct.SyString, ptr %47, i32 0, i32 1
  %48 = load i32, ptr %nByte54, align 8
  %49 = load ptr, ptr %pClass.addr, align 8
  %sName55 = getelementptr inbounds nuw %struct.ph7_class, ptr %49, i32 0, i32 2
  %nByte56 = getelementptr inbounds nuw %struct.SyString, ptr %sName55, i32 0, i32 1
  %50 = load i32, ptr %nByte56, align 8
  %cmp57 = icmp eq i32 %48, %50
  br i1 %cmp57, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false53
  %51 = load ptr, ptr %pName.addr, align 8
  %zString59 = getelementptr inbounds nuw %struct.SyString, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %zString59, align 8
  %53 = load ptr, ptr %pClass.addr, align 8
  %sName60 = getelementptr inbounds nuw %struct.ph7_class, ptr %53, i32 0, i32 2
  %zString61 = getelementptr inbounds nuw %struct.SyString, ptr %sName60, i32 0, i32 0
  %54 = load ptr, ptr %zString61, align 8
  %55 = load ptr, ptr %pClass.addr, align 8
  %sName62 = getelementptr inbounds nuw %struct.ph7_class, ptr %55, i32 0, i32 2
  %nByte63 = getelementptr inbounds nuw %struct.SyString, ptr %sName62, i32 0, i32 1
  %56 = load i32, ptr %nByte63, align 8
  %call64 = call i32 @SyMemcmp(ptr noundef %52, ptr noundef %54, i32 noundef %56)
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false53
  %57 = load ptr, ptr %pName.addr, align 8
  %nByte65 = getelementptr inbounds nuw %struct.SyString, ptr %57, i32 0, i32 1
  %58 = load i32, ptr %nByte65, align 8
  %59 = load ptr, ptr %pClass.addr, align 8
  %sName66 = getelementptr inbounds nuw %struct.ph7_class, ptr %59, i32 0, i32 2
  %nByte67 = getelementptr inbounds nuw %struct.SyString, ptr %sName66, i32 0, i32 1
  %60 = load i32, ptr %nByte67, align 8
  %sub = sub i32 %58, %60
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call64, %cond.true ], [ %sub, %cond.false ]
  %cmp68 = icmp eq i32 %cond, 0
  br i1 %cmp68, label %if.then70, label %if.end71

if.then70:                                        ; preds = %cond.end, %land.lhs.true48, %land.lhs.true
  store i32 1, ptr %iProtection.addr, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %cond.end
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.end32
  %61 = load i32, ptr %iProtection.addr, align 4
  %62 = load ptr, ptr %pMeth, align 8
  %iProtection73 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %62, i32 0, i32 2
  store i32 %61, ptr %iProtection73, align 8
  %63 = load i32, ptr %iFlags.addr, align 4
  %64 = load ptr, ptr %pMeth, align 8
  %iFlags74 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %64, i32 0, i32 3
  store i32 %63, ptr %iFlags74, align 4
  %65 = load i32, ptr %nLine.addr, align 4
  %66 = load ptr, ptr %pMeth, align 8
  %nLine75 = getelementptr inbounds nuw %struct.ph7_class_method, ptr %66, i32 0, i32 5
  store i32 %65, ptr %nLine75, align 4
  %67 = load ptr, ptr %pVm.addr, align 8
  %68 = load ptr, ptr %pMeth, align 8
  %sFunc = getelementptr inbounds nuw %struct.ph7_class_method, ptr %68, i32 0, i32 0
  %69 = load ptr, ptr %zName, align 8
  %70 = load ptr, ptr %pClass.addr, align 8
  %sName76 = getelementptr inbounds nuw %struct.ph7_class, ptr %70, i32 0, i32 2
  %nByte77 = getelementptr inbounds nuw %struct.SyString, ptr %sName76, i32 0, i32 1
  %71 = load i32, ptr %nByte77, align 8
  %conv78 = zext i32 %71 to i64
  %add79 = add i64 4, %conv78
  %arrayidx = getelementptr inbounds nuw i8, ptr %69, i64 %add79
  %72 = load ptr, ptr %pName.addr, align 8
  %nByte80 = getelementptr inbounds nuw %struct.SyString, ptr %72, i32 0, i32 1
  %73 = load i32, ptr %nByte80, align 8
  %74 = load i32, ptr %iFuncFlags.addr, align 4
  %or = or i32 %74, 8
  %75 = load ptr, ptr %pClass.addr, align 8
  %call81 = call i32 @PH7_VmInitFuncState(ptr noundef %67, ptr noundef %sFunc, ptr noundef %arrayidx, i32 noundef %73, i32 noundef %or, ptr noundef %75)
  %76 = load ptr, ptr %pMeth, align 8
  store ptr %76, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end72, %if.then15, %if.then
  %77 = load ptr, ptr %retval, align 8
  ret ptr %77
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
