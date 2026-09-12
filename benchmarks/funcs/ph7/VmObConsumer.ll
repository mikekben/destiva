; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmObEntry = type { %struct.ph7_value, %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStringAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_callable(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmObConsumer(ptr noundef %pData, i32 noundef %nDataLen, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pData.addr = alloca ptr, align 8
  %nDataLen.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %sArg = alloca %struct.ph7_value, align 8
  %apArg = alloca [2 x ptr], align 16
  store ptr %pData, ptr %pData.addr, align 8
  store i32 %nDataLen, ptr %nDataLen.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pUserData.addr, align 8
  store ptr %0, ptr %pVm, align 8
  %1 = load ptr, ptr %pVm, align 8
  %aOB = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 22
  %call = call ptr @SySetPeek(ptr noundef %aOB)
  store ptr %call, ptr %pEntry, align 8
  %2 = load ptr, ptr %pEntry, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pVm, align 8
  %call1 = call i32 @PH7_MemObjInit(ptr noundef %3, ptr noundef %sResult)
  %4 = load ptr, ptr %pEntry, align 8
  %sCallback = getelementptr inbounds nuw %struct.VmObEntry, ptr %4, i32 0, i32 0
  %call2 = call i32 @ph7_value_is_callable(ptr noundef %sCallback)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %5 = load ptr, ptr %pVm, align 8
  %nObDepth = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 36
  %6 = load i32, ptr %nObDepth, align 4
  %cmp3 = icmp slt i32 %6, 15
  br i1 %cmp3, label %if.then4, label %if.end16

if.then4:                                         ; preds = %land.lhs.true
  %7 = load ptr, ptr %pVm, align 8
  %call5 = call i32 @PH7_MemObjInitFromString(ptr noundef %7, ptr noundef %sArg, ptr noundef null)
  %8 = load ptr, ptr %pData.addr, align 8
  %9 = load i32, ptr %nDataLen.addr, align 4
  %call6 = call i32 @PH7_MemObjStringAppend(ptr noundef %sArg, ptr noundef %8, i32 noundef %9)
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %sArg, ptr %arrayidx, align 16
  %10 = load ptr, ptr %pVm, align 8
  %nObDepth7 = getelementptr inbounds nuw %struct.ph7_vm, ptr %10, i32 0, i32 36
  %11 = load i32, ptr %nObDepth7, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %nObDepth7, align 4
  %12 = load ptr, ptr %pVm, align 8
  %13 = load ptr, ptr %pEntry, align 8
  %sCallback8 = getelementptr inbounds nuw %struct.VmObEntry, ptr %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call9 = call i32 @PH7_VmCallUserFunction(ptr noundef %12, ptr noundef %sCallback8, i32 noundef 1, ptr noundef %arraydecay, ptr noundef %sResult)
  %14 = load ptr, ptr %pVm, align 8
  %nObDepth10 = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 36
  %15 = load i32, ptr %nObDepth10, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %nObDepth10, align 4
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 2
  %16 = load i32, ptr %iFlags, align 8
  %and = and i32 %16, 1
  %tobool11 = icmp ne i32 %and, 0
  br i1 %tobool11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.then4
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %17 = load ptr, ptr %pBlob, align 8
  store ptr %17, ptr %pData.addr, align 8
  %sBlob13 = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob13, i32 0, i32 2
  %18 = load i32, ptr %nByte, align 8
  store i32 %18, ptr %nDataLen.addr, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.then4
  %call15 = call i32 @PH7_MemObjRelease(ptr noundef %sArg)
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %land.lhs.true, %if.end
  %19 = load i32, ptr %nDataLen.addr, align 4
  %cmp17 = icmp ugt i32 %19, 0
  br i1 %cmp17, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end16
  %20 = load ptr, ptr %pEntry, align 8
  %sOB = getelementptr inbounds nuw %struct.VmObEntry, ptr %20, i32 0, i32 1
  %21 = load ptr, ptr %pData.addr, align 8
  %22 = load i32, ptr %nDataLen.addr, align 4
  %call19 = call i32 @SyBlobAppend(ptr noundef %sOB, ptr noundef %21, i32 noundef %22)
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end16
  %call21 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %23 = load i32, ptr %retval, align 4
  ret i32 %23
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
