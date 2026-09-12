; ModuleID = 'bench/ph7.ll'
source_filename = "ph7/ph7.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SyHash = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32 }
%struct.SyHashEntry_Pr = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr }

; Function Attrs: nounwind uwtable
declare hidden void @SyZero(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
declare hidden i32 @SyMemBackendFree(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
declare hidden ptr @SyMemBackendAlloc(ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define hidden i32 @HashGrowTable(ptr noundef %pHash) #0 {
entry:
  %retval = alloca i32, align 4
  %pHash.addr = alloca ptr, align 8
  %nNewSize = alloca i32, align 4
  %pEntry = alloca ptr, align 8
  %apNew = alloca ptr, align 8
  %n = alloca i32, align 4
  %iBucket = alloca i32, align 4
  store ptr %pHash, ptr %pHash.addr, align 8
  %0 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize = getelementptr inbounds nuw %struct.SyHash, ptr %0, i32 0, i32 7
  %1 = load i32, ptr %nBucketSize, align 8
  %mul = mul i32 %1, 2
  store i32 %mul, ptr %nNewSize, align 4
  %2 = load ptr, ptr %pHash.addr, align 8
  %pAllocator = getelementptr inbounds nuw %struct.SyHash, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %pAllocator, align 8
  %4 = load i32, ptr %nNewSize, align 4
  %conv = zext i32 %4 to i64
  %mul1 = mul i64 %conv, 8
  %conv2 = trunc i64 %mul1 to i32
  %call = call ptr @SyMemBackendAlloc(ptr noundef %3, i32 noundef %conv2)
  store ptr %call, ptr %apNew, align 8
  %5 = load ptr, ptr %apNew, align 8
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %apNew, align 8
  %7 = load i32, ptr %nNewSize, align 4
  %conv4 = zext i32 %7 to i64
  %mul5 = mul i64 %conv4, 8
  %conv6 = trunc i64 %mul5 to i32
  call void @SyZero(ptr noundef %6, i32 noundef %conv6)
  store i32 0, ptr %n, align 4
  %8 = load ptr, ptr %pHash.addr, align 8
  %pList = getelementptr inbounds nuw %struct.SyHash, ptr %8, i32 0, i32 3
  %9 = load ptr, ptr %pList, align 8
  store ptr %9, ptr %pEntry, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, ptr %n, align 4
  %11 = load ptr, ptr %pHash.addr, align 8
  %nEntry = getelementptr inbounds nuw %struct.SyHash, ptr %11, i32 0, i32 5
  %12 = load i32, ptr %nEntry, align 8
  %cmp7 = icmp ult i32 %10, %12
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %pEntry, align 8
  %pPrevCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %13, i32 0, i32 8
  store ptr null, ptr %pPrevCollide, align 8
  %14 = load ptr, ptr %pEntry, align 8
  %pNextCollide = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %14, i32 0, i32 7
  store ptr null, ptr %pNextCollide, align 8
  %15 = load ptr, ptr %pEntry, align 8
  %nHash = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %15, i32 0, i32 3
  %16 = load i32, ptr %nHash, align 8
  %17 = load i32, ptr %nNewSize, align 4
  %sub = sub i32 %17, 1
  %and = and i32 %16, %sub
  store i32 %and, ptr %iBucket, align 4
  %18 = load ptr, ptr %apNew, align 8
  %19 = load i32, ptr %iBucket, align 4
  %idxprom = zext i32 %19 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %18, i64 %idxprom
  %20 = load ptr, ptr %arrayidx, align 8
  %21 = load ptr, ptr %pEntry, align 8
  %pNextCollide9 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %21, i32 0, i32 7
  store ptr %20, ptr %pNextCollide9, align 8
  %22 = load ptr, ptr %apNew, align 8
  %23 = load i32, ptr %iBucket, align 4
  %idxprom10 = zext i32 %23 to i64
  %arrayidx11 = getelementptr inbounds nuw ptr, ptr %22, i64 %idxprom10
  %24 = load ptr, ptr %arrayidx11, align 8
  %cmp12 = icmp ne ptr %24, null
  br i1 %cmp12, label %if.then14, label %if.end18

if.then14:                                        ; preds = %for.body
  %25 = load ptr, ptr %pEntry, align 8
  %26 = load ptr, ptr %apNew, align 8
  %27 = load i32, ptr %iBucket, align 4
  %idxprom15 = zext i32 %27 to i64
  %arrayidx16 = getelementptr inbounds nuw ptr, ptr %26, i64 %idxprom15
  %28 = load ptr, ptr %arrayidx16, align 8
  %pPrevCollide17 = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %28, i32 0, i32 8
  store ptr %25, ptr %pPrevCollide17, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %for.body
  %29 = load ptr, ptr %pEntry, align 8
  %30 = load ptr, ptr %apNew, align 8
  %31 = load i32, ptr %iBucket, align 4
  %idxprom19 = zext i32 %31 to i64
  %arrayidx20 = getelementptr inbounds nuw ptr, ptr %30, i64 %idxprom19
  store ptr %29, ptr %arrayidx20, align 8
  %32 = load ptr, ptr %pEntry, align 8
  %pNext = getelementptr inbounds nuw %struct.SyHashEntry_Pr, ptr %32, i32 0, i32 5
  %33 = load ptr, ptr %pNext, align 8
  store ptr %33, ptr %pEntry, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %34 = load i32, ptr %n, align 4
  %inc = add i32 %34, 1
  store i32 %inc, ptr %n, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %35 = load ptr, ptr %pHash.addr, align 8
  %pAllocator21 = getelementptr inbounds nuw %struct.SyHash, ptr %35, i32 0, i32 0
  %36 = load ptr, ptr %pAllocator21, align 8
  %37 = load ptr, ptr %pHash.addr, align 8
  %apBucket = getelementptr inbounds nuw %struct.SyHash, ptr %37, i32 0, i32 6
  %38 = load ptr, ptr %apBucket, align 8
  %call22 = call i32 @SyMemBackendFree(ptr noundef %36, ptr noundef %38)
  %39 = load ptr, ptr %apNew, align 8
  %40 = load ptr, ptr %pHash.addr, align 8
  %apBucket23 = getelementptr inbounds nuw %struct.SyHash, ptr %40, i32 0, i32 6
  store ptr %39, ptr %apBucket23, align 8
  %41 = load i32, ptr %nNewSize, align 4
  %42 = load ptr, ptr %pHash.addr, align 8
  %nBucketSize24 = getelementptr inbounds nuw %struct.SyHash, ptr %42, i32 0, i32 7
  store i32 %41, ptr %nBucketSize24, align 8
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %43 = load i32, ptr %retval, align 4
  ret i32 %43
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
