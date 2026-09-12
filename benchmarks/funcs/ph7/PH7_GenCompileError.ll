; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyString = type { ptr, i32 }

@.str.37 = external hidden unnamed_addr constant [6 x i8], align 1
@.str.38 = external hidden unnamed_addr constant [3 x i8], align 1
@.str.39 = external hidden unnamed_addr constant [58 x i8], align 1
@.str.40 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.41 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.42 = external hidden unnamed_addr constant [7 x i8], align 1
@.str.43 = external hidden unnamed_addr constant [11 x i8], align 1
@.str.44 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.45 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.46 = external hidden unnamed_addr constant [8 x i8], align 1
@.str.47 = external hidden unnamed_addr constant [2 x i8], align 1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormatAp(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #1

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_GenCompileError(ptr noundef %pGen, i32 noundef %nErrType, i32 noundef %nLine, ptr noundef %zFormat, ...) #1 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %nErrType.addr = alloca i32, align 4
  %nLine.addr = alloca i32, align 4
  %zFormat.addr = alloca ptr, align 8
  %pWorker = alloca ptr, align 8
  %zErr = alloca ptr, align 8
  %pFile = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %rc = alloca i32, align 4
  store ptr %pGen, ptr %pGen.addr, align 8
  store i32 %nErrType, ptr %nErrType.addr, align 4
  store i32 %nLine, ptr %nLine.addr, align 4
  store ptr %zFormat, ptr %zFormat.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %sErrBuf = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 11
  store ptr %sErrBuf, ptr %pWorker, align 8
  store ptr @.str.37, ptr %zErr, align 8
  %1 = load ptr, ptr %pWorker, align 8
  %call = call i32 @SyBlobReset(ptr noundef %1)
  %2 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 19
  %call1 = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call1, ptr %pFile, align 8
  %4 = load ptr, ptr %pFile, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load ptr, ptr %pGen.addr, align 8
  %xErr = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %5, i32 0, i32 6
  %6 = load ptr, ptr %xErr, align 8
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load ptr, ptr %pWorker, align 8
  %8 = load ptr, ptr %pFile, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %zString, align 8
  %10 = load ptr, ptr %pFile, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %10, i32 0, i32 1
  %11 = load i32, ptr %nByte, align 8
  %call3 = call i32 @SyBlobAppend(ptr noundef %7, ptr noundef %9, i32 noundef %11)
  %12 = load ptr, ptr %pWorker, align 8
  %call4 = call i32 @SyBlobAppend(ptr noundef %12, ptr noundef @.str.38, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %13 = load i32, ptr %nErrType.addr, align 4
  %cmp = icmp eq i32 %13, 1
  br i1 %cmp, label %if.then5, label %if.end22

if.then5:                                         ; preds = %if.end
  %14 = load ptr, ptr %pGen.addr, align 8
  %nErr = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 14
  %15 = load i32, ptr %nErr, align 8
  %inc = add i32 %15, 1
  store i32 %inc, ptr %nErr, align 8
  %16 = load ptr, ptr %pGen.addr, align 8
  %nErr6 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %16, i32 0, i32 14
  %17 = load i32, ptr %nErr6, align 8
  %cmp7 = icmp ugt i32 %17, 15
  br i1 %cmp7, label %if.then8, label %if.end21

if.then8:                                         ; preds = %if.then5
  %18 = load ptr, ptr %pGen.addr, align 8
  %xErr9 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %18, i32 0, i32 6
  %19 = load ptr, ptr %xErr9, align 8
  %tobool10 = icmp ne ptr %19, null
  br i1 %tobool10, label %if.then11, label %if.end20

if.then11:                                        ; preds = %if.then8
  %20 = load ptr, ptr %pWorker, align 8
  %21 = load i32, ptr %nLine.addr, align 4
  %call12 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %20, ptr noundef @.str.39, i32 noundef %21)
  %22 = load ptr, ptr %pWorker, align 8
  %nByte13 = getelementptr inbounds nuw %struct.SyBlob, ptr %22, i32 0, i32 2
  %23 = load i32, ptr %nByte13, align 8
  %cmp14 = icmp ugt i32 %23, 0
  br i1 %cmp14, label %if.then15, label %if.end19

if.then15:                                        ; preds = %if.then11
  %24 = load ptr, ptr %pGen.addr, align 8
  %xErr16 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %24, i32 0, i32 6
  %25 = load ptr, ptr %xErr16, align 8
  %26 = load ptr, ptr %pWorker, align 8
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %26, i32 0, i32 1
  %27 = load ptr, ptr %pBlob, align 8
  %28 = load ptr, ptr %pWorker, align 8
  %nByte17 = getelementptr inbounds nuw %struct.SyBlob, ptr %28, i32 0, i32 2
  %29 = load i32, ptr %nByte17, align 8
  %30 = load ptr, ptr %pGen.addr, align 8
  %pErrData = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %30, i32 0, i32 7
  %31 = load ptr, ptr %pErrData, align 8
  %call18 = call i32 %25(ptr noundef %27, i32 noundef %29, ptr noundef %31)
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.then11
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then8
  store i32 -10, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.then5
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end
  %32 = load ptr, ptr %pGen.addr, align 8
  %xErr23 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %32, i32 0, i32 6
  %33 = load ptr, ptr %xErr23, align 8
  %cmp24 = icmp eq ptr %33, null
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end22
  store i32 0, ptr %retval, align 4
  br label %return

if.end26:                                         ; preds = %if.end22
  %34 = load i32, ptr %nErrType.addr, align 4
  switch i32 %34, label %sw.default [
    i32 2, label %sw.bb
    i32 4, label %sw.bb27
    i32 8, label %sw.bb28
    i32 256, label %sw.bb29
    i32 512, label %sw.bb30
    i32 1024, label %sw.bb31
  ]

sw.bb:                                            ; preds = %if.end26
  store ptr @.str.40, ptr %zErr, align 8
  br label %sw.epilog

sw.bb27:                                          ; preds = %if.end26
  store ptr @.str.41, ptr %zErr, align 8
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end26
  store ptr @.str.42, ptr %zErr, align 8
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end26
  store ptr @.str.43, ptr %zErr, align 8
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end26
  store ptr @.str.44, ptr %zErr, align 8
  br label %sw.epilog

sw.bb31:                                          ; preds = %if.end26
  store ptr @.str.45, ptr %zErr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb
  store i32 0, ptr %rc, align 4
  %35 = load ptr, ptr %pWorker, align 8
  %36 = load i32, ptr %nLine.addr, align 4
  %37 = load ptr, ptr %zErr, align 8
  %call32 = call i32 (ptr, ptr, ...) @SyBlobFormat(ptr noundef %35, ptr noundef @.str.46, i32 noundef %36, ptr noundef %37)
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  %38 = load ptr, ptr %pWorker, align 8
  %39 = load ptr, ptr %zFormat.addr, align 8
  %arraydecay33 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %call34 = call i32 @SyBlobFormatAp(ptr noundef %38, ptr noundef %39, ptr noundef %arraydecay33)
  %arraydecay35 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay35)
  %40 = load ptr, ptr %pWorker, align 8
  %call36 = call i32 @SyBlobAppend(ptr noundef %40, ptr noundef @.str.47, i32 noundef 1)
  %41 = load ptr, ptr %pWorker, align 8
  %nByte37 = getelementptr inbounds nuw %struct.SyBlob, ptr %41, i32 0, i32 2
  %42 = load i32, ptr %nByte37, align 8
  %cmp38 = icmp ugt i32 %42, 0
  br i1 %cmp38, label %if.then39, label %if.end45

if.then39:                                        ; preds = %sw.epilog
  %43 = load ptr, ptr %pGen.addr, align 8
  %xErr40 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %43, i32 0, i32 6
  %44 = load ptr, ptr %xErr40, align 8
  %45 = load ptr, ptr %pWorker, align 8
  %pBlob41 = getelementptr inbounds nuw %struct.SyBlob, ptr %45, i32 0, i32 1
  %46 = load ptr, ptr %pBlob41, align 8
  %47 = load ptr, ptr %pWorker, align 8
  %nByte42 = getelementptr inbounds nuw %struct.SyBlob, ptr %47, i32 0, i32 2
  %48 = load i32, ptr %nByte42, align 8
  %49 = load ptr, ptr %pGen.addr, align 8
  %pErrData43 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %49, i32 0, i32 7
  %50 = load ptr, ptr %pErrData43, align 8
  %call44 = call i32 %44(ptr noundef %46, i32 noundef %48, ptr noundef %50)
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %sw.epilog
  %51 = load i32, ptr %rc, align 4
  store i32 %51, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end45, %if.then25, %if.end20
  %52 = load i32, ptr %retval, align 4
  ret i32 %52
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobFormat(ptr noundef, ptr noundef, ...) #1

attributes #0 = { nocallback nofree nosync nounwind willreturn }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
