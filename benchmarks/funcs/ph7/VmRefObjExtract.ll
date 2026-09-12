; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }
%struct.VmRefObj = type { %struct.SySet, %struct.SySet, i32, i32, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
define hidden ptr @VmRefObjExtract(ptr noundef %pVm, i32 noundef %nObjIdx) #0 {
entry:
  %retval = alloca ptr, align 8
  %pVm.addr = alloca ptr, align 8
  %nObjIdx.addr = alloca i32, align 4
  %pRef = alloca ptr, align 8
  %nBucket = alloca i32, align 4
  store ptr %pVm, ptr %pVm.addr, align 8
  store i32 %nObjIdx, ptr %nObjIdx.addr, align 4
  %0 = load i32, ptr %nObjIdx.addr, align 4
  %call = call i32 @VmRefHash(i32 noundef %0)
  %1 = load ptr, ptr %pVm.addr, align 8
  %nRefSize = getelementptr inbounds nuw %struct.ph7_vm, ptr %1, i32 0, i32 48
  %2 = load i32, ptr %nRefSize, align 8
  %sub = sub i32 %2, 1
  %and = and i32 %call, %sub
  store i32 %and, ptr %nBucket, align 4
  %3 = load ptr, ptr %pVm.addr, align 8
  %apRefObj = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 46
  %4 = load ptr, ptr %apRefObj, align 8
  %5 = load i32, ptr %nBucket, align 4
  %idxprom = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %4, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  store ptr %6, ptr %pRef, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end3, %entry
  %7 = load ptr, ptr %pRef, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %8 = load ptr, ptr %pRef, align 8
  %nIdx = getelementptr inbounds nuw %struct.VmRefObj, ptr %8, i32 0, i32 2
  %9 = load i32, ptr %nIdx, align 8
  %10 = load i32, ptr %nObjIdx.addr, align 4
  %cmp1 = icmp eq i32 %9, %10
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %pRef, align 8
  store ptr %11, ptr %retval, align 8
  br label %return

if.end3:                                          ; preds = %if.end
  %12 = load ptr, ptr %pRef, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.VmRefObj, ptr %12, i32 0, i32 4
  %13 = load ptr, ptr %pNextCollide, align 8
  store ptr %13, ptr %pRef, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  store ptr null, ptr %retval, align 8
  br label %return

return:                                           ; preds = %for.end, %if.then2
  %14 = load ptr, ptr %retval, align 8
  ret ptr %14
}

; Function Attrs: nounwind uwtable
declare hidden i32 @VmRefHash(i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
