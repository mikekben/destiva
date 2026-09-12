; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyString = type { ptr, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

@vm_builtin_assert.sFileName = external hidden constant { ptr, i32, [4 x i8] }, align 8
@.str.533 = external hidden unnamed_addr constant [17 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_to_bool(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromString(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInitFromInt(ptr noundef, ptr noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetPeek(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @VmEvalChunk(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_assert(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pAssert = alloca ptr, align 8
  %iFlags = alloca i32, align 4
  %iResult = alloca i32, align 4
  %sChunk = alloca %struct.SyString, align 8
  %sFile = alloca %struct.ph7_value, align 8
  %sLine = alloca %struct.ph7_value, align 8
  %apCbArg = alloca [3 x ptr], align 16
  %pFile = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %2, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pVm, align 8
  %iAssertFlags = getelementptr inbounds nuw %struct.ph7_vm, ptr %4, i32 0, i32 44
  %5 = load i32, ptr %iAssertFlags, align 8
  store i32 %5, ptr %iFlags, align 4
  %6 = load i32, ptr %iFlags, align 4
  %and = and i32 %6, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call3 = call i32 @ph7_result_bool(ptr noundef %7, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %8, i64 0
  %9 = load ptr, ptr %arrayidx, align 8
  store ptr %9, ptr %pAssert, align 8
  store i32 1, ptr %iResult, align 4
  %10 = load ptr, ptr %pAssert, align 8
  %iFlags5 = getelementptr inbounds nuw %struct.ph7_value, ptr %10, i32 0, i32 2
  %11 = load i32, ptr %iFlags5, align 8
  %and6 = and i32 %11, 1
  %tobool7 = icmp ne i32 %and6, 0
  br i1 %tobool7, label %if.then8, label %if.else17

if.then8:                                         ; preds = %if.end4
  %12 = load ptr, ptr %pAssert, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %12, i32 0, i32 4
  %pBlob = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob, i32 0, i32 1
  %13 = load ptr, ptr %pBlob, align 8
  %zString = getelementptr inbounds nuw %struct.SyString, ptr %sChunk, i32 0, i32 0
  store ptr %13, ptr %zString, align 8
  %14 = load ptr, ptr %pAssert, align 8
  %sBlob9 = getelementptr inbounds nuw %struct.ph7_value, ptr %14, i32 0, i32 4
  %nByte = getelementptr inbounds nuw %struct.SyBlob, ptr %sBlob9, i32 0, i32 2
  %15 = load i32, ptr %nByte, align 8
  %nByte10 = getelementptr inbounds nuw %struct.SyString, ptr %sChunk, i32 0, i32 1
  store i32 %15, ptr %nByte10, align 8
  %nByte11 = getelementptr inbounds nuw %struct.SyString, ptr %sChunk, i32 0, i32 1
  %16 = load i32, ptr %nByte11, align 8
  %cmp12 = icmp ugt i32 %16, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then8
  %17 = load ptr, ptr %pVm, align 8
  %18 = load ptr, ptr %pCtx.addr, align 8
  %call14 = call i32 @VmEvalChunk(ptr noundef %17, ptr noundef %18, ptr noundef %sChunk, i32 noundef 3, i32 noundef 0)
  %19 = load ptr, ptr %pCtx.addr, align 8
  %pRet = getelementptr inbounds nuw %struct.ph7_context, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %pRet, align 8
  %call15 = call i32 @ph7_value_to_bool(ptr noundef %20)
  store i32 %call15, ptr %iResult, align 4
  br label %if.end16

if.else:                                          ; preds = %if.then8
  store i32 0, ptr %iResult, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then13
  br label %if.end20

if.else17:                                        ; preds = %if.end4
  %21 = load ptr, ptr %apArg.addr, align 8
  %arrayidx18 = getelementptr inbounds ptr, ptr %21, i64 0
  %22 = load ptr, ptr %arrayidx18, align 8
  %call19 = call i32 @ph7_value_to_bool(ptr noundef %22)
  store i32 %call19, ptr %iResult, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else17, %if.end16
  %23 = load i32, ptr %iResult, align 4
  %tobool21 = icmp ne i32 %23, 0
  br i1 %tobool21, label %if.end48, label %if.then22

if.then22:                                        ; preds = %if.end20
  %24 = load i32, ptr %iFlags, align 4
  %and23 = and i32 %24, 16
  %tobool24 = icmp ne i32 %and23, 0
  br i1 %tobool24, label %if.then25, label %if.end38

if.then25:                                        ; preds = %if.then22
  %25 = load ptr, ptr %pVm, align 8
  %aFiles = getelementptr inbounds nuw %struct.ph7_vm, ptr %25, i32 0, i32 19
  %call26 = call ptr @SySetPeek(ptr noundef %aFiles)
  store ptr %call26, ptr %pFile, align 8
  %26 = load ptr, ptr %pFile, align 8
  %cmp27 = icmp eq ptr %26, null
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.then25
  store ptr @vm_builtin_assert.sFileName, ptr %pFile, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.then25
  %27 = load ptr, ptr %pVm, align 8
  %28 = load ptr, ptr %pFile, align 8
  %call30 = call i32 @PH7_MemObjInitFromString(ptr noundef %27, ptr noundef %sFile, ptr noundef %28)
  %29 = load ptr, ptr %pVm, align 8
  %call31 = call i32 @PH7_MemObjInitFromInt(ptr noundef %29, ptr noundef %sLine, i64 noundef 0)
  %arrayidx32 = getelementptr inbounds [3 x ptr], ptr %apCbArg, i64 0, i64 0
  store ptr %sFile, ptr %arrayidx32, align 16
  %arrayidx33 = getelementptr inbounds [3 x ptr], ptr %apCbArg, i64 0, i64 1
  store ptr %sLine, ptr %arrayidx33, align 8
  %30 = load ptr, ptr %pAssert, align 8
  %arrayidx34 = getelementptr inbounds [3 x ptr], ptr %apCbArg, i64 0, i64 2
  store ptr %30, ptr %arrayidx34, align 16
  %31 = load ptr, ptr %pVm, align 8
  %32 = load ptr, ptr %pVm, align 8
  %sAssertCallback = getelementptr inbounds nuw %struct.ph7_vm, ptr %32, i32 0, i32 45
  %arraydecay = getelementptr inbounds [3 x ptr], ptr %apCbArg, i64 0, i64 0
  %call35 = call i32 @PH7_VmCallUserFunction(ptr noundef %31, ptr noundef %sAssertCallback, i32 noundef 3, ptr noundef %arraydecay, ptr noundef null)
  %call36 = call i32 @PH7_MemObjRelease(ptr noundef %sFile)
  %call37 = call i32 @PH7_MemObjRelease(ptr noundef %sLine)
  br label %if.end38

if.end38:                                         ; preds = %if.end29, %if.then22
  %33 = load i32, ptr %iFlags, align 4
  %and39 = and i32 %33, 2
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.end38
  %34 = load ptr, ptr %pCtx.addr, align 8
  %call42 = call i32 @ph7_context_throw_error(ptr noundef %34, i32 noundef 2, ptr noundef @.str.533)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end38
  %35 = load i32, ptr %iFlags, align 4
  %and44 = and i32 %35, 4
  %tobool45 = icmp ne i32 %and44, 0
  br i1 %tobool45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  store i32 -10, ptr %retval, align 4
  br label %return

if.end47:                                         ; preds = %if.end43
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end20
  %36 = load ptr, ptr %pCtx.addr, align 8
  %37 = load i32, ptr %iResult, align 4
  %call49 = call i32 @ph7_result_bool(ptr noundef %36, i32 noundef %37)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end48, %if.then46, %if.then2, %if.then
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
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
