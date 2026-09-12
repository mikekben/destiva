; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.VmObEntry = type { %struct.ph7_value, %struct.SyBlob }

@.str.530 = external hidden unnamed_addr constant [13 x i8], align 1
@.str.531 = external hidden unnamed_addr constant [23 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_null(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_array_add_elem(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobAppend(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobReset(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_ob_list_handlers(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %aEntry = alloca ptr, align 8
  %sVal = alloca %struct.ph7_value, align 8
  %n = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %aOB = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 22
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aOB, i32 0, i32 2
  %3 = load i32, ptr %nUsed, align 8
  %cmp = icmp ult i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_result_null(ptr noundef %4)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %pCtx.addr, align 8
  %call2 = call ptr @ph7_context_new_array(ptr noundef %5)
  store ptr %call2, ptr %pArray, align 8
  %6 = load ptr, ptr %pArray, align 8
  %cmp3 = icmp eq ptr %6, null
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %nArg.addr, align 4
  store ptr null, ptr %apArg.addr, align 8
  %7 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_null(ptr noundef %7)
  store i32 0, ptr %retval, align 4
  br label %return

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %pVm, align 8
  %call7 = call i32 @PH7_MemObjInit(ptr noundef %8, ptr noundef %sVal)
  %9 = load ptr, ptr %pVm, align 8
  %aOB8 = getelementptr inbounds nuw %struct.ph7_vm, ptr %9, i32 0, i32 22
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aOB8, i32 0, i32 1
  %10 = load ptr, ptr %pBase, align 8
  store ptr %10, ptr %aEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end6
  %11 = load i32, ptr %n, align 4
  %12 = load ptr, ptr %pVm, align 8
  %aOB9 = getelementptr inbounds nuw %struct.ph7_vm, ptr %12, i32 0, i32 22
  %nUsed10 = getelementptr inbounds nuw %struct.SySet, ptr %aOB9, i32 0, i32 2
  %13 = load i32, ptr %nUsed10, align 8
  %cmp11 = icmp ult i32 %11, %13
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %aEntry, align 8
  %15 = load i32, ptr %n, align 4
  %idxprom = zext i32 %15 to i64
  %arrayidx = getelementptr inbounds nuw %struct.VmObEntry, ptr %14, i64 %idxprom
  store ptr %arrayidx, ptr %pEntry, align 8
  %sBlob = getelementptr inbounds nuw %struct.ph7_value, ptr %sVal, i32 0, i32 4
  %call12 = call i32 @SyBlobReset(ptr noundef %sBlob)
  %16 = load ptr, ptr %pEntry, align 8
  %sCallback = getelementptr inbounds nuw %struct.VmObEntry, ptr %16, i32 0, i32 0
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %sCallback, i32 0, i32 2
  %17 = load i32, ptr %iFlags, align 8
  %and = and i32 %17, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.body
  %18 = load ptr, ptr %pEntry, align 8
  %sCallback14 = getelementptr inbounds nuw %struct.VmObEntry, ptr %18, i32 0, i32 0
  %sBlob15 = getelementptr inbounds nuw %struct.ph7_value, ptr %sCallback14, i32 0, i32 4
  %sBlob16 = getelementptr inbounds nuw %struct.ph7_value, ptr %sVal, i32 0, i32 4
  %call17 = call i32 @SyBlobDup(ptr noundef %sBlob15, ptr noundef %sBlob16)
  br label %if.end29

if.else:                                          ; preds = %for.body
  %19 = load ptr, ptr %pEntry, align 8
  %sCallback18 = getelementptr inbounds nuw %struct.VmObEntry, ptr %19, i32 0, i32 0
  %iFlags19 = getelementptr inbounds nuw %struct.ph7_value, ptr %sCallback18, i32 0, i32 2
  %20 = load i32, ptr %iFlags19, align 8
  %and20 = and i32 %20, 64
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else
  %sBlob23 = getelementptr inbounds nuw %struct.ph7_value, ptr %sVal, i32 0, i32 4
  %call24 = call i32 @SyBlobAppend(ptr noundef %sBlob23, ptr noundef @.str.530, i32 noundef 12)
  br label %if.end28

if.else25:                                        ; preds = %if.else
  %sBlob26 = getelementptr inbounds nuw %struct.ph7_value, ptr %sVal, i32 0, i32 4
  %call27 = call i32 @SyBlobAppend(ptr noundef %sBlob26, ptr noundef @.str.531, i32 noundef 22)
  br label %if.end28

if.end28:                                         ; preds = %if.else25, %if.then22
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then13
  %iFlags30 = getelementptr inbounds nuw %struct.ph7_value, ptr %sVal, i32 0, i32 2
  store i32 1, ptr %iFlags30, align 8
  %21 = load ptr, ptr %pArray, align 8
  %call31 = call i32 @ph7_array_add_elem(ptr noundef %21, ptr noundef null, ptr noundef %sVal)
  br label %for.inc

for.inc:                                          ; preds = %if.end29
  %22 = load i32, ptr %n, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %call32 = call i32 @PH7_MemObjRelease(ptr noundef %sVal)
  %23 = load ptr, ptr %pCtx.addr, align 8
  %24 = load ptr, ptr %pArray, align 8
  %call33 = call i32 @ph7_result_value(ptr noundef %23, ptr noundef %24)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then4, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
}

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobDup(ptr noundef, ptr noundef) #0

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
