; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }
%struct.ph7_vm = type { %struct.SyMemBackend, ptr, %struct.SySet, ptr, ptr, %struct.SyPRNGCtx, %struct.SySet, %struct.SySet, ptr, %struct.SySet, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyHash, %struct.SyBlob, %struct.SyBlob, %struct.SyBlob, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, %struct.SySet, ptr, %struct.ph7_value, [2 x %struct.ph7_value], [2 x %struct.ph7_value], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.ph7_output_consumer, i32, %struct.ph7_value, ptr, ptr, i32, i32, %struct.SySet, ptr, i32, i32, %struct.ph7_gen_state, ptr, ptr, i32 }
%struct.SyMemBackend = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [15 x ptr] }
%struct.SyPRNGCtx = type { i8, i8, [256 x i8], i16 }
%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.ph7_output_consumer = type { ptr, ptr, ptr, ptr }
%struct.SySet = type { ptr, ptr, i32, i32, i32, i32, ptr }
%struct.ph7_gen_state = type { ptr, %struct.SyHash, %struct.SyHash, %struct.SyHash, ptr, %struct.GenBlock, ptr, ptr, %struct.SySet, %struct.SySet, %struct.SyBlob, %struct.SyBlob, ptr, ptr, i32, ptr, ptr, ptr }
%struct.GenBlock = type { ptr, ptr, i32, i32, %struct.SySet, ptr, i8, %struct.SySet }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjStore(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmRefObjInstall(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @PH7_ReserveMemObj(ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapInsertBlobKey(ptr noundef %pMap, ptr noundef %pKey, i32 noundef %nKeyLen, ptr noundef %pValue, i32 noundef %nRefIdx, i32 noundef %isForeign) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nKeyLen.addr = alloca i32, align 4
  %pValue.addr = alloca ptr, align 8
  %nRefIdx.addr = alloca i32, align 4
  %isForeign.addr = alloca i32, align 4
  %pNode = alloca ptr, align 8
  %nHash = alloca i32, align 4
  %nIdx = alloca i32, align 4
  %rc = alloca i32, align 4
  %pObj = alloca ptr, align 8
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nKeyLen, ptr %nKeyLen.addr, align 4
  store ptr %pValue, ptr %pValue.addr, align 8
  store i32 %nRefIdx, ptr %nRefIdx.addr, align 4
  store i32 %isForeign, ptr %isForeign.addr, align 4
  %0 = load i32, ptr %isForeign.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %1, i32 0, i32 0
  %2 = load ptr, ptr %pVm, align 8
  %call = call ptr @PH7_ReserveMemObj(ptr noundef %2)
  store ptr %call, ptr %pObj, align 8
  %3 = load ptr, ptr %pObj, align 8
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load ptr, ptr %pValue.addr, align 8
  %tobool2 = icmp ne ptr %4, null
  br i1 %tobool2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %pValue.addr, align 8
  %6 = load ptr, ptr %pObj, align 8
  %call4 = call i32 @PH7_MemObjStore(ptr noundef %5, ptr noundef %6)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  %7 = load ptr, ptr %pObj, align 8
  %nIdx6 = getelementptr inbounds nuw %struct.ph7_value, ptr %7, i32 0, i32 5
  %8 = load i32, ptr %nIdx6, align 8
  store i32 %8, ptr %nIdx, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  %9 = load i32, ptr %nRefIdx.addr, align 4
  store i32 %9, ptr %nIdx, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.end5
  %10 = load ptr, ptr %pMap.addr, align 8
  %xBlobHash = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %10, i32 0, i32 8
  %11 = load ptr, ptr %xBlobHash, align 8
  %12 = load ptr, ptr %pKey.addr, align 8
  %13 = load i32, ptr %nKeyLen.addr, align 4
  %call8 = call i32 %11(ptr noundef %12, i32 noundef %13)
  store i32 %call8, ptr %nHash, align 4
  %14 = load ptr, ptr %pMap.addr, align 8
  %15 = load ptr, ptr %pKey.addr, align 8
  %16 = load i32, ptr %nKeyLen.addr, align 4
  %17 = load i32, ptr %nHash, align 4
  %18 = load i32, ptr %nIdx, align 4
  %call9 = call ptr @HashmapNewBlobNode(ptr noundef %14, ptr noundef %15, i32 noundef %16, i32 noundef %17, i32 noundef %18)
  store ptr %call9, ptr %pNode, align 8
  %19 = load ptr, ptr %pNode, align 8
  %cmp10 = icmp eq ptr %19, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end7
  store i32 -1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end7
  %20 = load i32, ptr %isForeign.addr, align 4
  %tobool13 = icmp ne i32 %20, 0
  br i1 %tobool13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %if.end12
  %21 = load ptr, ptr %pNode, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %21, i32 0, i32 3
  %22 = load i32, ptr %iFlags, align 8
  %or = or i32 %22, 1
  store i32 %or, ptr %iFlags, align 8
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end12
  %23 = load ptr, ptr %pMap.addr, align 8
  %call16 = call i32 @HashmapGrowBucket(ptr noundef %23)
  store i32 %call16, ptr %rc, align 4
  %24 = load i32, ptr %rc, align 4
  %cmp17 = icmp ne i32 %24, 0
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end15
  %25 = load ptr, ptr %pMap.addr, align 8
  %pVm19 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %25, i32 0, i32 0
  %26 = load ptr, ptr %pVm19, align 8
  %sAllocator = getelementptr inbounds nuw %struct.ph7_vm, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %pNode, align 8
  %call20 = call i32 @SyMemBackendPoolFree(ptr noundef %sAllocator, ptr noundef %27)
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

if.end21:                                         ; preds = %if.end15
  %29 = load ptr, ptr %pMap.addr, align 8
  %30 = load ptr, ptr %pNode, align 8
  %31 = load i32, ptr %nHash, align 4
  %32 = load ptr, ptr %pMap.addr, align 8
  %nSize = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %32, i32 0, i32 5
  %33 = load i32, ptr %nSize, align 8
  %sub = sub i32 %33, 1
  %and = and i32 %31, %sub
  call void @HashmapNodeLink(ptr noundef %29, ptr noundef %30, i32 noundef %and)
  %34 = load ptr, ptr %pMap.addr, align 8
  %pVm22 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %34, i32 0, i32 0
  %35 = load ptr, ptr %pVm22, align 8
  %36 = load i32, ptr %nIdx, align 4
  %37 = load ptr, ptr %pNode, align 8
  %call23 = call i32 @PH7_VmRefObjInstall(ptr noundef %35, i32 noundef %36, ptr noundef null, ptr noundef %37, i32 noundef 0)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end21, %if.then18, %if.then11, %if.then1
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapNewBlobNode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashmapGrowBucket(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @HashmapNodeLink(ptr noundef, ptr noundef, i32 noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
