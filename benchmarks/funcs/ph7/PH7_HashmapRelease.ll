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
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

@.str.1381 = external hidden unnamed_addr constant [52 x i8], align 1

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @PH7_HashmapRelease(ptr noundef %pMap, i32 noundef %FreeDS) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %FreeDS.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  %pVm = alloca ptr, align 8
  %n = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store i32 %FreeDS, ptr %FreeDS.addr, align 4
  %0 = load ptr, ptr %pMap.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm1, align 8
  store ptr %1, ptr %pVm, align 8
  %2 = load ptr, ptr %pMap.addr, align 8
  %3 = load ptr, ptr %pVm, align 8
  %pGlobal = getelementptr inbounds nuw %struct.ph7_vm, ptr %3, i32 0, i32 51
  %4 = load ptr, ptr %pGlobal, align 8
  %cmp = icmp eq ptr %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %pMap.addr, align 8
  %pVm2 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 0
  %6 = load ptr, ptr %pVm2, align 8
  %call = call i32 @PH7_VmThrowError(ptr noundef %6, ptr noundef null, i32 noundef 3, ptr noundef @.str.1381)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, ptr %n, align 4
  %7 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %7, i32 0, i32 2
  %8 = load ptr, ptr %pFirst, align 8
  store ptr %8, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end15, %if.end
  %9 = load i32, ptr %n, align 4
  %10 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 6
  %11 = load i32, ptr %nEntry, align 4
  %cmp3 = icmp uge i32 %9, %11
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.cond
  br label %for.end

if.end5:                                          ; preds = %for.cond
  %12 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %12, i32 0, i32 7
  %13 = load ptr, ptr %pPrev, align 8
  store ptr %13, ptr %pNext, align 8
  %14 = load ptr, ptr %pVm, align 8
  %15 = load ptr, ptr %pEntry, align 8
  %nValIdx = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %15, i32 0, i32 5
  %16 = load i32, ptr %nValIdx, align 8
  %17 = load ptr, ptr %pEntry, align 8
  %call6 = call i32 @PH7_VmRefObjRemove(ptr noundef %14, i32 noundef %16, ptr noundef null, ptr noundef %17)
  %18 = load ptr, ptr %pEntry, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %18, i32 0, i32 3
  %19 = load i32, ptr %iFlags, align 8
  %and = and i32 %19, 1
  %cmp7 = icmp eq i32 %and, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %20 = load ptr, ptr %pVm, align 8
  %21 = load ptr, ptr %pEntry, align 8
  %nValIdx9 = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 5
  %22 = load i32, ptr %nValIdx9, align 8
  %call10 = call i32 @PH7_VmUnsetMemObj(ptr noundef %20, i32 noundef %22, i32 noundef 0)
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  %23 = load ptr, ptr %pEntry, align 8
  %iType = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %iType, align 8
  %cmp12 = icmp eq i32 %24, 2
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end11
  %25 = load ptr, ptr %pEntry, align 8
  %xKey = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %25, i32 0, i32 2
  %call14 = call i32 @SyBlobRelease(ptr noundef %xKey)
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end11
  %26 = load ptr, ptr %pVm, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pEntry, align 8
  %call16 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %27)
  %28 = load ptr, ptr %pNext, align 8
  store ptr %28, ptr %pEntry, align 8
  %29 = load i32, ptr %n, align 4
  %inc = add i32 %29, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then4
  %30 = load ptr, ptr %pMap.addr, align 8
  %nEntry17 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %30, i32 0, i32 6
  %31 = load i32, ptr %nEntry17, align 4
  %cmp18 = icmp ugt i32 %31, 0
  br i1 %cmp18, label %if.then19, label %if.end22

if.then19:                                        ; preds = %for.end
  %32 = load ptr, ptr %pVm, align 8
  %sAllocator20 = getelementptr inbounds nuw %struct.ph7_vm, ptr %32, i32 0, i32 0
  %33 = load ptr, ptr %pMap.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %33, i32 0, i32 1
  %34 = load ptr, ptr %apBucket, align 8
  %call21 = call i32 @SyMemBackendFree(ptr noundef %sAllocator20, ptr noundef %34)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %for.end
  %35 = load i32, ptr %FreeDS.addr, align 4
  %tobool = icmp ne i32 %35, 0
  br i1 %tobool, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.end22
  %36 = load ptr, ptr %pVm, align 8
  %sAllocator24 = getelementptr inbounds nuw %struct.ph7_vm, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %pMap.addr, align 8
  %call25 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator24, ptr noundef %37)
  br label %if.end29

if.else:                                          ; preds = %if.end22
  %38 = load ptr, ptr %pMap.addr, align 8
  %apBucket26 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %38, i32 0, i32 1
  store ptr null, ptr %apBucket26, align 8
  %39 = load ptr, ptr %pMap.addr, align 8
  %iNextIdx = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %39, i32 0, i32 9
  store i64 0, ptr %iNextIdx, align 8
  %40 = load ptr, ptr %pMap.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %40, i32 0, i32 5
  store i32 0, ptr %nSize, align 8
  %41 = load ptr, ptr %pMap.addr, align 8
  %nEntry27 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %41, i32 0, i32 6
  store i32 0, ptr %nEntry27, align 4
  %42 = load ptr, ptr %pMap.addr, align 8
  %pCur = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %42, i32 0, i32 4
  store ptr null, ptr %pCur, align 8
  %43 = load ptr, ptr %pMap.addr, align 8
  %pLast = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %43, i32 0, i32 3
  store ptr null, ptr %pLast, align 8
  %44 = load ptr, ptr %pMap.addr, align 8
  %pFirst28 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %44, i32 0, i32 2
  store ptr null, ptr %pFirst28, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then23
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end29, %if.then
  %45 = load i32, ptr %retval, align 4
  ret i32 %45
}

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmThrowError(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyBlobRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjRemove(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmUnsetMemObj(ptr noundef, i32 noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
