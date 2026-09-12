; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendPoolFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @SyHashRelease(ptr noundef %pHash) #0 {
entry:
  %pHash.addr = alloca ptr, align 8
  %pEntry = alloca ptr, align 8
  %pNext = alloca ptr, align 8
  store ptr %pHash, ptr %pHash.addr, align 8
  %0 = load ptr, ptr %pHash.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyHash, ptr %0, i32 0, i32 3
  %1 = load ptr, ptr %pList, align 8
  store ptr %1, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %2 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %2, i32 0, i32 5
  %3 = load i32, ptr %nEntry, align 8
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  %4 = load ptr, ptr %pEntry, align 8
  %pNext1 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %4, i32 0, i32 5
  %5 = load ptr, ptr %pNext1, align 8
  store ptr %5, ptr %pNext, align 8
  %6 = load ptr, ptr %pHash.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyHash, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %pAllocator, align 8
  %8 = load ptr, ptr %pEntry, align 8
  %call = call i32 @SyMemBackendPoolFree(ptr noundef %7, ptr noundef %8)
  %9 = load ptr, ptr %pNext, align 8
  store ptr %9, ptr %pEntry, align 8
  %10 = load ptr, ptr %pHash.addr, align 8
  %nEntry2 = getelementptr inbounds nuw %struct.SyHash, ptr %10, i32 0, i32 5
  %11 = load i32, ptr %nEntry2, align 8
  %dec = add i32 %11, -1
  store i32 %dec, ptr %nEntry2, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %12 = load ptr, ptr %pHash.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.SyHash, ptr %12, i32 0, i32 6
  %13 = load ptr, ptr %apBucket, align 8
  %tobool = icmp ne ptr %13, null
  br i1 %tobool, label %if.then3, label %if.end7

if.then3:                                         ; preds = %for.end
  %14 = load ptr, ptr %pHash.addr, align 8
  %pAllocator4 = getelementptr inbounds nuw %struct.SyHash, ptr %14, i32 0, i32 0
  %15 = load ptr, ptr %pAllocator4, align 8
  %16 = load ptr, ptr %pHash.addr, align 8
  %apBucket5 = getelementptr inbounds nuw %struct.SyHash, ptr %16, i32 0, i32 6
  %17 = load ptr, ptr %apBucket5, align 8
  %call6 = call i32 @SyMemBackendFree(ptr noundef %15, ptr noundef %17)
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %for.end
  %18 = load ptr, ptr %pHash.addr, align 8
  %apBucket8 = getelementptr inbounds nuw %struct.SyHash, ptr %18, i32 0, i32 6
  store ptr null, ptr %apBucket8, align 8
  %19 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize = getelementptr inbounds nuw %struct.SyHash, ptr %19, i32 0, i32 7
  store i32 0, ptr %nBucketSize, align 8
  %20 = load ptr, ptr %pHash.addr, align 8
  %pAllocator9 = getelementptr inbounds nuw %struct.SyHash, ptr %20, i32 0, i32 0
  store ptr null, ptr %pAllocator9, align 8
  ret i32 0
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
