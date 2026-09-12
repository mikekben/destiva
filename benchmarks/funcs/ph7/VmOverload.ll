; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }
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
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden ptr @VmOverload(ptr noundef %pVm, ptr noundef %pList, ptr noundef %aArg, i32 noundef %nArg) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %pList.addr = alloca ptr, align 8
  %aArg.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %iTarget = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %iCur = alloca i32, align 4
  %iMax = alloca i32, align 4
  %apSet = alloca [10 x ptr], align 16
  %pLink = alloca ptr, align 8
  %sArgSig = alloca %struct.SyString, align 8
  %sSig = alloca %struct.SyBlob, align 8
  %c = alloca i32, align 4
  %pClass = alloca ptr, align 8
  %pName = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pList, ptr %pList.addr, align 8
  store ptr %aArg, ptr %aArg.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  %0 = load ptr, ptr %pList.addr, align 8
  store ptr %0, ptr %pLink, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end4, %entry
  %1 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %1, 10
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %pLink, align 8
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %3 = load ptr, ptr %pLink, align 8
  %aArgs = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %3, i32 0, i32 0
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aArgs, i32 0, i32 2
  %4 = load i32, ptr %nUsed, align 8
  %5 = load i32, ptr %nArg.addr, align 4
  %cmp2 = icmp eq i32 %4, %5
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %pLink, align 8
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %apSet, i64 0, i64 %idxprom
  store ptr %6, ptr %arrayidx, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end
  %8 = load ptr, ptr %pLink, align 8
  %pNextName = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %8, i32 0, i32 8
  %9 = load ptr, ptr %pNextName, align 8
  store ptr %9, ptr %pLink, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %10, 1
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.end
  %11 = load ptr, ptr %pList.addr, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

if.end7:                                          ; preds = %while.end
  %12 = load i32, ptr %nArg.addr, align 4
  %cmp8 = icmp slt i32 %12, 1
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end7
  %13 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %13, 2
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %lor.lhs.false, %if.end7
  %arrayidx11 = getelementptr inbounds [10 x ptr], ptr %apSet, i64 0, i64 0
  %14 = load ptr, ptr %arrayidx11, align 16
  store ptr %14, ptr %retval, align 8
  br label %return

if.end12:                                         ; preds = %lor.lhs.false
  %15 = load ptr, ptr %pVm.addr, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 0
  %call = call i32 @SyBlobInit(ptr noundef %sSig, ptr noundef %sAllocator)
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end12
  %16 = load i32, ptr %j, align 4
  %17 = load i32, ptr %nArg.addr, align 4
  %cmp13 = icmp slt i32 %16, %17
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 110, ptr %c, align 4
  %18 = load ptr, ptr %aArg.addr, align 8
  %19 = load i32, ptr %j, align 4
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds %struct.ph7_value, ptr %18, i64 %idxprom14
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx15, i32 0, i32 2
  %20 = load i32, ptr %iFlags, align 8
  %and = and i32 %20, 64
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then16, label %if.else

if.then16:                                        ; preds = %for.body
  store i32 104, ptr %c, align 4
  br label %if.end60

if.else:                                          ; preds = %for.body
  %21 = load ptr, ptr %aArg.addr, align 8
  %22 = load i32, ptr %j, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr inbounds %struct.ph7_value, ptr %21, i64 %idxprom17
  %iFlags19 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx18, i32 0, i32 2
  %23 = load i32, ptr %iFlags19, align 8
  %and20 = and i32 %23, 8
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.else23

if.then22:                                        ; preds = %if.else
  store i32 98, ptr %c, align 4
  br label %if.end59

if.else23:                                        ; preds = %if.else
  %24 = load ptr, ptr %aArg.addr, align 8
  %25 = load i32, ptr %j, align 4
  %idxprom24 = sext i32 %25 to i64
  %arrayidx25 = getelementptr inbounds %struct.ph7_value, ptr %24, i64 %idxprom24
  %iFlags26 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx25, i32 0, i32 2
  %26 = load i32, ptr %iFlags26, align 8
  %and27 = and i32 %26, 2
  %tobool28 = icmp ne i32 %and27, 0
  br i1 %tobool28, label %if.then29, label %if.else30

if.then29:                                        ; preds = %if.else23
  store i32 105, ptr %c, align 4
  br label %if.end58

if.else30:                                        ; preds = %if.else23
  %27 = load ptr, ptr %aArg.addr, align 8
  %28 = load i32, ptr %j, align 4
  %idxprom31 = sext i32 %28 to i64
  %arrayidx32 = getelementptr inbounds %struct.ph7_value, ptr %27, i64 %idxprom31
  %iFlags33 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx32, i32 0, i32 2
  %29 = load i32, ptr %iFlags33, align 8
  %and34 = and i32 %29, 1
  %tobool35 = icmp ne i32 %and34, 0
  br i1 %tobool35, label %if.then36, label %if.else37

if.then36:                                        ; preds = %if.else30
  store i32 115, ptr %c, align 4
  br label %if.end57

if.else37:                                        ; preds = %if.else30
  %30 = load ptr, ptr %aArg.addr, align 8
  %31 = load i32, ptr %j, align 4
  %idxprom38 = sext i32 %31 to i64
  %arrayidx39 = getelementptr inbounds %struct.ph7_value, ptr %30, i64 %idxprom38
  %iFlags40 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx39, i32 0, i32 2
  %32 = load i32, ptr %iFlags40, align 8
  %and41 = and i32 %32, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then43, label %if.else44

if.then43:                                        ; preds = %if.else37
  store i32 102, ptr %c, align 4
  br label %if.end56

if.else44:                                        ; preds = %if.else37
  %33 = load ptr, ptr %aArg.addr, align 8
  %34 = load i32, ptr %j, align 4
  %idxprom45 = sext i32 %34 to i64
  %arrayidx46 = getelementptr inbounds %struct.ph7_value, ptr %33, i64 %idxprom45
  %iFlags47 = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx46, i32 0, i32 2
  %35 = load i32, ptr %iFlags47, align 8
  %and48 = and i32 %35, 128
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %if.then50, label %if.end55

if.then50:                                        ; preds = %if.else44
  %36 = load ptr, ptr %aArg.addr, align 8
  %37 = load i32, ptr %j, align 4
  %idxprom51 = sext i32 %37 to i64
  %arrayidx52 = getelementptr inbounds %struct.ph7_value, ptr %36, i64 %idxprom51
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %arrayidx52, i32 0, i32 1
  %38 = load ptr, ptr %x, align 8
  %pClass53 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %38, i32 0, i32 1
  %39 = load ptr, ptr %pClass53, align 8
  store ptr %39, ptr %pClass, align 8
  %40 = load ptr, ptr %pClass, align 8
  %sName = getelementptr inbounds nuw %struct.ph7_class, ptr %40, i32 0, i32 2
  store ptr %sName, ptr %pName, align 8
  %41 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %41, i32 0, i32 0
  %42 = load ptr, ptr %zString, align 8
  %43 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %43, i32 0, i32 1
  %44 = load i32, ptr %nByte, align 8
  %call54 = call i32 @SyBlobAppend(ptr noundef %sSig, ptr noundef %42, i32 noundef %44)
  store i32 -1, ptr %c, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.else44
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then43
  br label %if.end57

if.end57:                                         ; preds = %if.end56, %if.then36
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %if.then29
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then22
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then16
  %45 = load i32, ptr %c, align 4
  %cmp61 = icmp sgt i32 %45, 0
  br i1 %cmp61, label %if.then62, label %if.end64

if.then62:                                        ; preds = %if.end60
  %call63 = call i32 @SyBlobAppend(ptr noundef %sSig, ptr noundef %c, i32 noundef 1)
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60
  br label %for.inc

for.inc:                                          ; preds = %if.end64
  %46 = load i32, ptr %j, align 4
  %inc65 = add nsw i32 %46, 1
  store i32 %inc65, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sSig, i32 0, i32 1
  %47 = load ptr, ptr %pBlob, align 8
  %zString66 = getelementptr inbounds nuw %struct.SyString, ptr %sArgSig, i32 0, i32 0
  store ptr %47, ptr %zString66, align 8
  %nByte67 = getelementptr inbounds nuw %struct.SyBlob, ptr %sSig, i32 0, i32 2
  %48 = load i32, ptr %nByte67, align 8
  %nByte68 = getelementptr inbounds nuw %struct.SyString, ptr %sArgSig, i32 0, i32 1
  store i32 %48, ptr %nByte68, align 8
  store i32 0, ptr %iTarget, align 4
  store i32 -1, ptr %iMax, align 4
  store i32 0, ptr %j, align 4
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc78, %for.end
  %49 = load i32, ptr %j, align 4
  %50 = load i32, ptr %i, align 4
  %cmp70 = icmp slt i32 %49, %50
  br i1 %cmp70, label %for.body71, label %for.end80

for.body71:                                       ; preds = %for.cond69
  %51 = load i32, ptr %j, align 4
  %idxprom72 = sext i32 %51 to i64
  %arrayidx73 = getelementptr inbounds [10 x ptr], ptr %apSet, i64 0, i64 %idxprom72
  %52 = load ptr, ptr %arrayidx73, align 8
  %sSignature = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %52, i32 0, i32 6
  %call74 = call i32 @VmOverloadCompare(ptr noundef %sArgSig, ptr noundef %sSignature)
  store i32 %call74, ptr %iCur, align 4
  %53 = load i32, ptr %iCur, align 4
  %54 = load i32, ptr %iMax, align 4
  %cmp75 = icmp sgt i32 %53, %54
  br i1 %cmp75, label %if.then76, label %if.end77

if.then76:                                        ; preds = %for.body71
  %55 = load i32, ptr %iCur, align 4
  store i32 %55, ptr %iMax, align 4
  %56 = load i32, ptr %j, align 4
  store i32 %56, ptr %iTarget, align 4
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %for.body71
  br label %for.inc78

for.inc78:                                        ; preds = %if.end77
  %57 = load i32, ptr %j, align 4
  %inc79 = add nsw i32 %57, 1
  store i32 %inc79, ptr %j, align 4
  br label %for.cond69, !llvm.loop !9

for.end80:                                        ; preds = %for.cond69
  %call81 = call i32 @SyBlobRelease(ptr noundef %sSig)
  %58 = load i32, ptr %iTarget, align 4
  %idxprom82 = sext i32 %58 to i64
  %arrayidx83 = getelementptr inbounds [10 x ptr], ptr %apSet, i64 0, i64 %idxprom82
  %59 = load ptr, ptr %arrayidx83, align 8
  store ptr %59, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end80, %if.then10, %if.then6
  %60 = load ptr, ptr %retval, align 8
  ret ptr %60
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmOverloadCompare(ptr noundef, ptr noundef) #0

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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
