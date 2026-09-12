; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
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

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_VmPushFilePath(ptr noundef %pVm, ptr noundef %zPath, i32 noundef %nLen, i8 noundef zeroext %bMain, ptr noundef %pNew) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %zPath.addr = alloca ptr, align 8
  %nLen.addr = alloca i32, align 4
  %bMain.addr = alloca i8, align 1
  %pNew.addr = alloca ptr, align 8
  %sPath = alloca %struct.SyString, align 8
  %zDup = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %zPath, ptr %zPath.addr, align 8
  store i32 %nLen, ptr %nLen.addr, align 4
  store i8 %bMain, ptr %bMain.addr, align 1
  store ptr %pNew, ptr %pNew.addr, align 8
  %0 = load i32, ptr %nLen.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %zPath.addr, align 8
  %call = call i32 @SyStrlen(ptr noundef %1)
  store i32 %call, ptr %nLen.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %zPath.addr, align 8
  %4 = load i32, ptr %nLen.addr, align 4
  %call1 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator, ptr noundef %3, i32 noundef %4)
  store ptr %call1, ptr %zDup, align 8
  %5 = load ptr, ptr %zDup, align 8
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %6 = load ptr, ptr %zDup, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 0
  store ptr %6, ptr %zString, align 8
  %7 = load i32, ptr %nLen.addr, align 4
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sPath, i32 0, i32 1
  store i32 %7, ptr %nByte, align 8
  %8 = load i8, ptr %bMain.addr, align 1
  %tobool = icmp ne i8 %8, 0
  br i1 %tobool, label %if.end16, label %if.then5

if.then5:                                         ; preds = %if.end4
  %9 = load ptr, ptr %pVm.addr, align 8
  %call6 = call i32 @VmIsIncludedFile(ptr noundef %9, ptr noundef %sPath)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then5
  %10 = load ptr, ptr %pNew.addr, align 8
  store i32 0, ptr %10, align 4
  br label %if.end15

if.else:                                          ; preds = %if.then5
  %11 = load ptr, ptr %pVm.addr, align 8
  %aIncluded = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 21
  %call9 = call i32 @SySetPut(ptr noundef %aIncluded, ptr noundef %sPath)
  store i32 %call9, ptr %rc, align 4
  %12 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %12, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.else
  %13 = load ptr, ptr %pVm.addr, align 8
  %sAllocator12 = getelementptr inbounds nuw %struct.ph7_vm, ptr %13, i32 0, i32 0
  %14 = load ptr, ptr %zDup, align 8
  %call13 = call i32 @SyMemBackendFree(ptr noundef %sAllocator12, ptr noundef %14)
  %15 = load i32, ptr %rc, align 4
  store i32 %15, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.else
  %16 = load ptr, ptr %pNew.addr, align 8
  store i32 1, ptr %16, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then8
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end4
  %17 = load ptr, ptr %pVm.addr, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 19
  %call17 = call i32 @SySetPut(ptr noundef %aFiles, ptr noundef %sPath)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then11, %if.then3
  %18 = load i32, ptr %retval, align 4
  ret i32 %18
}

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmIsIncludedFile(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
