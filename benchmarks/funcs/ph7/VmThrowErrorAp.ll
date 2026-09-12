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
%struct.SyString = type { ptr, i32 }

@.str.61 = external hidden unnamed_addr constant [2 x i8], align 1
@.str.114 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.115 = external hidden unnamed_addr constant [10 x i8], align 1
@.str.116 = external hidden unnamed_addr constant [9 x i8], align 1
@.str.117 = external hidden unnamed_addr constant [5 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyStrlen(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormatAp(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmThrowErrorAp(ptr noundef %pVm, ptr noundef %pFuncName, i32 noundef %iErr, ptr noundef %zFormat, ptr noundef %ap) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pFuncName.addr = alloca ptr, align 8
  %iErr.addr = alloca i32, align 4
  %zFormat.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %pWorker = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pFuncName, ptr %pFuncName.addr, align 8
  store i32 %iErr, ptr %iErr.addr, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  store ptr %ap, ptr %ap.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %sWorker = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 17
  store ptr %sWorker, ptr %pWorker, align 8
  %1 = load ptr, ptr %pVm.addr, align 8
  %bErrReport = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 33
  %2 = load i32, ptr %bErrReport, align 8
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %pWorker, align 8
  %call = call i32 @SyBlobReset(ptr noundef %3)
  %4 = load ptr, ptr %pVm.addr, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 19
  %call1 = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call1, ptr %pFile, align 8
  %5 = load ptr, ptr %pFile, align 8
  %tobool2 = icmp ne ptr %5, null
  br i1 %tobool2, label %if.then3, label %if.end6

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %pWorker, align 8
  %7 = load ptr, ptr %pFile, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %zString, align 8
  %9 = load ptr, ptr %pFile, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %9, i32 0, i32 1
  %10 = load i32, ptr %nByte, align 8
  %call4 = call i32 @SyBlobAppend(ptr noundef %6, ptr noundef %8, i32 noundef %10)
  %11 = load ptr, ptr %pWorker, align 8
  %call5 = call i32 @SyBlobAppend(ptr noundef %11, ptr noundef @.str.61, i32 noundef 1)
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end
  store ptr @.str.114, ptr %zErr, align 8
  %12 = load i32, ptr %iErr.addr, align 4
  switch i32 %12, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end6
  store ptr @.str.115, ptr %zErr, align 8
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  store ptr @.str.116, ptr %zErr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end6
  store i32 1, ptr %iErr.addr, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  %13 = load ptr, ptr %pWorker, align 8
  %14 = load ptr, ptr %zErr, align 8
  %15 = load ptr, ptr %zErr, align 8
  %call8 = call i32 @SyStrlen(ptr noundef %15)
  %call9 = call i32 @SyBlobAppend(ptr noundef %13, ptr noundef %14, i32 noundef %call8)
  %16 = load ptr, ptr %pFuncName.addr, align 8
  %tobool10 = icmp ne ptr %16, null
  br i1 %tobool10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %sw.epilog
  %17 = load ptr, ptr %pWorker, align 8
  %18 = load ptr, ptr %pFuncName.addr, align 8
  %zString12 = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 0
  %19 = load ptr, ptr %zString12, align 8
  %20 = load ptr, ptr %pFuncName.addr, align 8
  %nByte13 = getelementptr inbounds nuw %struct.SyString, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %nByte13, align 8
  %call14 = call i32 @SyBlobAppend(ptr noundef %17, ptr noundef %19, i32 noundef %21)
  %22 = load ptr, ptr %pWorker, align 8
  %call15 = call i32 @SyBlobAppend(ptr noundef %22, ptr noundef @.str.117, i32 noundef 4)
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %sw.epilog
  %23 = load ptr, ptr %pWorker, align 8
  %24 = load ptr, ptr %zFormat.addr, align 8
  %25 = load ptr, ptr %ap.addr, align 8
  %call17 = call i32 @SyBlobFormatAp(ptr noundef %23, ptr noundef %24, ptr noundef %25)
  %26 = load ptr, ptr %pVm.addr, align 8
  %27 = load ptr, ptr %pWorker, align 8
  %call18 = call i32 @VmCallErrorHandler(ptr noundef %26, ptr noundef %27)
  store i32 %call18, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end16, %if.then
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmCallErrorHandler(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
