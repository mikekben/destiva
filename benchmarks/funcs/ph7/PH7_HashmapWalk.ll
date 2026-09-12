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
define hidden i32 @PH7_HashmapWalk(ptr noundef %pMap, ptr noundef %xWalk, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pMap.addr = alloca ptr, align 8
  %xWalk.addr = alloca ptr, align 8
  %pUserData.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %sKey = alloca %struct.ph7_value, align 8
  %sValue = alloca %struct.ph7_value, align 8
  %rc = alloca i32, align 4
  %n = alloca i32, align 4
  store ptr %pMap, ptr %pMap.addr, align 8
  store ptr %xWalk, ptr %xWalk.addr, align 8
  store ptr %pUserData, ptr %pUserData.addr, align 8
  store i32 0, ptr %rc, align 4
  %0 = load ptr, ptr %pMap.addr, align 8
  %pVm = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %pVm, align 8
  %call = call i32 @PH7_MemObjInit(ptr noundef %1, ptr noundef %sKey)
  %2 = load ptr, ptr %pMap.addr, align 8
  %pVm1 = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pVm1, align 8
  %call2 = call i32 @PH7_MemObjInit(ptr noundef %3, ptr noundef %sValue)
  %4 = load ptr, ptr %pMap.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %4, i32 0, i32 6
  %5 = load i32, ptr %nEntry, align 4
  store i32 %5, ptr %n, align 4
  %6 = load ptr, ptr %pMap.addr, align 8
  %pFirst = getelementptr inbounds nuw %struct.ph7_hashmap, ptr %6, i32 0, i32 2
  %7 = load ptr, ptr %pFirst, align 8
  store ptr %7, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end8, %entry
  %8 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %8, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %9 = load ptr, ptr %pEntry, align 8
  call void @PH7_HashmapExtractNodeKey(ptr noundef %9, ptr noundef %sKey)
  %10 = load ptr, ptr %pEntry, align 8
  call void @PH7_HashmapExtractNodeValue(ptr noundef %10, ptr noundef %sValue, i32 noundef 0)
  %11 = load ptr, ptr %xWalk.addr, align 8
  %12 = load ptr, ptr %pUserData.addr, align 8
  %call3 = call i32 %11(ptr noundef %sKey, ptr noundef %sValue, ptr noundef %12)
  store i32 %call3, ptr %rc, align 4
  %call4 = call i32 @PH7_MemObjRelease(ptr noundef %sKey)
  %call5 = call i32 @PH7_MemObjRelease(ptr noundef %sValue)
  %13 = load i32, ptr %rc, align 4
  %cmp6 = icmp ne i32 %13, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  store i32 -10, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end
  %14 = load ptr, ptr %pEntry, align 8
  %pPrev = getelementptr inbounds nuw %struct.ph7_hashmap_node, ptr %14, i32 0, i32 7
  %15 = load ptr, ptr %pPrev, align 8
  store ptr %15, ptr %pEntry, align 8
  %16 = load i32, ptr %n, align 4
  %dec = add i32 %16, -1
  store i32 %dec, ptr %n, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then7
  %17 = load i32, ptr %retval, align 4
  ret i32 %17
}

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeValue(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @PH7_HashmapExtractNodeKey(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
