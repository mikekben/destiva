; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetInit(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunction(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_call_user_func_array(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sResult = alloca %struct.ph7_value, align 8
  %pMap = alloca ptr, align 8
  %aArg = alloca %struct.SySet, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call = call i32 @ph7_value_is_array(ptr noundef %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load ptr, ptr %pCtx.addr, align 8
  %call1 = call i32 @ph7_result_bool(ptr noundef %3, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pVm, align 8
  %call2 = call i32 @PH7_MemObjInit(ptr noundef %5, ptr noundef %sResult)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sResult, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %6 = load ptr, ptr %pCtx.addr, align 8
  %pVm3 = getelementptr inbounds nuw %struct.ph7_context, ptr %6, i32 0, i32 4
  %7 = load ptr, ptr %pVm3, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %7, i32 0, i32 0
  %call4 = call i32 @SySetInit(ptr noundef %aArg, ptr noundef %sAllocator, i32 noundef 8)
  %8 = load ptr, ptr %apArg.addr, align 8
  %arrayidx5 = getelementptr inbounds ptr, ptr %8, i64 1
  %9 = load ptr, ptr %arrayidx5, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 1
  %10 = load ptr, ptr %x, align 8
  store ptr %10, ptr %pMap, align 8
  %11 = load ptr, ptr %pMap, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %11, i32 0, i32 2
  %12 = load ptr, ptr %pFirst, align 8
  store ptr %12, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, ptr %n, align 4
  %14 = load ptr, ptr %pMap, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %14, i32 0, i32 6
  %15 = load i32, ptr %nEntry, align 4
  %cmp6 = icmp ult i32 %13, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load ptr, ptr %pCtx.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_context, ptr %16, i32 0, i32 4
  %17 = load ptr, ptr %pVm7, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %17, i32 0, i32 6
  %18 = load ptr, ptr %pEntry, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 5
  %19 = load i32, ptr %nValIdx, align 8
  %call8 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %19)
  store ptr %call8, ptr %pValue, align 8
  %cmp9 = icmp ne ptr %call8, null
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.body
  %call11 = call i32 @SySetPut(ptr noundef %aArg, ptr noundef %pValue)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %for.body
  %20 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %20, i32 0, i32 7
  %21 = load ptr, ptr %pPrev, align 8
  store ptr %21, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %22 = load i32, ptr %n, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %23 = load ptr, ptr %pCtx.addr, align 8
  %pVm13 = getelementptr inbounds nuw %struct.ph7_context, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pVm13, align 8
  %25 = load ptr, ptr %apArg.addr, align 8
  %arrayidx14 = getelementptr inbounds ptr, ptr %25, i64 0
  %26 = load ptr, ptr %arrayidx14, align 8
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 2
  %27 = load i32, ptr %nUsed, align 8
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %aArg, i32 0, i32 1
  %28 = load ptr, ptr %pBase, align 8
  %call15 = call i32 @PH7_VmCallUserFunction(ptr noundef %24, ptr noundef %26, i32 noundef %27, ptr noundef %28, ptr noundef %sResult)
  store i32 %call15, ptr %rc, align 4
  %29 = load i32, ptr %rc, align 4
  %cmp16 = icmp ne i32 %29, 0
  br i1 %cmp16, label %if.then17, label %if.else

if.then17:                                        ; preds = %for.end
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call18 = call i32 @ph7_result_bool(ptr noundef %30, i32 noundef 0)
  br label %if.end20

if.else:                                          ; preds = %for.end
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call19 = call i32 @ph7_result_value(ptr noundef %31, ptr noundef %sResult)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then17
  %call21 = call i32 @PH7_MemObjRelease(ptr noundef %sResult)
  %call22 = call i32 @SySetRelease(ptr noundef %aArg)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end20, %if.then
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
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
