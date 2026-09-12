; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_class_instance = type { ptr, ptr, %struct.SyHash, i32, i32 }
%struct.ph7_class = type { ptr, %struct.SyHash, %struct.SyString, i32, %struct.SyHash, %struct.SyHash, i32, %struct.SySet, ptr }
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.ph7_vm_func = type { %struct.SySet, %struct.SySet, %struct.SyString, %struct.SySet, %struct.SySet, i32, %struct.SyString, ptr, ptr }

@__const.VmUncaughtException.sName = external hidden unnamed_addr constant { ptr, i32, [4 x i8] }, align 8
@__const.VmUncaughtException.sFuncName = external hidden unnamed_addr constant { ptr, i32, [4 x i8] }, align 8
@.str.122 = external hidden unnamed_addr constant [12 x i8], align 1
@.str.123 = external hidden unnamed_addr constant [50 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmErrorFormat(ptr noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden i32 @VmUncaughtException(ptr noundef %pVm, ptr noundef %pThis) #0 {
entry:
  %retval = alloca i32, align 4
  %pVm.addr = alloca ptr, align 8
  %pThis.addr = alloca ptr, align 8
  %apArg = alloca [2 x ptr], align 16
  %sArg = alloca %struct.ph7_value, align 8
  %nArg = alloca i32, align 4
  %rc = alloca i32, align 4
  %sName = alloca %struct.SyString, align 8
  %sFuncName = alloca %struct.SyString, align 8
  %pFrame = alloca ptr, align 8
  %pFunc = alloca ptr, align 8
  store ptr %pVm, ptr %pVm.addr, align 8
  store ptr %pThis, ptr %pThis.addr, align 8
  store i32 1, ptr %nArg, align 4
  %0 = load ptr, ptr %pVm.addr, align 8
  %nExceptDepth = getelementptr inbounds nuw %struct.ph7_vm, ptr %0, i32 0, i32 37
  %1 = load i32, ptr %nExceptDepth, align 8
  %cmp = icmp sgt i32 %1, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pVm.addr, align 8
  %call = call i32 @PH7_MemObjInit(ptr noundef %2, ptr noundef %sArg)
  %3 = load ptr, ptr %pThis.addr, align 8
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %4 = load ptr, ptr %pThis.addr, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %sArg, i32 0, i32 1
  store ptr %4, ptr %x, align 8
  %5 = load ptr, ptr %pThis.addr, align 8
  %iRef = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %5, i32 0, i32 3
  %6 = load i32, ptr %iRef, align 8
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %iRef, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %sArg, i32 0, i32 2
  %7 = load i32, ptr %iFlags, align 8
  %and = and i32 %7, -496
  %or = or i32 %and, 128
  %iFlags2 = getelementptr inbounds nuw %struct.ph7_value, ptr %sArg, i32 0, i32 2
  store i32 %or, ptr %iFlags2, align 8
  br label %if.end3

if.else:                                          ; preds = %if.end
  store i32 0, ptr %nArg, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then1
  %arrayidx = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  store ptr %sArg, ptr %arrayidx, align 16
  %8 = load ptr, ptr %pVm.addr, align 8
  %nExceptDepth4 = getelementptr inbounds nuw %struct.ph7_vm, ptr %8, i32 0, i32 37
  %9 = load i32, ptr %nExceptDepth4, align 8
  %inc5 = add nsw i32 %9, 1
  store i32 %inc5, ptr %nExceptDepth4, align 8
  %10 = load ptr, ptr %pVm.addr, align 8
  %11 = load ptr, ptr %pVm.addr, align 8
  %aExceptionCB = getelementptr inbounds nuw %struct.ph7_vm, ptr %11, i32 0, i32 28
  %arrayidx6 = getelementptr inbounds [2 x %struct.ph7_value], ptr %aExceptionCB, i64 0, i64 1
  %arraydecay = getelementptr inbounds [2 x ptr], ptr %apArg, i64 0, i64 0
  %call7 = call i32 @PH7_VmCallUserFunction(ptr noundef %10, ptr noundef %arrayidx6, i32 noundef 1, ptr noundef %arraydecay, ptr noundef null)
  store i32 %call7, ptr %rc, align 4
  %12 = load ptr, ptr %pVm.addr, align 8
  %nExceptDepth8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 37
  %13 = load i32, ptr %nExceptDepth8, align 8
  %dec = add nsw i32 %13, -1
  store i32 %dec, ptr %nExceptDepth8, align 8
  %14 = load i32, ptr %rc, align 4
  %cmp9 = icmp ne i32 %14, 0
  br i1 %cmp9, label %if.then10, label %if.end47

if.then10:                                        ; preds = %if.end3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sName, ptr align 8 @__const.VmUncaughtException.sName, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %sFuncName, ptr align 8 @__const.VmUncaughtException.sFuncName, i64 16, i1 false)
  %15 = load ptr, ptr %pVm.addr, align 8
  %pFrame11 = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 4
  %16 = load ptr, ptr %pFrame11, align 8
  store ptr %16, ptr %pFrame, align 8
  %17 = load ptr, ptr %pThis.addr, align 8
  %tobool12 = icmp ne ptr %17, null
  br i1 %tobool12, label %if.then13, label %if.end19

if.then13:                                        ; preds = %if.then10
  %18 = load ptr, ptr %pThis.addr, align 8
  %pClass = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %18, i32 0, i32 1
  %19 = load ptr, ptr %pClass, align 8
  %sName14 = getelementptr inbounds nuw %struct.ph7_class, ptr %19, i32 0, i32 2
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sName14, i32 0, i32 0
  %20 = load ptr, ptr %zString, align 8
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %20, ptr %zString15, align 8
  %21 = load ptr, ptr %pThis.addr, align 8
  %pClass16 = getelementptr inbounds nuw %struct.ph7_class_instance, ptr %21, i32 0, i32 1
  %22 = load ptr, ptr %pClass16, align 8
  %sName17 = getelementptr inbounds nuw %struct.ph7_class, ptr %22, i32 0, i32 2
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %sName17, i32 0, i32 1
  %23 = load i32, ptr %nByte, align 8
  %nByte18 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 1
  store i32 %23, ptr %nByte18, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.then10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end19
  %24 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %24, i32 0, i32 0
  %25 = load ptr, ptr %pParent, align 8
  %tobool20 = icmp ne ptr %25, null
  br i1 %tobool20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %26 = load ptr, ptr %pFrame, align 8
  %iFlags21 = getelementptr inbounds nuw %struct.VmFrame, ptr %26, i32 0, i32 8
  %27 = load i32, ptr %iFlags21, align 8
  %and22 = and i32 %27, 1
  %tobool23 = icmp ne i32 %and22, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %28 = phi i1 [ false, %while.cond ], [ %tobool23, %land.rhs ]
  br i1 %28, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %29 = load ptr, ptr %pFrame, align 8
  %pParent24 = getelementptr inbounds nuw %struct.VmFrame, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %pParent24, align 8
  store ptr %30, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %31 = load ptr, ptr %pFrame, align 8
  %pParent25 = getelementptr inbounds nuw %struct.VmFrame, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %pParent25, align 8
  %tobool26 = icmp ne ptr %32, null
  br i1 %tobool26, label %if.then27, label %if.end45

if.then27:                                        ; preds = %while.end
  %33 = load ptr, ptr %pFrame, align 8
  %iFlags28 = getelementptr inbounds nuw %struct.VmFrame, ptr %33, i32 0, i32 8
  %34 = load i32, ptr %iFlags28, align 8
  %and29 = and i32 %34, 4
  %tobool30 = icmp ne i32 %and29, 0
  br i1 %tobool30, label %if.then31, label %if.else34

if.then31:                                        ; preds = %if.then27
  %zString32 = getelementptr inbounds nuw %struct.SyString, ptr %sFuncName, i32 0, i32 0
  store ptr @.str.122, ptr %zString32, align 8
  %nByte33 = getelementptr inbounds nuw %struct.SyString, ptr %sFuncName, i32 0, i32 1
  store i32 11, ptr %nByte33, align 8
  br label %if.end44

if.else34:                                        ; preds = %if.then27
  %35 = load ptr, ptr %pFrame, align 8
  %pUserData = getelementptr inbounds nuw %struct.VmFrame, ptr %35, i32 0, i32 1
  %36 = load ptr, ptr %pUserData, align 8
  store ptr %36, ptr %pFunc, align 8
  %37 = load ptr, ptr %pFunc, align 8
  %tobool35 = icmp ne ptr %37, null
  br i1 %tobool35, label %if.then36, label %if.end43

if.then36:                                        ; preds = %if.else34
  %38 = load ptr, ptr %pFunc, align 8
  %sName37 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %38, i32 0, i32 2
  %zString38 = getelementptr inbounds nuw %struct.SyString, ptr %sName37, i32 0, i32 0
  %39 = load ptr, ptr %zString38, align 8
  %zString39 = getelementptr inbounds nuw %struct.SyString, ptr %sFuncName, i32 0, i32 0
  store ptr %39, ptr %zString39, align 8
  %40 = load ptr, ptr %pFunc, align 8
  %sName40 = getelementptr inbounds nuw %struct.ph7_vm_func, ptr %40, i32 0, i32 2
  %nByte41 = getelementptr inbounds nuw %struct.SyString, ptr %sName40, i32 0, i32 1
  %41 = load i32, ptr %nByte41, align 8
  %nByte42 = getelementptr inbounds nuw %struct.SyString, ptr %sFuncName, i32 0, i32 1
  store i32 %41, ptr %nByte42, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then36, %if.else34
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then31
  br label %if.end45

if.end45:                                         ; preds = %if.end44, %while.end
  %42 = load ptr, ptr %pVm.addr, align 8
  %call46 = call i32 (ptr, i32, ptr, ...) @VmErrorFormat(ptr noundef %42, i32 noundef 1, ptr noundef @.str.123, ptr noundef %sName, ptr noundef %sFuncName)
  store i32 -10, ptr %rc, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.end45, %if.end3
  %call48 = call i32 @PH7_MemObjRelease(ptr noundef %sArg)
  %43 = load i32, ptr %rc, align 4
  store i32 %43, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end47, %if.then
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
