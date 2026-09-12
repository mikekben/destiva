; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ph7_value = type { double, %union.anon, i32, ptr, %struct.SyBlob, i32 }
%union.anon = type { i64 }
%struct.SyBlob = type { ptr, ptr, i32, i32, i32 }
%struct.ph7_hashmap = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i64, i32 }
%struct.ph7_hashmap_node = type { ptr, i32, %union.anon.0, i32, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.0 = type { %struct.SyBlob }

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjInit(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_MemObjRelease(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @HashmapExtractNodeValue(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @PH7_VmCallUserFunctionAp(ptr noundef, ptr noundef, ptr noundef, ...) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashmapWalkRecursive(ptr noundef %pMap, ptr noundef %pCallback, ptr noundef %pUserData, i32 noundef %iNest) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %pCallback.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %iNest.addr = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %pValue = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %pCallback, ptr %pCallback.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store i32 %iNest, ptr %iNest.addr, align 4
  %0 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInit(ptr noundef %1, ptr noundef %sKey)
  %nIdx = getelementptr inbounds nuw %struct.ph7_value, ptr %sKey, i32 0, i32 5
  store i32 -1, ptr %nIdx, align 8
  %2 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 2
  %3 = load ptr, ptr %pFirst, align 8
  store ptr %3, ptr %pEntry, align 8
  store i32 0, ptr %n, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %n, align 4
  %5 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %5, i32 0, i32 6
  %6 = load i32, ptr %nEntry, align 4
  %cmp = icmp ult i32 %4, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %pEntry, align 8
  %call1 = call ptr @HashmapExtractNodeValue(ptr noundef %7)
  store ptr %call1, ptr %pValue, align 8
  %8 = load ptr, ptr %pValue, align 8
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end14

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %pValue, align 8
  %iFlags = getelementptr inbounds nuw %struct.ph7_value, ptr %9, i32 0, i32 2
  %10 = load i32, ptr %iFlags, align 8
  %and = and i32 %10, 64
  %tobool2 = icmp ne i32 %and, 0
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.then
  %11 = load i32, ptr %iNest.addr, align 4
  %cmp4 = icmp slt i32 %11, 32
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then3
  %12 = load i32, ptr %iNest.addr, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %iNest.addr, align 4
  %13 = load ptr, ptr %pValue, align 8
  %x = getelementptr inbounds nuw %struct.ph7_value, ptr %13, i32 0, i32 1
  %14 = load ptr, ptr %x, align 8
  %15 = load ptr, ptr %pCallback.addr, align 8
  %16 = load ptr, ptr %pUserData.addr, align 8
  %17 = load i32, ptr %iNest.addr, align 4
  %call6 = call i32 @HashmapWalkRecursive(ptr noundef %14, ptr noundef %15, ptr noundef %16, i32 noundef %17)
  %18 = load i32, ptr %iNest.addr, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, ptr %iNest.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  br label %if.end13

if.else:                                          ; preds = %if.then
  %19 = load ptr, ptr %pEntry, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %19, ptr noundef %sKey)
  %20 = load ptr, ptr %pMap.addr, align 8
  %pVm7 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %20, i32 0, i32 0
  %21 = load ptr, ptr %pVm7, align 8
  %22 = load ptr, ptr %pCallback.addr, align 8
  %23 = load ptr, ptr %pValue, align 8
  %24 = load ptr, ptr %pUserData.addr, align 8
  %call8 = call i32 (ptr, ptr, ptr, ...) @PH7_VmCallUserFunctionAp(ptr noundef %21, ptr noundef %22, ptr noundef null, ptr noundef %23, ptr noundef %sKey, ptr noundef %24, i32 noundef 0)
  store i32 %call8, ptr %rc, align 4
  %call9 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %25 = load i32, ptr %rc, align 4
  %cmp10 = icmp ne i32 %25, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.else
  %26 = load i32, ptr %rc, align 4
  store i32 %26, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %if.end
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %for.body
  %27 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %27, i32 0, i32 7
  %28 = load ptr, ptr %pPrev, align 8
  store ptr %28, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end14
  %29 = load i32, ptr %n, align 4
  %inc15 = add i32 %29, 1
  store i32 %inc15, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then11
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
