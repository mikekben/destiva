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
%struct.ph7_exception = type { ptr, %struct.SySet, ptr }
%struct.ph7_exception_block = type { %struct.SyString, %struct.SyString, %struct.SySet }
%struct.SyString = type { ptr, i32 }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPop(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmEnterFrame(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmLocalExec(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_VmExtractClass(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmInstanceOf(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @VmExtractMemObj(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @VmLeaveFrame(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmUncaughtException(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @VmThrowException(ptr noundef %pVm, ptr noundef %pThis) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %pCatch = alloca ptr, align 8
  %apException = alloca ptr, align 8
  %pException = alloca ptr, align 8
  %aCatch = alloca ptr, align 8
  %pClass = alloca ptr, align 8
  %j = alloca i32, align 4
  %pName = alloca ptr, align 8
  %rc = alloca i32, align 4
  %pFrame = alloca ptr, align 8
  %pFrame38 = alloca ptr, align 8
  %rc40 = alloca i32, align 4
  %pObj = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  %0 = load ptr, ptr %pVm.addr, align 8
  %aException = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 24
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aException, i32 0, i32 1
  %1 = load ptr, ptr %pBase, align 8
  store ptr %1, ptr %apException, align 8
  store ptr null, ptr %pException, align 8
  store ptr null, ptr %pCatch, align 8
  %2 = load ptr, ptr %pVm.addr, align 8
  %aException1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 24
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aException1, i32 0, i32 2
  %3 = load i32, ptr %nUsed, align 8
  %cmp = icmp ugt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end20

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %apException, align 8
  %5 = load ptr, ptr %pVm.addr, align 8
  %aException2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %5, i32 0, i32 24
  %nUsed3 = getelementptr inbounds nuw %struct.SySet, ptr %aException2, i32 0, i32 2
  %6 = load i32, ptr %nUsed3, align 8
  %sub = sub i32 %6, 1
  %idxprom = zext i32 %sub to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom
  %7 = load ptr, ptr %arrayidx, align 8
  store ptr %7, ptr %pException, align 8
  %8 = load ptr, ptr %pVm.addr, align 8
  %aException4 = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 24
  %call = call ptr @SySetPop(ptr noundef %aException4)
  %9 = load ptr, ptr %pException, align 8
  %sEntry = getelementptr inbounds nuw %struct.ph7_exception, ptr %9, i32 0, i32 1
  %pBase5 = getelementptr inbounds nuw %struct.SySet, ptr %sEntry, i32 0, i32 1
  %10 = load ptr, ptr %pBase5, align 8
  store ptr %10, ptr %aCatch, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %11 = load i32, ptr %j, align 4
  %12 = load ptr, ptr %pException, align 8
  %sEntry6 = getelementptr inbounds nuw %struct.ph7_exception, ptr %12, i32 0, i32 1
  %nUsed7 = getelementptr inbounds nuw %struct.SySet, ptr %sEntry6, i32 0, i32 2
  %13 = load i32, ptr %nUsed7, align 8
  %cmp8 = icmp ult i32 %11, %13
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %aCatch, align 8
  %15 = load i32, ptr %j, align 4
  %idxprom9 = zext i32 %15 to i64
  %arrayidx10 = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %14, i64 %idxprom9
  %sClass = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %arrayidx10, i32 0, i32 0
  store ptr %sClass, ptr %pName, align 8
  %16 = load ptr, ptr %pVm.addr, align 8
  %17 = load ptr, ptr %pName, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %17, i32 0, i32 0
  %18 = load ptr, ptr %zString, align 8
  %19 = load ptr, ptr %pName, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %19, i32 0, i32 1
  %20 = load i32, ptr %nByte, align 8
  %call11 = call ptr @PH7_VmExtractClass(ptr noundef %16, ptr noundef %18, i32 noundef %20, i32 noundef 1, i32 noundef 0)
  store ptr %call11, ptr %pClass, align 8
  %21 = load ptr, ptr %pClass, align 8
  %cmp12 = icmp eq ptr %21, null
  br i1 %cmp12, label %if.then13, label %if.end

if.then13:                                        ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %22 = load ptr, ptr %pThis.addr, align 8
  %pClass14 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %pClass14, align 8
  %24 = load ptr, ptr %pClass, align 8
  %call15 = call i32 @VmInstanceOf(ptr noundef %23, ptr noundef %24)
  %tobool = icmp ne i32 %call15, 0
  br i1 %tobool, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end
  %25 = load ptr, ptr %aCatch, align 8
  %26 = load i32, ptr %j, align 4
  %idxprom17 = zext i32 %26 to i64
  %arrayidx18 = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %25, i64 %idxprom17
  store ptr %arrayidx18, ptr %pCatch, align 8
  br label %for.end

if.end19:                                         ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.then13
  %27 = load i32, ptr %j, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then16, %for.cond
  br label %if.end20

if.end20:                                         ; preds = %for.end, %entry
  %28 = load ptr, ptr %pCatch, align 8
  %cmp21 = icmp eq ptr %28, null
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end20
  %29 = load ptr, ptr %pVm.addr, align 8
  %30 = load ptr, ptr %pThis.addr, align 8
  %call23 = call i32 @VmUncaughtException(ptr noundef %29, ptr noundef %30)
  store i32 %call23, ptr %rc, align 4
  %31 = load i32, ptr %rc, align 4
  %cmp24 = icmp eq i32 %31, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end37

land.lhs.true:                                    ; preds = %if.then22
  %32 = load ptr, ptr %pException, align 8
  %tobool25 = icmp ne ptr %32, null
  br i1 %tobool25, label %if.then26, label %if.end37

if.then26:                                        ; preds = %land.lhs.true
  %33 = load ptr, ptr %pVm.addr, align 8
  %pFrame27 = getelementptr inbounds nuw %struct.ph7_vm, ptr %33, i32 0, i32 4
  %34 = load ptr, ptr %pFrame27, align 8
  store ptr %34, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then26
  %35 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pParent, align 8
  %tobool28 = icmp ne ptr %36, null
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %37 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %37, i32 0, i32 8
  %38 = load i32, ptr %iFlags, align 8
  %and = and i32 %38, 1
  %tobool29 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %39 = phi i1 [ false, %while.cond ], [ %tobool29, %land.rhs ]
  br i1 %39, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %40 = load ptr, ptr %pFrame, align 8
  %pParent30 = getelementptr inbounds nuw %struct.VmFrame, ptr %40, i32 0, i32 0
  %41 = load ptr, ptr %pParent30, align 8
  store ptr %41, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %land.end
  %42 = load ptr, ptr %pException, align 8
  %pFrame31 = getelementptr inbounds nuw %struct.ph7_exception, ptr %42, i32 0, i32 2
  %43 = load ptr, ptr %pFrame31, align 8
  %44 = load ptr, ptr %pFrame, align 8
  %cmp32 = icmp eq ptr %43, %44
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %while.end
  %45 = load ptr, ptr %pFrame, align 8
  %iFlags34 = getelementptr inbounds nuw %struct.VmFrame, ptr %45, i32 0, i32 8
  %46 = load i32, ptr %iFlags34, align 8
  %and35 = and i32 %46, -3
  store i32 %and35, ptr %iFlags34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %while.end
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %land.lhs.true, %if.then22
  %47 = load i32, ptr %rc, align 4
  store i32 %47, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %if.end20
  %48 = load ptr, ptr %pVm.addr, align 8
  %pFrame39 = getelementptr inbounds nuw %struct.ph7_vm, ptr %48, i32 0, i32 4
  %49 = load ptr, ptr %pFrame39, align 8
  store ptr %49, ptr %pFrame38, align 8
  br label %while.cond41

while.cond41:                                     ; preds = %while.body49, %if.else
  %50 = load ptr, ptr %pFrame38, align 8
  %pParent42 = getelementptr inbounds nuw %struct.VmFrame, ptr %50, i32 0, i32 0
  %51 = load ptr, ptr %pParent42, align 8
  %tobool43 = icmp ne ptr %51, null
  br i1 %tobool43, label %land.rhs44, label %land.end48

land.rhs44:                                       ; preds = %while.cond41
  %52 = load ptr, ptr %pFrame38, align 8
  %iFlags45 = getelementptr inbounds nuw %struct.VmFrame, ptr %52, i32 0, i32 8
  %53 = load i32, ptr %iFlags45, align 8
  %and46 = and i32 %53, 1
  %tobool47 = icmp ne i32 %and46, 0
  br label %land.end48

land.end48:                                       ; preds = %land.rhs44, %while.cond41
  %54 = phi i1 [ false, %while.cond41 ], [ %tobool47, %land.rhs44 ]
  br i1 %54, label %while.body49, label %while.end51

while.body49:                                     ; preds = %land.end48
  %55 = load ptr, ptr %pFrame38, align 8
  %pParent50 = getelementptr inbounds nuw %struct.VmFrame, ptr %55, i32 0, i32 0
  %56 = load ptr, ptr %pParent50, align 8
  store ptr %56, ptr %pFrame38, align 8
  br label %while.cond41, !llvm.loop !9

while.end51:                                      ; preds = %land.end48
  %57 = load ptr, ptr %pException, align 8
  %pFrame52 = getelementptr inbounds nuw %struct.ph7_exception, ptr %57, i32 0, i32 2
  %58 = load ptr, ptr %pFrame52, align 8
  %59 = load ptr, ptr %pFrame38, align 8
  %cmp53 = icmp eq ptr %58, %59
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %while.end51
  %60 = load ptr, ptr %pFrame38, align 8
  %iFlags55 = getelementptr inbounds nuw %struct.VmFrame, ptr %60, i32 0, i32 8
  %61 = load i32, ptr %iFlags55, align 8
  %and56 = and i32 %61, -3
  store i32 %and56, ptr %iFlags55, align 8
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %while.end51
  %62 = load ptr, ptr %pVm.addr, align 8
  %call58 = call i32 @VmEnterFrame(ptr noundef %62, ptr noundef null, ptr noundef null, ptr noundef %pFrame38)
  store i32 %call58, ptr %rc40, align 4
  %63 = load i32, ptr %rc40, align 4
  %cmp59 = icmp eq i32 %63, 0
  br i1 %cmp59, label %if.then60, label %if.end72

if.then60:                                        ; preds = %if.end57
  %64 = load ptr, ptr %pVm.addr, align 8
  %65 = load ptr, ptr %pCatch, align 8
  %sThis = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %65, i32 0, i32 1
  %call61 = call ptr @VmExtractMemObj(ptr noundef %64, ptr noundef %sThis, i32 noundef 0, i32 noundef 1)
  store ptr %call61, ptr %pObj, align 8
  %66 = load ptr, ptr %pFrame38, align 8
  %iFlags62 = getelementptr inbounds nuw %struct.VmFrame, ptr %66, i32 0, i32 8
  %67 = load i32, ptr %iFlags62, align 8
  %or = or i32 %67, 4
  store i32 %or, ptr %iFlags62, align 8
  %68 = load ptr, ptr %pObj, align 8
  %tobool63 = icmp ne ptr %68, null
  br i1 %tobool63, label %if.then64, label %if.end70

if.then64:                                        ; preds = %if.then60
  %69 = load ptr, ptr %pThis.addr, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %69, i32 0, i32 3
  %70 = load i32, ptr %iRef, align 8
  %inc65 = add nsw i32 %70, 1
  store i32 %inc65, ptr %iRef, align 8
  %71 = load ptr, ptr %pThis.addr, align 8
  %72 = load ptr, ptr %pObj, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %72, i32 0, i32 1
  store ptr %71, ptr %x, align 8
  %73 = load ptr, ptr %pObj, align 8
  %iFlags66 = getelementptr inbounds nuw %struct.ph7_value, ptr %73, i32 0, i32 2
  %74 = load i32, ptr %iFlags66, align 8
  %and67 = and i32 %74, -496
  %or68 = or i32 %and67, 128
  %75 = load ptr, ptr %pObj, align 8
  %iFlags69 = getelementptr inbounds nuw %struct.ph7_value, ptr %75, i32 0, i32 2
  store i32 %or68, ptr %iFlags69, align 8
  br label %if.end70

if.end70:                                         ; preds = %if.then64, %if.then60
  %76 = load ptr, ptr %pVm.addr, align 8
  %77 = load ptr, ptr %pCatch, align 8
  %sByteCode = getelementptr inbounds nuw %struct.ph7_exception_block, ptr %77, i32 0, i32 2
  %call71 = call i32 @VmLocalExec(ptr noundef %76, ptr noundef %sByteCode, ptr noundef null)
  %78 = load ptr, ptr %pVm.addr, align 8
  call void @VmLeaveFrame(ptr noundef %78)
  br label %if.end72

if.end72:                                         ; preds = %if.end70, %if.end57
  br label %if.end73

if.end73:                                         ; preds = %if.end72
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end73, %if.end37
  %79 = load i32, ptr %retval, align 4
  ret i32 %79
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
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
