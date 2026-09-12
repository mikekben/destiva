; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
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

@.str.118 = external hidden unnamed_addr constant [53 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_HashmapInsertByRef(ptr noundef %pMap, ptr noundef %pKey, i32 noundef %nRefIdx) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nRefIdx.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nRefIdx, ptr %nRefIdx.addr, align 4
  %0 = load i32, ptr %nRefIdx.addr, align 4
  %1 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm, align 8
  %nGlobalIdx = getelementptr inbounds nuw %struct.ph7_vm, ptr %2, i32 0, i32 52
  %3 = load i32, ptr %nGlobalIdx, align 8
  %cmp = icmp eq i32 %0, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pMap.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 0
  %5 = load ptr, ptr %pVm1, align 8
  %call = call i32 @PH7_VmThrowError(ptr noundef %5, ptr noundef null, i32 noundef 1, ptr noundef @.str.118)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pMap.addr, align 8
  %7 = load ptr, ptr %pKey.addr, align 8
  %8 = load i32, ptr %nRefIdx.addr, align 4
  %call2 = call i32 @HashmapInsertByRef(ptr noundef %6, ptr noundef %7, i32 noundef %8)
  store i32 %call2, ptr %rc, align 4
  %9 = load i32, ptr %rc, align 4
  store i32 %9, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4
  ret i32 %10
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapInsertByRef(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
