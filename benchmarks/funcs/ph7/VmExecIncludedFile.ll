; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmEvalChunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmExecIncludedFile(ptr noundef %pCtx, ptr noundef %pPath, i32 noundef %IncludeOnce) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %pPath.addr = alloca ptr, align 8
  %IncludeOnce.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pStream = alloca ptr, align 8
  %sContents = alloca %struct.SyBlob, align 8
  %pHandle = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %isNew = alloca i32, align 4
  %sScript = alloca %struct.SyString, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pPath, ptr %pPath.addr, align 8
  store i32 %IncludeOnce, ptr %IncludeOnce.addr, align 4
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 0
  %call = call i32 @SyBlobInit(ptr noundef %sContents, ptr noundef %sAllocator)
  store i32 0, ptr %isNew, align 4
  %3 = load ptr, ptr %pVm, align 8
  %4 = load ptr, ptr %pPath.addr, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pPath.addr, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %nByte, align 8
  %call2 = call ptr @PH7_VmGetStreamDevice(ptr noundef %3, ptr noundef %zString, i32 noundef %6)
  store ptr %call2, ptr %pStream, align 8
  %7 = load ptr, ptr %pVm, align 8
  %8 = load ptr, ptr %pStream, align 8
  %9 = load ptr, ptr %pPath.addr, align 8
  %zString3 = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %zString3, align 8
  %call4 = call ptr @PH7_StreamOpenHandle(ptr noundef %7, ptr noundef %8, ptr noundef %10, i32 noundef 1, i32 noundef 1, ptr noundef null, i32 noundef 1, ptr noundef %isNew)
  store ptr %call4, ptr %pHandle, align 8
  %11 = load ptr, ptr %pHandle, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %rc, align 4
  %12 = load i32, ptr %IncludeOnce.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %13 = load i32, ptr %isNew, align 4
  %tobool5 = icmp ne i32 %13, 0
  br i1 %tobool5, label %if.else, label %if.then6

if.then6:                                         ; preds = %land.lhs.true
  store i32 -11, ptr %rc, align 4
  br label %if.end16

if.else:                                          ; preds = %land.lhs.true, %if.end
  %14 = load ptr, ptr %pHandle, align 8
  %15 = load ptr, ptr %pStream, align 8
  %call7 = call i32 @PH7_StreamReadWholeFile(ptr noundef %14, ptr noundef %15, ptr noundef %sContents)
  store i32 %call7, ptr %rc, align 4
  %16 = load i32, ptr %rc, align 4
  %cmp8 = icmp eq i32 %16, 0
  br i1 %cmp8, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.else
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sContents, i32 0, i32 1
  %17 = load ptr, ptr %pBlob, align 8
  %zString10 = getelementptr inbounds nuw %struct.SyString, ptr %sScript, i32 0, i32 0
  store ptr %17, ptr %zString10, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyBlob, ptr %sContents, i32 0, i32 2
  %18 = load i32, ptr %nByte11, align 8
  %nByte12 = getelementptr inbounds nuw %struct.SyString, ptr %sScript, i32 0, i32 1
  store i32 %18, ptr %nByte12, align 8
  %19 = load ptr, ptr %pCtx.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_context, ptr %19, i32 0, i32 4
  %20 = load ptr, ptr %pVm13, align 8
  %21 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @VmEvalChunk(ptr noundef %20, ptr noundef %21, ptr noundef %sScript, i32 noundef 0, i32 noundef 1)
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then6
  %22 = load ptr, ptr %pVm, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %22, i32 0, i32 19
  %call17 = call ptr @SySetPop(ptr noundef %aFiles)
  %23 = load ptr, ptr %pStream, align 8
  %24 = load ptr, ptr %pHandle, align 8
  call void @PH7_StreamCloseHandle(ptr noundef %23, ptr noundef %24)
  %call18 = call i32 @SyBlobRelease(ptr noundef %sContents)
  %25 = load i32, ptr %rc, align 4
  store i32 %25, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmGetStreamDevice(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_StreamOpenHandle(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_StreamReadWholeFile(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_StreamCloseHandle(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
