; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_context = type { ptr, ptr, %struct.SySet, %struct.SySet, ptr, i32 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_value_is_callable(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_set_exception_handler(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %pOld = alloca ptr, align 8
  %pNew = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %aExceptionCB = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 28
  %arrayidx = getelementptr inbounds [2 x %struct.ph7_value], ptr %aExceptionCB, i64 0, i64 0
  store ptr %arrayidx, ptr %pOld, align 8
  %3 = load ptr, ptr %pVm, align 8
  %aExceptionCB2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 28
  %arrayidx3 = getelementptr inbounds [2 x %struct.ph7_value], ptr %aExceptionCB2, i64 0, i64 1
  store ptr %arrayidx3, ptr %pNew, align 8
  %4 = load ptr, ptr %pCtx.addr, align 8
  %5 = load ptr, ptr %pOld, align 8
  %call = call i32 @ph7_result_value(ptr noundef %4, ptr noundef %5)
  %6 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then, label %if.end12

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %apArg.addr, align 8
  %arrayidx4 = getelementptr inbounds ptr, ptr %7, i64 0
  %8 = load ptr, ptr %arrayidx4, align 8
  %call5 = call i32 @ph7_value_is_callable(ptr noundef %8)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %9 = load ptr, ptr %pNew, align 8
  %call7 = call i32 @PH7_MemObjRelease(ptr noundef %9)
  %10 = load ptr, ptr %pCtx.addr, align 8
  %call8 = call i32 @ph7_result_bool(ptr noundef %10, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %if.then
  %11 = load ptr, ptr %pNew, align 8
  %12 = load ptr, ptr %pOld, align 8
  %call9 = call i32 @PH7_MemObjStore(ptr noundef %11, ptr noundef %12)
  %13 = load ptr, ptr %apArg.addr, align 8
  %arrayidx10 = getelementptr inbounds ptr, ptr %13, i64 0
  %14 = load ptr, ptr %arrayidx10, align 8
  %15 = load ptr, ptr %pNew, align 8
  %call11 = call i32 @PH7_MemObjStore(ptr noundef %14, ptr noundef %15)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %entry
  ret i32 0
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
