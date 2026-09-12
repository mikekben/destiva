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
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden void @PH7_VmReleaseContextValue(ptr noundef %pCtx, ptr noundef %pValue) #0 {
entry:
  %pCtx.addr = alloca ptr, align 8
  %pValue.addr = alloca ptr, align 8
  %apObj = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pCtx, ptr %pCtx.addr, align 8
  store ptr %pValue, ptr %pValue.addr, align 8
  %0 = load ptr, ptr %pValue.addr, align 8
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end13

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %pCtx.addr, align 8
  %sVar = getelementptr inbounds nuw %struct.ph7_context, ptr %1, i32 0, i32 2
  %nUsed = getelementptr inbounds nuw %struct.SySet, ptr %sVar, i32 0, i32 2
  %2 = load i32, ptr %nUsed, align 8
  %cmp1 = icmp ugt i32 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end13

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %pCtx.addr, align 8
  %sVar3 = getelementptr inbounds nuw %struct.ph7_context, ptr %3, i32 0, i32 2
  %pBase = getelementptr inbounds nuw %struct.SySet, ptr %sVar3, i32 0, i32 1
  %4 = load ptr, ptr %pBase, align 8
  store ptr %4, ptr %apObj, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then2
  %5 = load i32, ptr %n, align 4
  %6 = load ptr, ptr %pCtx.addr, align 8
  %sVar4 = getelementptr inbounds nuw %struct.ph7_context, ptr %6, i32 0, i32 2
  %nUsed5 = getelementptr inbounds nuw %struct.SySet, ptr %sVar4, i32 0, i32 2
  %7 = load i32, ptr %nUsed5, align 8
  %cmp6 = icmp ult i32 %5, %7
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %apObj, align 8
  %9 = load i32, ptr %n, align 4
  %idxprom = zext i32 %9 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %8, i64 %idxprom
  %10 = load ptr, ptr %arrayidx, align 8
  %11 = load ptr, ptr %pValue.addr, align 8
  %cmp7 = icmp eq ptr %10, %11
  br i1 %cmp7, label %if.then8, label %if.end12

if.then8:                                         ; preds = %for.body
  %12 = load ptr, ptr %pValue.addr, align 8
  %call = call i32 @PH7_MemObjRelease(ptr noundef %12)
  %13 = load ptr, ptr %pCtx.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_context, ptr %13, i32 0, i32 4
  %14 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pValue.addr, align 8
  %call9 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %15)
  %16 = load ptr, ptr %apObj, align 8
  %17 = load i32, ptr %n, align 4
  %idxprom10 = zext i32 %17 to i64
  %arrayidx11 = getelementptr inbounds nuw ptr, ptr %16, i64 %idxprom10
  store ptr null, ptr %arrayidx11, align 8
  br label %for.end

if.end12:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end12
  %18 = load i32, ptr %n, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %if.then8, %for.cond
  br label %if.end13

if.end13:                                         ; preds = %for.end, %if.end, %if.then
  ret void
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
