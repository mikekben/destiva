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
%struct.VmFrame = type { ptr, ptr, ptr, %struct.SySet, ptr, %struct.SyHash, %struct.SySet, %struct.SySet, i32, i32 }
%struct.VmSlot = type { i32, ptr }

@.str.493 = external hidden unnamed_addr constant [27 x i8], align 1

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local ptr @ph7_context_new_array(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_HashmapInsertByRef(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_func_get_args_byref(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pArray = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %aSlot = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm, align 8
  %pFrame1 = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 4
  %2 = load ptr, ptr %pFrame1, align 8
  store ptr %2, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %4, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %iFlags, align 8
  %and = and i32 %6, 1
  %tobool2 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %7 = phi i1 [ false, %while.cond ], [ %tobool2, %land.rhs ]
  br i1 %7, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %8 = load ptr, ptr %pFrame, align 8
  %pParent3 = getelementptr inbounds nuw %struct.VmFrame, ptr %8, i32 0, i32 0
  %9 = load ptr, ptr %pParent3, align 8
  store ptr %9, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %10 = load ptr, ptr %pFrame, align 8
  %pParent4 = getelementptr inbounds nuw %struct.VmFrame, ptr %10, i32 0, i32 0
  %11 = load ptr, ptr %pParent4, align 8
  %cmp = icmp eq ptr %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_context_throw_error(ptr noundef %12, i32 noundef 2, ptr noundef @.str.493)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %call5 = call i32 @ph7_result_bool(ptr noundef %13, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call6 = call ptr @ph7_context_new_array(ptr noundef %14)
  store ptr %call6, ptr %pArray, align 8
  %15 = load ptr, ptr %pArray, align 8
  %cmp7 = icmp eq ptr %15, null
  br i1 %cmp7, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  store i32 0, ptr %nArg.addr, align 4
  store ptr null, ptr %apArg.addr, align 8
  %16 = load ptr, ptr %pCtx.addr, align 8
  %call9 = call i32 @ph7_result_bool(ptr noundef %16, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %if.end
  %17 = load ptr, ptr %pFrame, align 8
  %sArg = getelementptr inbounds nuw %struct.VmFrame, ptr %17, i32 0, i32 6
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sArg, i32 0, i32 1
  %18 = load ptr, ptr %pBase, align 8
  store ptr %18, ptr %aSlot, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end10
  %19 = load i32, ptr %n, align 4
  %20 = load ptr, ptr %pFrame, align 8
  %sArg11 = getelementptr inbounds nuw %struct.VmFrame, ptr %20, i32 0, i32 6
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sArg11, i32 0, i32 2
  %21 = load i32, ptr %nUsed, align 8
  %cmp12 = icmp ult i32 %19, %21
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load ptr, ptr %pArray, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %22, i32 0, i32 1
  %23 = load ptr, ptr %x, align 8
  %24 = load ptr, ptr %aSlot, align 8
  %25 = load i32, ptr %n, align 4
  %idxprom = zext i32 %25 to i64
  %arrayidx = getelementptr inbounds nuw %struct.VmSlot, ptr %24, i64 %idxprom
  %nIdx = getelementptr inbounds nuw %struct.VmSlot, ptr %arrayidx, i32 0, i32 0
  %26 = load i32, ptr %nIdx, align 8
  %call13 = call i32 @PH7_HashmapInsertByRef(ptr noundef %23, ptr noundef null, i32 noundef %26)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i32, ptr %n, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %pCtx.addr, align 8
  %29 = load ptr, ptr %pArray, align 8
  %call14 = call i32 @ph7_result_value(ptr noundef %28, ptr noundef %29)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then8, %if.then
  %30 = load i32, ptr %retval, align 4
  ret i32 %30
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
