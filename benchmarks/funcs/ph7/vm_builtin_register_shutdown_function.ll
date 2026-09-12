; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VmShutdownCB = type { %struct.ph7_value, [10 x %struct.ph7_value], i32 }
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

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SySetPut(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @vm_builtin_register_shutdown_function(ptr noundef %pCtx, i32 noundef %nArg, ptr noundef %apArg) #0 {
entry:
  %retval = alloca i32, align 4
  %pCtx.addr = alloca ptr, align 8
  %nArg.addr = alloca i32, align 4
  %apArg.addr = alloca ptr, align 8
  %sEntry = alloca %struct.VmShutdownCB, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store i32 %nArg, ptr %nArg.addr, align 4
  store ptr %apArg, ptr %apArg.addr, align 8
  %0 = load i32, ptr %nArg.addr, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %apArg.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 0
  %2 = load ptr, ptr %arrayidx, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %iFlags, align 8
  %and = and i32 %3, 65
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @SyZero(ptr noundef %sEntry, i32 noundef 800)
  %4 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %4, i32 0, i32 4
  %5 = load ptr, ptr %pVm, align 8
  %sCallback = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %sEntry, i32 0, i32 0
  %call = call i32 @PH7_MemObjInit(ptr noundef %5, ptr noundef %sCallback)
  %6 = load ptr, ptr %apArg.addr, align 8
  %arrayidx2 = getelementptr inbounds ptr, ptr %6, i64 0
  %7 = load ptr, ptr %arrayidx2, align 8
  %sCallback3 = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %sEntry, i32 0, i32 0
  %call4 = call i32 @PH7_MemObjStore(ptr noundef %7, ptr noundef %sCallback3)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %8, 10
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %pCtx.addr, align 8
  %pVm6 = getelementptr inbounds nuw %struct.ph7_context, ptr %9, i32 0, i32 4
  %10 = load ptr, ptr %pVm6, align 8
  %aArg = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %sEntry, i32 0, i32 1
  %11 = load i32, ptr %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [10 x %struct.ph7_value], ptr %aArg, i64 0, i64 %idxprom
  %call8 = call i32 @PH7_MemObjInit(ptr noundef %10, ptr noundef %arrayidx7)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, ptr %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %j, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc21, %for.end
  %13 = load i32, ptr %i, align 4
  %14 = load i32, ptr %nArg.addr, align 4
  %cmp10 = icmp slt i32 %13, %14
  br i1 %cmp10, label %for.body11, label %for.end24

for.body11:                                       ; preds = %for.cond9
  %15 = load i32, ptr %j, align 4
  %cmp12 = icmp sge i32 %15, 10
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %for.body11
  br label %for.end24

if.end14:                                         ; preds = %for.body11
  %16 = load ptr, ptr %apArg.addr, align 8
  %17 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds ptr, ptr %16, i64 %idxprom15
  %18 = load ptr, ptr %arrayidx16, align 8
  %aArg17 = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %sEntry, i32 0, i32 1
  %19 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %19 to i64
  %arrayidx19 = getelementptr inbounds [10 x %struct.ph7_value], ptr %aArg17, i64 0, i64 %idxprom18
  %call20 = call i32 @PH7_MemObjStore(ptr noundef %18, ptr noundef %arrayidx19)
  br label %for.inc21

for.inc21:                                        ; preds = %if.end14
  %20 = load i32, ptr %j, align 4
  %inc22 = add nsw i32 %20, 1
  store i32 %inc22, ptr %j, align 4
  %21 = load i32, ptr %i, align 4
  %inc23 = add nsw i32 %21, 1
  store i32 %inc23, ptr %i, align 4
  br label %for.cond9, !llvm.loop !8

for.end24:                                        ; preds = %if.then13, %for.cond9
  %22 = load i32, ptr %j, align 4
  %nArg25 = getelementptr inbounds nuw %struct.VmShutdownCB, ptr %sEntry, i32 0, i32 2
  store i32 %22, ptr %nArg25, align 8
  %23 = load ptr, ptr %pCtx.addr, align 8
  %pVm26 = getelementptr inbounds nuw %struct.ph7_context, ptr %23, i32 0, i32 4
  %24 = load ptr, ptr %pVm26, align 8
  %aShutdown = getelementptr inbounds nuw %struct.ph7_vm, ptr %24, i32 0, i32 23
  %call27 = call i32 @SySetPut(ptr noundef %aShutdown, ptr noundef %sEntry)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end24, %if.then
  %25 = load i32, ptr %retval, align 4
  ret i32 %25
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
