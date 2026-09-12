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
declare dso_local i32 @ph7_value_to_int(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_bool(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_result_value(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SySetAt(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare dso_local i32 @ph7_context_throw_error(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_func_get_arg(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %pObj = alloca ptr, align 8
  %pSlot = alloca ptr, align 8
  %pFrame = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  store ptr null, ptr %pObj, align 8
  store ptr null, ptr %pSlot, align 8
  %0 = load ptr, ptr %pCtx.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_context, ptr %0, i32 0, i32 4
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pVm, align 8
  %pFrame2 = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 4
  %3 = load ptr, ptr %pFrame2, align 8
  store ptr %3, ptr %pFrame, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %pFrame, align 8
  %pParent = getelementptr inbounds nuw %struct.VmFrame, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pParent, align 8
  %tobool = icmp ne ptr %5, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %pFrame, align 8
  %iFlags = getelementptr inbounds nuw %struct.VmFrame, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %iFlags, align 8
  %and = and i32 %7, 1
  %tobool3 = icmp ne i32 %and, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool3, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load ptr, ptr %pFrame, align 8
  %pParent4 = getelementptr inbounds nuw %struct.VmFrame, ptr %9, i32 0, i32 0
  %10 = load ptr, ptr %pParent4, align 8
  store ptr %10, ptr %pFrame, align 8
  br label %while.cond, !llvm.loop !6

while.end:                                        ; preds = %land.end
  %11 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %11, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %12 = load ptr, ptr %pFrame, align 8
  %pParent5 = getelementptr inbounds nuw %struct.VmFrame, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %pParent5, align 8
  %cmp6 = icmp eq ptr %13, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.end
  %14 = load ptr, ptr %pCtx.addr, align 8
  %call = call i32 @ph7_context_throw_error(ptr noundef %14, i32 noundef 2, ptr noundef @.str.493)
  %15 = load ptr, ptr %pCtx.addr, align 8
  %call7 = call i32 @ph7_result_bool(ptr noundef %15, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %16 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %16, i64 0
  %17 = load ptr, ptr %arrayidx, align 8
  %call8 = call i32 @ph7_value_to_int(ptr noundef %17)
  store i32 %call8, ptr %nArg.addr, align 4
  %18 = load i32, ptr %nArg.addr, align 4
  %cmp9 = icmp slt i32 %18, 0
  br i1 %cmp9, label %if.then12, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %if.end
  %19 = load i32, ptr %nArg.addr, align 4
  %20 = load ptr, ptr %pFrame, align 8
  %sArg = getelementptr inbounds nuw %struct.VmFrame, ptr %20, i32 0, i32 6
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sArg, i32 0, i32 2
  %21 = load i32, ptr %nUsed, align 8
  %cmp11 = icmp sge i32 %19, %21
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %lor.lhs.false10, %if.end
  %22 = load ptr, ptr %pCtx.addr, align 8
  %call13 = call i32 @ph7_result_bool(ptr noundef %22, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

if.end14:                                         ; preds = %lor.lhs.false10
  %23 = load ptr, ptr %pFrame, align 8
  %sArg15 = getelementptr inbounds nuw %struct.VmFrame, ptr %23, i32 0, i32 6
  %24 = load i32, ptr %nArg.addr, align 4
  %call16 = call ptr @SySetAt(ptr noundef %sArg15, i32 noundef %24)
  store ptr %call16, ptr %pSlot, align 8
  %cmp17 = icmp ne ptr %call16, null
  br i1 %cmp17, label %if.then18, label %if.else25

if.then18:                                        ; preds = %if.end14
  %25 = load ptr, ptr %pVm, align 8
  %aMemObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %25, i32 0, i32 6
  %26 = load ptr, ptr %pSlot, align 8
  %nIdx = getelementptr inbounds nuw %struct.VmSlot, ptr %26, i32 0, i32 0
  %27 = load i32, ptr %nIdx, align 8
  %call19 = call ptr @SySetAt(ptr noundef %aMemObj, i32 noundef %27)
  store ptr %call19, ptr %pObj, align 8
  %cmp20 = icmp ne ptr %call19, null
  br i1 %cmp20, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then18
  %28 = load ptr, ptr %pCtx.addr, align 8
  %29 = load ptr, ptr %pObj, align 8
  %call22 = call i32 @ph7_result_value(ptr noundef %28, ptr noundef %29)
  br label %if.end24

if.else:                                          ; preds = %if.then18
  %30 = load ptr, ptr %pCtx.addr, align 8
  %call23 = call i32 @ph7_result_bool(ptr noundef %30, i32 noundef 0)
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then21
  br label %if.end27

if.else25:                                        ; preds = %if.end14
  %31 = load ptr, ptr %pCtx.addr, align 8
  %call26 = call i32 @ph7_result_bool(ptr noundef %31, i32 noundef 0)
  br label %if.end27

if.end27:                                         ; preds = %if.else25, %if.end24
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end27, %if.then12, %if.then
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
