; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Label = type { ptr, i32, %struct.SyString, i32, i8 }
%struct.SyString = type { ptr, i32 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SyToken = type { %struct.SyString, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }

@.str.223 = external hidden unnamed_addr constant [36 x i8], align 1
@.str.367 = external hidden unnamed_addr constant [56 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmInstrLength(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_GenCompileError(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendStrDup(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_CompileLabel(ptr noundef %pGen) #0 {
entry:
  %retval = alloca i32, align 4
  %pGen.addr = alloca ptr, align 8
  %pBlock = alloca ptr, align 8
  %sLabel = alloca %struct.Label, align 8
  %rc = alloca i32, align 4
  %pTarget = alloca ptr, align 8
  %zDup = alloca ptr, align 8
  store ptr %pGen, ptr %pGen.addr, align 8
  %0 = load ptr, ptr %pGen.addr, align 8
  %pCurrent = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pCurrent, align 8
  %call = call ptr @GenStateFetchBlock(ptr noundef %1, i32 noundef 257, i32 noundef 0)
  store ptr %call, ptr %pBlock, align 8
  %2 = load ptr, ptr %pBlock, align 8
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pGen.addr, align 8
  %4 = load ptr, ptr %pGen.addr, align 8
  %pIn = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %4, i32 0, i32 12
  %5 = load ptr, ptr %pIn, align 8
  %nLine = getelementptr inbounds nuw %struct.SyToken, ptr %5, i32 0, i32 2
  %6 = load i32, ptr %nLine, align 4
  %7 = load ptr, ptr %pGen.addr, align 8
  %pIn1 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %7, i32 0, i32 12
  %8 = load ptr, ptr %pIn1, align 8
  %sData = getelementptr inbounds nuw %struct.SyToken, ptr %8, i32 0, i32 0
  %call2 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %3, i32 noundef 1, i32 noundef %6, ptr noundef @.str.367, ptr noundef %sData)
  store i32 %call2, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  %cmp = icmp eq i32 %9, -10
  br i1 %cmp, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  store i32 -10, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end33

if.else:                                          ; preds = %entry
  %10 = load ptr, ptr %pGen.addr, align 8
  %pIn4 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %10, i32 0, i32 12
  %11 = load ptr, ptr %pIn4, align 8
  %sData5 = getelementptr inbounds nuw %struct.SyToken, ptr %11, i32 0, i32 0
  store ptr %sData5, ptr %pTarget, align 8
  %12 = load ptr, ptr %pGen.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pVm, align 8
  %call6 = call i32 @PH7_VmInstrLength(ptr noundef %13)
  %nJumpDest = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 1
  store i32 %call6, ptr %nJumpDest, align 8
  %14 = load ptr, ptr %pGen.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pVm7, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %15, i32 0, i32 0
  %16 = load ptr, ptr %pTarget, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %16, i32 0, i32 0
  %17 = load ptr, ptr %zString, align 8
  %18 = load ptr, ptr %pTarget, align 8
  %nByte = getelementptr inbounds nuw %struct.SyString, ptr %18, i32 0, i32 1
  %19 = load i32, ptr %nByte, align 8
  %call8 = call ptr @SyMemBackendStrDup(ptr noundef %sAllocator, ptr noundef %17, i32 noundef %19)
  store ptr %call8, ptr %zDup, align 8
  %20 = load ptr, ptr %zDup, align 8
  %cmp9 = icmp eq ptr %20, null
  br i1 %cmp9, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.else
  %21 = load ptr, ptr %pGen.addr, align 8
  %22 = load ptr, ptr %pGen.addr, align 8
  %pIn11 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %22, i32 0, i32 12
  %23 = load ptr, ptr %pIn11, align 8
  %nLine12 = getelementptr inbounds nuw %struct.SyToken, ptr %23, i32 0, i32 2
  %24 = load i32, ptr %nLine12, align 4
  %call13 = call i32 (ptr, i32, i32, ptr, ...) @PH7_GenCompileError(ptr noundef %21, i32 noundef 1, i32 noundef %24, ptr noundef @.str.223)
  store i32 -10, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %if.else
  %25 = load ptr, ptr %zDup, align 8
  %sName = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 2
  %zString15 = getelementptr inbounds nuw %struct.SyString, ptr %sName, i32 0, i32 0
  store ptr %25, ptr %zString15, align 8
  %26 = load ptr, ptr %pTarget, align 8
  %nByte16 = getelementptr inbounds nuw %struct.SyString, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %nByte16, align 8
  %sName17 = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 2
  %nByte18 = getelementptr inbounds nuw %struct.SyString, ptr %sName17, i32 0, i32 1
  store i32 %27, ptr %nByte18, align 8
  %bRef = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 4
  store i8 0, ptr %bRef, align 4
  %28 = load ptr, ptr %pGen.addr, align 8
  %pIn19 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %28, i32 0, i32 12
  %29 = load ptr, ptr %pIn19, align 8
  %nLine20 = getelementptr inbounds nuw %struct.SyToken, ptr %29, i32 0, i32 2
  %30 = load i32, ptr %nLine20, align 4
  %nLine21 = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 3
  store i32 %30, ptr %nLine21, align 8
  %31 = load ptr, ptr %pGen.addr, align 8
  %pCurrent22 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %31, i32 0, i32 4
  %32 = load ptr, ptr %pCurrent22, align 8
  store ptr %32, ptr %pBlock, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end26, %if.end14
  %33 = load ptr, ptr %pBlock, align 8
  %tobool23 = icmp ne ptr %33, null
  br i1 %tobool23, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %34 = load ptr, ptr %pBlock, align 8
  %iFlags = getelementptr inbounds nuw %struct.GenBlock, ptr %34, i32 0, i32 3
  %35 = load i32, ptr %iFlags, align 4
  %and = and i32 %35, 264
  %tobool24 = icmp ne i32 %and, 0
  br i1 %tobool24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %while.body
  br label %while.end

if.end26:                                         ; preds = %while.body
  %36 = load ptr, ptr %pBlock, align 8
  %pParent = getelementptr inbounds nuw %struct.GenBlock, ptr %36, i32 0, i32 1
  %37 = load ptr, ptr %pParent, align 8
  store ptr %37, ptr %pBlock, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %if.then25, %while.cond
  %38 = load ptr, ptr %pBlock, align 8
  %tobool27 = icmp ne ptr %38, null
  br i1 %tobool27, label %if.then28, label %if.else29

if.then28:                                        ; preds = %while.end
  %39 = load ptr, ptr %pBlock, align 8
  %pUserData = getelementptr inbounds nuw %struct.GenBlock, ptr %39, i32 0, i32 5
  %40 = load ptr, ptr %pUserData, align 8
  %pFunc = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 0
  store ptr %40, ptr %pFunc, align 8
  br label %if.end31

if.else29:                                        ; preds = %while.end
  %pFunc30 = getelementptr inbounds nuw %struct.Label, ptr %sLabel, i32 0, i32 0
  store ptr null, ptr %pFunc30, align 8
  br label %if.end31

if.end31:                                         ; preds = %if.else29, %if.then28
  %41 = load ptr, ptr %pGen.addr, align 8
  %aLabel = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %41, i32 0, i32 8
  %call32 = call i32 @SySetPut(ptr noundef %aLabel, ptr noundef %sLabel)
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %if.end
  %42 = load ptr, ptr %pGen.addr, align 8
  %pIn34 = getelementptr inbounds nuw %struct.ph7_gen_state, ptr %42, i32 0, i32 12
  %43 = load ptr, ptr %pIn34, align 8
  %add.ptr = getelementptr inbounds %struct.SyToken, ptr %43, i64 2
  store ptr %add.ptr, ptr %pIn34, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end33, %if.then10, %if.then3
  %44 = load i32, ptr %retval, align 4
  ret i32 %44
}

; Function Attrs: nounwind uwtable
declare hidden ptr @GenStateFetchBlock(ptr noundef, i32 noundef, i32 noundef) #0

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
