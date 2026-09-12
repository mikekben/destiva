; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendPoolAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyHashInsert(ptr noundef %pHash, ptr noundef %pKey, i32 noundef %nKeyLen, ptr noundef %pUserData) #0 {
entry:
  %retval = alloca i32, align 4
  %pHash.addr = alloca ptr, align 8
  %pKey.addr = alloca ptr, align 8
  %nKeyLen.addr = alloca i32, align 4
  %pUserData.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %rc = alloca i32, align 4
  store ptr %pHash, ptr %pHash.addr, align 8
  store ptr %pKey, ptr %pKey.addr, align 8
  store i32 %nKeyLen, ptr %nKeyLen.addr, align 4
  store ptr %pUserData, ptr %pUserData.addr, align 8
  %0 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %0, i32 0, i32 5
  %1 = load i32, ptr %nEntry, align 8
  %2 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize = getelementptr inbounds nuw %struct.SyHash, ptr %2, i32 0, i32 7
  %3 = load i32, ptr %nBucketSize, align 8
  %mul = mul i32 %3, 3
  %cmp = icmp uge i32 %1, %mul
  br i1 %cmp, label %if.then, label %if.end3

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %pHash.addr, align 8
  %call = call i32 @HashGrowTable(ptr noundef %4)
  store i32 %call, ptr %rc, align 4
  %5 = load i32, ptr %rc, align 4
  %cmp1 = icmp ne i32 %5, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %6 = load i32, ptr %rc, align 4
  store i32 %6, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end3

if.end3:                                          ; preds = %if.end, %entry
  %7 = load ptr, ptr %pHash.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyHash, ptr %7, i32 0, i32 0
  %8 = load ptr, ptr %pAllocator, align 8
  %call4 = call ptr @SyMemBackendPoolAlloc(ptr noundef %8, i32 noundef 72)
  store ptr %call4, ptr %pEntry, align 8
  %9 = load ptr, ptr %pEntry, align 8
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  store i32 -1, ptr %retval, align 4
  br label %return

if.end7:                                          ; preds = %if.end3
  %10 = load ptr, ptr %pEntry, align 8
  call void @SyZero(ptr noundef %10, i32 noundef 72)
  %11 = load ptr, ptr %pHash.addr, align 8
  %12 = load ptr, ptr %pEntry, align 8
  %pHash8 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %12, i32 0, i32 4
  store ptr %11, ptr %pHash8, align 8
  %13 = load ptr, ptr %pKey.addr, align 8
  %14 = load ptr, ptr %pEntry, align 8
  %pKey9 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %14, i32 0, i32 0
  store ptr %13, ptr %pKey9, align 8
  %15 = load i32, ptr %nKeyLen.addr, align 4
  %16 = load ptr, ptr %pEntry, align 8
  %nKeyLen10 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %16, i32 0, i32 1
  store i32 %15, ptr %nKeyLen10, align 8
  %17 = load ptr, ptr %pUserData.addr, align 8
  %18 = load ptr, ptr %pEntry, align 8
  %pUserData11 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %18, i32 0, i32 2
  store ptr %17, ptr %pUserData11, align 8
  %19 = load ptr, ptr %pHash.addr, align 8
  %xHash = getelementptr inbounds nuw %struct.SyHash, ptr %19, i32 0, i32 1
  %20 = load ptr, ptr %xHash, align 8
  %21 = load ptr, ptr %pEntry, align 8
  %pKey12 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %21, i32 0, i32 0
  %22 = load ptr, ptr %pKey12, align 8
  %23 = load ptr, ptr %pEntry, align 8
  %nKeyLen13 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %nKeyLen13, align 8
  %call14 = call i32 %20(ptr noundef %22, i32 noundef %24)
  %25 = load ptr, ptr %pEntry, align 8
  %nHash = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %25, i32 0, i32 3
  store i32 %call14, ptr %nHash, align 8
  %26 = load ptr, ptr %pHash.addr, align 8
  %27 = load ptr, ptr %pEntry, align 8
  %call15 = call i32 @HashInsert(ptr noundef %26, ptr noundef %27)
  store i32 %call15, ptr %rc, align 4
  %28 = load i32, ptr %rc, align 4
  store i32 %28, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end7, %if.then6, %if.then2
  %29 = load i32, ptr %retval, align 4
  ret i32 %29
}

; Function Attrs: nounwind uwtable
declare hidden i32 @HashGrowTable(ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @HashInsert(ptr noundef, ptr noundef) #0

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 23.0.0git (https://github.com/llvm/llvm-project 027447c61724385ae82f0a8dea34b45da2fd4c39)"}
